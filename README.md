## **Simple Checklist Plugin for Redmine**

<img width="1694" height="304" alt="Redmine_Simple_Checklist_Capture" src="https://github.com/user-attachments/assets/e03bb880-07e0-4282-bf46-c78b26425518" />

A lightweight checklist plugin for Redmine 6.x. This plugin allows you to add, complete, and delete checklist items directly from the issue page without reloading.

**Features**

- Add, toggle, and delete items instantly.
- Can be enabled or disabled per project.

#### **Requirements**

Redmine: 6.0.x or higher

Ruby: 3.x

#### **Installation**

1. Clone or Copy the Plugin

Download or copy the plugin files into your Redmine plugins directory:

/path/to/redmine/plugins

rename the folder:

redmine_simple_checklist

2. Install Dependencies

Run bundle from the Redmine root directory:

bundle install

3. Run Migrations

Create the necessary database tables:

bundle exec rake redmine:plugins:migrate NAME=redmine_simple_checklist RAILS_ENV=production

4. Restart Redmine
Restart your application server (Puma, Unicorn, Passenger, or Thin):

#### **Configuration**

Enable the Module: 
Go to your project's Settings > Modules. Look for Simple Checklist and check the box to enable it for that specific project.

Permissions: 
Go to Administration > Roles and permissions to configure which user roles can view, create, or delete checklist items.
