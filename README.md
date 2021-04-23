# Microsite

Built using `Hugo v0.82.1`. On Mac `brew install hugo` to get started.

## 🏃‍♀️ Run locally
To build and serve the application, first pull the submodule to bring down the theme. Then server locally using Hugo
```bash
git submodule update --init --recursive
hugo server
```

## 🎨 Build and run on OpenShift
```bash
# build the app locally
hugo

# generate a new site password
htpasswd -c  $(pwd)/.htpasswd redhat

# build the image in OpenShift
oc login ...
oc new-project residency
oc new-build --binary --name=microsite --strategy=docker
oc start-build microsite --from-dir=. --follow

# deploy the app
helm install ms chart
```

## 🎨 Creating Content
Add posts in Markdown to the `content/post` directory. Example:
```markdown
+++
author = "Donal"
title = "Week Two Report"
date = "2021-04-22"
description = "All the action from the first Week of the Virtual Residency"
tags = ["reports", "residency"]
categories = [
"Development",
"golang",
]
image = "star-wars/death-star.jpeg"
+++

As you can see, my young apprentice, your friends have failed. Now witness the firepower of this fully armed and operational battle station. Fire at will, Commander. Fire!
<!--more-->

This can't be! Artoo

......
```