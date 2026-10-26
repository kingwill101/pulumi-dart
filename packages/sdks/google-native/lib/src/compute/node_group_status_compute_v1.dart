import 'package:pulumi/pulumi.dart' as pulumi;

enum NodeGroupStatusComputeV1 implements pulumi.PulumiEnum<String> {
  creating("CREATING"),
  deleting("DELETING"),
  invalid("INVALID"),
  ready("READY");

  const NodeGroupStatusComputeV1(this.wireValue);
  @override
  final String wireValue;

  static NodeGroupStatusComputeV1 fromValue(String value) {
    for (final item in NodeGroupStatusComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NodeGroupStatusComputeV1 value: $value');
  }
}
