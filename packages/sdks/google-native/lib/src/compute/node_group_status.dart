import 'package:pulumi/pulumi.dart' as pulumi;

enum NodeGroupStatus implements pulumi.PulumiEnum<String> {
  creating("CREATING"),
  deleting("DELETING"),
  invalid("INVALID"),
  ready("READY");

  const NodeGroupStatus(this.wireValue);
  @override
  final String wireValue;

  static NodeGroupStatus fromValue(String value) {
    for (final item in NodeGroupStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NodeGroupStatus value: $value');
  }
}
