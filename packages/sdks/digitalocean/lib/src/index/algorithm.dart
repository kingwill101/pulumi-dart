import 'package:pulumi/pulumi.dart' as pulumi;

enum Algorithm implements pulumi.PulumiEnum<String> {
  roundRobin("round_robin"),
  leastConnections("least_connections");

  const Algorithm(this.wireValue);
  @override
  final String wireValue;

  static Algorithm fromValue(String value) {
    for (final item in Algorithm.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Algorithm value: $value');
  }
}
