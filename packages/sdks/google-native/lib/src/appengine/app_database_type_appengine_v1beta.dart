/// The type of the Cloud Firestore or Cloud Datastore database associated with this application.
enum AppDatabaseTypeAppengineV1beta {
  databaseTypeUnspecified("DATABASE_TYPE_UNSPECIFIED"),
  cloudDatastore("CLOUD_DATASTORE"),
  cloudFirestore("CLOUD_FIRESTORE"),
  cloudDatastoreCompatibility("CLOUD_DATASTORE_COMPATIBILITY");

  const AppDatabaseTypeAppengineV1beta(this.wireValue);
  final String wireValue;

  static AppDatabaseTypeAppengineV1beta fromValue(String value) {
    for (final item in AppDatabaseTypeAppengineV1beta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AppDatabaseTypeAppengineV1beta value: $value');
  }
}

