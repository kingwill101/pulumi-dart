import 'package:pulumi/pulumi.dart' as pulumi;

/// The kind of service (Stateless or Stateful).
enum ServiceKind implements pulumi.PulumiEnum<String> {
  valueStateless("Stateless"),
  valueStateful("Stateful");

  const ServiceKind(this.wireValue);
  @override
  final String wireValue;

  static ServiceKind fromValue(String value) {
    for (final item in ServiceKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceKind value: $value');
  }
}
