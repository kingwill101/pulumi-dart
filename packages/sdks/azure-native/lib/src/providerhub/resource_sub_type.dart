import 'package:pulumi/pulumi.dart' as pulumi;

/// The resource sub type.
enum ResourceSubType implements pulumi.PulumiEnum<String> {
  notSpecified("NotSpecified"),
  asyncOperation("AsyncOperation");

  const ResourceSubType(this.wireValue);
  @override
  final String wireValue;

  static ResourceSubType fromValue(String value) {
    for (final item in ResourceSubType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourceSubType value: $value');
  }
}
