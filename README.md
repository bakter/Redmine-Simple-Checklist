## **Simple Checklist Plugin for Redmine**

<img src="https://github.com/user-attachments/assets/356eb359-324a-4b67-b260-7e94cc7fa619" alt="Screenshot_20260207_183403" width="467" height="192">
<br>

#### **<ins>Description</ins>**

A lightweight checklist plugin for Redmine 6.x. This plugin allows you to add, complete, and delete checklist items directly from the issue page without reloading.
<br>

#### **<ins>Features</ins>**

*   Add, toggle, and delete items instantly.
*   Can be enabled or disabled per project.
<br>

#### **<ins>Requirements</ins>**

Redmine: 6.0.x or higher
<br>
<br>

#### **<ins>Installation</ins>**

1.  **Clone or Copy the Plugin**

  Download or copy the plugin files into your Redmine plugins directory:

  `/path/to/redmine/plugins/redmine_simple_checklist`

2.  **Install Dependencies**

  Run bundle from the Redmine root directory:

  `bundle install`

3.  **Run Migrations**

  Create the necessary database tables:

  `bundle exec rake redmine:plugins:migrate NAME=redmine_simple_checklist RAILS_ENV=production`

4.  **Restart Redmine**
<br>

#### **<ins>Configuration</ins>**

**Enable the Module:**

  Go to your project's Settings > Modules. Look for Simple Checklist and check the box to enable it for that specific project.

**Permissions:**

  Go to Administration > Roles and permissions to configure which user roles can view, create, or delete checklist items.
<br>
<br>
<br>
<br>
