import 'package:pulumi/pulumi.dart' as pulumi;

/// Re-Do Operation
enum OperationType implements pulumi.PulumiEnum<String> {
  valueInvalid("Invalid"),
  valueRegister("Register"),
  valueReregister("Reregister"),
  valueRehydrate("Rehydrate");

  const OperationType(this.wireValue);
  @override
  final String wireValue;

  static OperationType fromValue(String value) {
    for (final item in OperationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OperationType value: $value');
  }
}
