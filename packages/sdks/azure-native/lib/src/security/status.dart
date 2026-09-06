import 'package:pulumi/pulumi.dart' as pulumi;

/// The status of the port
enum Status implements pulumi.PulumiEnum<String> {
  revoked("Revoked"),
  initiated("Initiated");

  const Status(this.wireValue);
  @override
  final String wireValue;

  static Status fromValue(String value) {
    for (final item in Status.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Status value: $value');
  }
}
