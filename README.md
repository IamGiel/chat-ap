# Flash-Chat

## Podfile Configuration

```
post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['CLANG_WARN_DOCUMENTATION_COMMENTS'] = 'NO'
        end
    end
end
```

## Our Goal

One of the most fundamental component of modern iOS apps is the Table View. Table Views are used everywhere from the Mail app to the Messages app. It’s a crucial part of every iOS developer’s tool belt. In this tutorial we’ll be getting to grips with Table Views, creating custom cells, and making our own cloud-based backend database. It’s going to be epic, so buckle up.

## Whats Flash Chat?

Flash Chat is an internet based messaging app similar to WhatsApp, the popular messaging app that was bought by Facebook for \$22 billion. We will be using a service called Firebase as a backend data server to store and retrieve our messages from the cloud.

![Finished App](https://github.com/londonappbrewery/Images/blob/master/Flash%20Chat.gif)

## What skills is practised?

- How to integrate third party libraries in your app.
- How to store data in the cloud using Firebase.
- How to query the Firebase database.
- How to use Firebase for user authentication.
- How to work with a UITableView.
- How to use custom cells in a Table View.
- How to embed View Controllers in a Navigation Controller and understanding the navigation stack.
- How to create Segues for navigation.
- How to make custom .xib files to modify native design components.
- Using Grand Central Dispatch to queue asynchronous tasks.
