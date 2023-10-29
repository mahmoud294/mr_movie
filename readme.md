# 
# Flutter MVVM + BLoC + Retrofit + GetIt Example

This Flutter application is an example of how to implement the MVVM (Model-View-ViewModel) architecture with BLoC (Business Logic Component) for state management, Retrofit for API communication, and GetIt for dependency injection. In this example, we fetch stories from the New York Times API.




## Architecture Overview

-   **MVVM (Model-View-ViewModel):** This architecture separates the application into three main components.
    
    -   **Model:** Represents the data and business logic. In this example, it includes the data classes and repository.
    -   **View:** Represents the UI components. The UI is divided into widgets, and this example showcases a story list widget.
    -   **ViewModel:** Acts as a bridge between the Model and the View. It contains the presentation logic and interacts with the BLoC.
-   **BLoC (Business Logic Component):** BLoC is used for managing the application's state. It contains the logic to fetch and handle data from the API. The BLoC communicates with the ViewModel.
    
-   **Retrofit:** Retrofit is used to make API requests to the New York Times API. It provides a convenient way to define API endpoints and data models.
    
-   **GetIt:** GetIt is used for dependency injection. It is used to provide instances of the ViewModel and BLoC to the UI components.
    

## Folder Structure

The project is structured as follows:

-   `lib/`
    -   `data/`: Contains the data layer, including data models and remote.
    -   `di/`: Contains the dependency injection file.
    -   `domain/`: Contains the including BLoCs
    -   `ui/`: Contains screens and widgets
    -   `main.dart`: The entry point of the application. 

## Dependencies

-   [flutter](https://pub.dev/packages/flutter)
-   [retrofit](https://pub.dev/packages/retrofit)
-   [get_it](https://pub.dev/packages/get_it)
-   [bloc](https://pub.dev/packages/flutter_bloc)
-   [go_router](https://pub.dev/packages/go_router)
