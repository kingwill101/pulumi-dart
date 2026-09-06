import 'package:pulumi/pulumi.dart' as pulumi;

/// Service principal type.
enum ServicePrincipalType implements pulumi.PulumiEnum<String> {
  valueNone("None"),
  valueSystemAssigned("SystemAssigned");

  const ServicePrincipalType(this.wireValue);
  @override
  final String wireValue;

  static ServicePrincipalType fromValue(String value) {
    for (final item in ServicePrincipalType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServicePrincipalType value: $value');
  }
}
