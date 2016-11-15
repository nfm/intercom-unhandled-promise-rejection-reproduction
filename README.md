## Reproduction for 'Unhandled promise rejection undefined' bug

1. Install required gems:

    bundle install

2. Run test case:

    bundle exec ruby bug.rb

It's possible this depends on internet speed, I'm not sure.

It looks like the error is raised when navigating to a new page. Maybe to do with window unload event, part-way through loading or initializing Intercom.
