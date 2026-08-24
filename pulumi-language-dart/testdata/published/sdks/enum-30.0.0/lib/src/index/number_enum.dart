import 'package:pulumi/pulumi.dart' as pulumi;

enum NumberEnum implements pulumi.PulumiEnum<double> {
  zeroPointOne(0.1),
  one(1);

  const NumberEnum(this.wireValue);
  @override
  final double wireValue;

  static NumberEnum fromValue(double value) {
    for (final item in NumberEnum.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NumberEnum value: $value');
  }
}
