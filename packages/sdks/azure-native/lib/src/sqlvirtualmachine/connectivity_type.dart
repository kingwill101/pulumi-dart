import 'package:pulumi/pulumi.dart' as pulumi;

/// SQL Server connectivity option.
enum ConnectivityType implements pulumi.PulumiEnum<String> {
  lOCAL("LOCAL"),
  pRIVATE("PRIVATE"),
  pUBLIC("PUBLIC");

  const ConnectivityType(this.wireValue);
  @override
  final String wireValue;

  static ConnectivityType fromValue(String value) {
    for (final item in ConnectivityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConnectivityType value: $value');
  }
}
