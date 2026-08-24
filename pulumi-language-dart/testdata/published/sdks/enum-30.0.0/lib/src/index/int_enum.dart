import 'package:pulumi/pulumi.dart' as pulumi;

enum IntEnum implements pulumi.PulumiEnum<int> {
  intOne(1),
  intTwo(2);

  const IntEnum(this.wireValue);
  @override
  final int wireValue;

  static IntEnum fromValue(int value) {
    for (final item in IntEnum.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IntEnum value: $value');
  }
}
