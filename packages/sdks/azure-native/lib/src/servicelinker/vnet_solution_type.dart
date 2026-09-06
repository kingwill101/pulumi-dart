import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of VNet solution.
enum VNetSolutionType implements pulumi.PulumiEnum<String> {
  valueServiceEndpoint("serviceEndpoint"),
  valuePrivateLink("privateLink");

  const VNetSolutionType(this.wireValue);
  @override
  final String wireValue;

  static VNetSolutionType fromValue(String value) {
    for (final item in VNetSolutionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VNetSolutionType value: $value');
  }
}
