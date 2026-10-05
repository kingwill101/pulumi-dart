import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. Immutable. Identifies the storage system of the entity data.
enum EntitySystem implements pulumi.PulumiEnum<String> {
  storageSystemUnspecified("STORAGE_SYSTEM_UNSPECIFIED"),
  cloudStorage("CLOUD_STORAGE"),
  bigquery("BIGQUERY");

  const EntitySystem(this.wireValue);
  @override
  final String wireValue;

  static EntitySystem fromValue(String value) {
    for (final item in EntitySystem.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EntitySystem value: $value');
  }
}
