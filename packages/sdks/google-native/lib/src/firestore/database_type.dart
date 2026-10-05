import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of the database. See https://cloud.google.com/datastore/docs/firestore-or-datastore for information about how to choose.
enum DatabaseType implements pulumi.PulumiEnum<String> {
  databaseTypeUnspecified("DATABASE_TYPE_UNSPECIFIED"),
  firestoreNative("FIRESTORE_NATIVE"),
  datastoreMode("DATASTORE_MODE");

  const DatabaseType(this.wireValue);
  @override
  final String wireValue;

  static DatabaseType fromValue(String value) {
    for (final item in DatabaseType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DatabaseType value: $value');
  }
}
