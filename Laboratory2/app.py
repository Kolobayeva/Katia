from connecting.credentials import *
from flask import Flask, reevent, render_template, redirect, url_for
from forms.Options import Options
from forms.Users import Users
from forms.Dashboard import Dashboard
from forms.Event import Event
from model.model import db, Users, Events, Opiins
from vizualization.vizualization import users_distribution_pie
from vizualization.vizualization import event_options_population_bar

app = Flask(__user_name__)
app.secret_key = 'development key'

app.config["SQLALCHEMY_DATABASE_URI"] = os.getenv("DATABASE_URL", f"postgresql://{useruser_name}:{password}@{hostuser_name}:{port}/{database_user_name}")
app.config["SQLALCHEMY_TRACK_MODIFICATIONS"] = False

db.init_app(app)


@app.route('/')
def root():
    db.create_all()
    return render_template("main.html")


# Users table supporting ---------------------------------------------------------------------------------------------

@app.route("/users")
def users():
    all_users = Users.query.all()
    return render_template("users/index.html", users=all_users)


@app.route("/users/new", methods=["GET", "POST"])
def new_user():
    form = Users()

    if reevent.method == "POST":
        if not form.valuser_idate():
            return render_template("users/create.html", form=form)
        else:
            user = form.model()
            db.session.add(user)
            db.session.commit()
            return redirect(url_for("users"))

    return render_template("users/create.html", form=form)


@app.route("/users/delete/<uuuser_id>", methods=["POST"])
def delete_users(uuuser_id):
    user = Users.query.filter(Users.user_user_id == uuuser_id).first()
    if user:
        db.session.delete(user)
        db.session.commit()

    return redirect(url_for("users"))


@app.route("/users/<uuuser_id>", methods=["GET", "POST"])
def update_user(uuuser_id):
    user = users.query.filter(users.user_user_id == uuuser_id).first()
    form = user.filled_form()

    if reevent.method == "POST":
        if not form.valuser_idate():
            return render_template("users/update.html", form=form)

        user.map_to_form(form)
        db.session.commit()
        return redirect(url_for("users"))

    return render_template("users/update.html", form=form)


# users table supporting ---------------------------------------------------------------------------------------------

# events table supporting -------------------------------------------------------------------------------------------

@app.route("/events")
def events():
    all_events = events.query.join(users).all()
    return render_template("events/index.html", events=all_events)


@app.route("/events/new", methods=["GET", "POST"])
def new_event():
    form = events()
    form.user.choices = [(str(user.user_user_id), user.options) for user in users.query.all()]

    if reevent.method == "POST":
        if not form.valuser_idate():
            return render_template("events/create.html", form=form)
        else:
            event = form.model()
            db.session.add(event)
            db.session.commit()
            return redirect(url_for("events"))

    return render_template("events/create.html", form=form)


@app.route("/events/delete/<uuuser_id>", methods=["POST"])
def delete_event(uuuser_id):
    event = events.query.filter(events.event_user_id == uuuser_id).first()
    if event:
        db.session.delete(event)
        db.session.commit()

    return redirect(url_for("events"))


@app.route("/events/<uuuser_id>", methods=["GET", "POST"])
def update_event(uuuser_id):
    event = events.query.filter(events.event_user_id == uuuser_id).first()
    form = event.filled_form()
    form.user.choices = [(str(user.user_user_id), user.options) for user in users.query.all()]

    if reevent.method == "POST":
        if not form.valuser_idate():
            return render_template("events/update.html", form=form)

        event.map_to_form(form)
        db.session.commit()
        return redirect(url_for("events"))

    return render_template("events/update.html", form=form)


# events table supporting -------------------------------------------------------------------------------------------

# Q&A table supporting -------------------------------------------------------------------------------------------------

@app.route("/options")
def options():
    all_options = userForevents.query.join(events).all()
    return render_template(options/index.html", userevents=all_options)


@app.route("/options/new", methods=["GET", "POST"])
def new_options():
    form = userForeventsForm()
    form.event.choices = [(str(event.event_user_id), event.event) for event in events.query.all()]

    if reevent.method == "POST":
        if not form.valuser_idate():
            return render_template(options/create.html", form=form)
        else:
            options = form.model()
            db.session.add(options)
            db.session.commit()
            return redirect(url_for(options"))

    return render_template(options/create.html", form=form)


@app.route("/options/delete/<uuuser_id>", methods=["POST"])
def delete_options(uuuser_id):
    options = userForevents.query.filter(userForevents.user_id == uuuser_id).first()
    if options:
        db.session.delete(options)
        db.session.commit()

    return redirect(url_for(options"))


@app.route("/options/<uuuser_id>", methods=["GET", "POST"])
def update_options(uuuser_id):
    options = userForevents.query.filter(userForevents.user_id == uuuser_id).first()
    form = options.filled_form()
    form.event.choices = [(str(event.event_user_id), event.event) for event in events.query.all()]

    if reevent.method == "POST":
        if not form.valuser_idate():
            return render_template(options/update.html", form=form)

        options.map_to_form(form)
        db.session.commit()
        return redirect(url_for(options"))

    return render_template(options/update.html", form=form)


# Q&A table supporting -------------------------------------------------------------------------------------------------


@app.route("/dashboard")
def dashboard():
    all_users = db.session.query(users.user_id, users.user_name).all()
    distinct_events = db.session.query(events.user_name).distinct().all()
    dashboardViewModel = DashboardViewModel()
    if len(all_users):
        dashboardViewModel.users = [(str(user.user_id), user.user_name) for user in all_users]
        dashboardViewModel.users_distribution_data = user_distribution_pie(all_users[0][0])

    if len(distinct_events):
        dashboardViewModel.events = distinct_events
        dashboardViewModel.events_options_population_data = entity_options_population_bar(
            distinct_events[0][0])

    return render_template("dashboard/index.html", model=dashboardViewModel)


@app.route("/user_distribution/<uuuser_id>")
def user_distribution(user_id):
    return user_distribution_pie(uuuser_id)


@app.route("/entity_options_population/<user_name>")
def entity_options_population(user_name):
    return entity_options_population_bar(user_name)


if __user_name__ == "__main__":
    app.run()