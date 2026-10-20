import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of the entry. Only used for Entries with types in the EntryType enum.
enum EntryTypeDatacatalogV1beta1 implements pulumi.PulumiEnum<String> {
  entryTypeUnspecified("ENTRY_TYPE_UNSPECIFIED"),
  table("TABLE"),
  model("MODEL"),
  dataStream("DATA_STREAM"),
  fileset("FILESET");

  const EntryTypeDatacatalogV1beta1(this.wireValue);
  @override
  final String wireValue;

  static EntryTypeDatacatalogV1beta1 fromValue(String value) {
    for (final item in EntryTypeDatacatalogV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EntryTypeDatacatalogV1beta1 value: $value');
  }
}
