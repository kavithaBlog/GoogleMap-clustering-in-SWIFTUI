# Google Maps Clustering in SwiftUI


The purpose of this repository is to provide information about clustering Google Map markers.A single icon with numbers shows the many markers clustered together. When clicked, the number icon will increase the zoom ratio and split it as markers.The increase in markers in nearby areas can be avoided by utilizing this concept.

## Google Map SDK Setup

To add the googlemap into project need to add the following library into podfile

$ pod 'GoogleMaps'
$ pod 'Google-Maps-iOS-Utils'

after adding the library run the below code to complete the setup.

$ Pod install


## Google Map implementation

After Pod installtion we can import the googlemap into the project.To start implementing this feature we need Google API key.To obtain API key please refer this [Get an API key] documents. (https://developers.google.com/maps/documentation/ios-sdk/get-api-key).Once key has generated add this into appdelegate function as below

GMSServices.provideAPIKey("YourApiKey")

Finally we can run the code and see the clusters.The demo locations are added in the project will dispaly on the map.if u need change the location coordinates and run the app.
