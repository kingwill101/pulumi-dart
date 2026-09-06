import 'package:pulumi/pulumi.dart' as pulumi;

/// The status.
enum ServiceStatus implements pulumi.PulumiEnum<String> {
  active("Active"),
  inactive("Inactive");

  const ServiceStatus(this.wireValue);
  @override
  final String wireValue;

  static ServiceStatus fromValue(String value) {
    for (final item in ServiceStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceStatus value: $value');
  }
}
