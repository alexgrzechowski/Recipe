<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<document type="com.apple.InterfaceBuilder3.CocoaTouch.XIB" version="3.0" toolsVersion="13142" targetRuntime="iOS.CocoaTouch" propertyAccessControl="none" useAutolayout="YES" useTraitCollections="YES" useSafeAreas="YES" colorMatched="YES">
    <dependencies>
        <plugIn identifier="com.apple.InterfaceBuilder.IBCocoaTouchPlugin" version="12042"/>
    </dependencies>
    <objects>
        <placeholder placeholderIdentifier="IBFilesOwner" id="-1" userLabel="File's Owner"/>
        <placeholder placeholderIdentifier="IBFirstResponder" id="-2" customClass="UIResponder"/>
    </objects>
</document>




### Steps to Run the App
First, if running on Xcode select your device type at the top. Then click the play button to the left. The Recipe Finder app will load onto the simulator
screen. Here you can scroll through various recipes, or even search to find something you are looking for. Want morre details? Just click on the recipe cell
that is in the open page. This will navigate you to a new view where you can click a link to a youtube video that shows you step by step directions on how to
cook your selected dish.

### Focus Areas: What specific areas of the project did you prioritize? Why did you choose to focus on these areas?
I primarily focued on parsing the JSON data. I have made other applications before that fetch uploaded user content from a firebase server, but I was a
little hesitant on whether I would be able to fetch the JSON data or not. This was a new challenge so I studied some curriculum and attacked the project.
Another thing I focused on was loading AsyncImages and having default placeholders in case of malformed data. To load the recipe cells dynamically, I just
nested them inside of a LazyVStack.

### Time Spent: Approximately how long did you spend working on this project? How did you allocate your time?
I spent about 3 hours in this project. For the first half hour I built out the entire user interface, utilizing systemImages, rectangles for images, and fake
names for the recipe. Then for the next 2 hours I created the Recipe data model and viewmodels to successfully fetch the data. Then in the last 30-45
minutes, I dropped the recipe model into my views and successfully filled the feed with legitimate data.

### Trade-offs and Decisions: Did you make any significant trade-offs in your approach?
I think the biggest trade off was the image caching. Instead of doing this, I simply nested everything into a LazyVStack. I did think because LazyVstack
loads views dynamically, only loading the data that is on the screen. Another thing was that I focused a lot on functionality, that the UI is not the best
that I could do. There was not too much data to visually display, but the user interface could have been nicer.

### Weakest Part of the Project: What do you think is the weakest part of your project?
I think the weakest part of the entire project would have to be how the images are displayed. In the views, it led to a lot of clutter and if statements that
can get a little messy.
### Additional Information: Is there anything else we should know? Feel free to share any insights or constraints you encountered.
This was a fun project to work on! I found it fairly straightforward, however it was not really my forte. I like to deal much with user uploading/fetching
and building creative user interfaces. I find it easier to do consumer products rather than information based applications. Some of my work is live on the
app store, "FlipFlop: Campus Connect"!

