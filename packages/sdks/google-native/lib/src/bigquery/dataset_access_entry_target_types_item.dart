import 'package:pulumi/pulumi.dart' as pulumi;

enum DatasetAccessEntryTargetTypesItem implements pulumi.PulumiEnum<String> {
  targetTypeUnspecified("TARGET_TYPE_UNSPECIFIED"),
  views("VIEWS"),
  routines("ROUTINES");

  const DatasetAccessEntryTargetTypesItem(this.wireValue);
  @override
  final String wireValue;

  static DatasetAccessEntryTargetTypesItem fromValue(String value) {
    for (final item in DatasetAccessEntryTargetTypesItem.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DatasetAccessEntryTargetTypesItem value: $value');
  }
}
