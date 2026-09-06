import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of a Service Fabric container network.
enum NetworkKind implements pulumi.PulumiEnum<String> {
  valueLocal("Local");

  const NetworkKind(this.wireValue);
  @override
  final String wireValue;

  static NetworkKind fromValue(String value) {
    for (final item in NetworkKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkKind value: $value');
  }
}
