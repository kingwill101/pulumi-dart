import 'package:pulumi/pulumi.dart' as pulumi;

/// Configure this property to support the search service using either the Default Compute or Azure Confidential Compute.
enum ComputeType implements pulumi.PulumiEnum<String> {
  default_("Default"),
  confidential("Confidential");

  const ComputeType(this.wireValue);
  @override
  final String wireValue;

  static ComputeType fromValue(String value) {
    for (final item in ComputeType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ComputeType value: $value');
  }
}
