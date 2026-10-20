import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of the entry. For details, see [`EntryType`](#entrytype).
enum EntryType implements pulumi.PulumiEnum<String> {
  entryTypeUnspecified("ENTRY_TYPE_UNSPECIFIED"),
  table("TABLE"),
  model("MODEL"),
  dataStream("DATA_STREAM"),
  fileset("FILESET"),
  cluster("CLUSTER"),
  database("DATABASE"),
  dataSourceConnection("DATA_SOURCE_CONNECTION"),
  routine("ROUTINE"),
  lake("LAKE"),
  zone("ZONE"),
  service("SERVICE"),
  databaseSchema("DATABASE_SCHEMA"),
  dashboard("DASHBOARD"),
  explore("EXPLORE"),
  look("LOOK");

  const EntryType(this.wireValue);
  @override
  final String wireValue;

  static EntryType fromValue(String value) {
    for (final item in EntryType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EntryType value: $value');
  }
}
