# My Post App

## Flutter Post application with Cubit and Dio for API calling

### What this app does
----
 
- Fetch post and display on UI

|             #1 No Network             |             #2 With Network           |
|:-------------------------------------:|:-------------------------------------:|
| <img src="https://github.com/NrupParikh/FlutterMyPosts/assets/108717119/57cdb30d-e395-455c-b21b-a5378bb0c903" width="60%" height="80%" /> |<img src="https://github.com/NrupParikh/FlutterMyPosts/assets/108717119/416c5e83-b6c4-4efd-8170-d88f169d70b3" width="60%" height="80%" /> |


### Dependencies
----

- flutter_block
  - Widgets that make it easy to integrate blocs and cubits into Flutter
- dio
  - A powerful HTTP client for Dart/Flutter, which supports global configuration, interceptors, FormData, request cancellation, file uploading/downloading, timeout, and custom adapters etc.
- pretty_dio_logger
  - Pretty Dio logger is a Dio interceptor that logs network calls in a pretty, easy to read format.

### Project Structure
----
````
- Data
  - models
    - post_model.dart
  - repository
    - api
      - api.dart
    - post_repository.dart
- Logic
  - cubits
    - post_cubits
      - post_cubits.dart
      - post_state.dart
- Presentation
  - home_screen.dart
- main.dart

````

### References
----

#### **Getting data for post**
- https://jsonplaceholder.typicode.com/posts

#### **Block Pattern**
- https://pub.dev/packages/flutter_bloc

#### **API Calling using dio**
- https://pub.dev/packages/dio

#### **JSON to Dart POJO **
- https://javiercbk.github.io/json_to_dart/
