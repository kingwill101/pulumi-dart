import 'package:pulumi/pulumi.dart' as pulumi;

/// The name of the SKU. Ex - F0, P0. It is typically a letter+number code
enum OnlineExperimentationWorkspaceSkuName implements pulumi.PulumiEnum<String> {
  f0("F0"),
  s0("S0"),
  p0("P0"),
  d0("D0");

  const OnlineExperimentationWorkspaceSkuName(this.wireValue);
  @override
  final String wireValue;

  static OnlineExperimentationWorkspaceSkuName fromValue(String value) {
    for (final item in OnlineExperimentationWorkspaceSkuName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OnlineExperimentationWorkspaceSkuName value: $value');
  }
}
