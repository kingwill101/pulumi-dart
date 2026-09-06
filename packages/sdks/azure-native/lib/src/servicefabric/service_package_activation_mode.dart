import 'package:pulumi/pulumi.dart' as pulumi;

/// The activation Mode of the service package
enum ServicePackageActivationMode implements pulumi.PulumiEnum<String> {
  valueSharedProcess("SharedProcess"),
  valueExclusiveProcess("ExclusiveProcess");

  const ServicePackageActivationMode(this.wireValue);
  @override
  final String wireValue;

  static ServicePackageActivationMode fromValue(String value) {
    for (final item in ServicePackageActivationMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServicePackageActivationMode value: $value');
  }
}
