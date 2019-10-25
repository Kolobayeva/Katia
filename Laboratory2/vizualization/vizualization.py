from domain.models import db, Users, Events, Options
import plotly
import plotly.graph_objs as go
import json


def users_distribution_pie(uuid):
   users = db.session.query(
                             event.event_name.label("event_name"),
							event.event_date.label("event_date")
                              db.func.count(Options.place).label("UsersEvent")).join(
        users,events.users_users_idFk == users.users_id).join(
        options,options.events_event_nameFk == event.event_name).filter(users.users_id == uuid).group_by(
        users.users_id, event.event_name).subquery()

    data = db.session.query(users.c.event_date, db.func.sum(users.c.UsersEvent)
                            ).group_by(users.c.event_named, users.c.event_date).all()

    pie_plot = [
        go.Pie(
            labels=[value[0] for value in data],
            values=[value[1] for value in data]
        )
    ]

    return json.dumps(pie_plot, cls=plotly.utils.PlotlyJSONEncoder)


def event_options_population_bar(name):
    data = db.session.query(Options.season, db.func.count(Options.place)).join(
        Events, Events.event_name == Options.events_event_nameFk
    ).filter(Events.event_date == event_date).group_by(Options.season).all()

    bar_plot = [
        go.Bar(
            x=[value[0] for value in data],
            y=[value[1] for value in data]
        )
    ]

    return json.dumps(bar_plot, cls=plotly.utils.PlotlyJSONEncoder)
