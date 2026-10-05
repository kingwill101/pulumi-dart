import 'package:pulumi/pulumi.dart' as pulumi;

enum NodeGroupStatusComputeBeta implements pulumi.PulumiEnum<String> {
  creating("CREATING"),
  deleting("DELETING"),
  invalid("INVALID"),
  ready("READY");

  const NodeGroupStatusComputeBeta(this.wireValue);
  @override
  final String wireValue;

  static NodeGroupStatusComputeBeta fromValue(String value) {
    for (final item in NodeGroupStatusComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NodeGroupStatusComputeBeta value: $value');
  }
}
