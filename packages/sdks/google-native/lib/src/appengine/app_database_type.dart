/// The type of the Cloud Firestore or Cloud Datastore database associated with this application.
enum AppDatabaseType {
  databaseTypeUnspecified("DATABASE_TYPE_UNSPECIFIED"),
  cloudDatastore("CLOUD_DATASTORE"),
  cloudFirestore("CLOUD_FIRESTORE"),
  cloudDatastoreCompatibility("CLOUD_DATASTORE_COMPATIBILITY");

  const AppDatabaseType(this.wireValue);
  final String wireValue;

  static AppDatabaseType fromValue(String value) {
    for (final item in AppDatabaseType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AppDatabaseType value: $value');
  }
}
