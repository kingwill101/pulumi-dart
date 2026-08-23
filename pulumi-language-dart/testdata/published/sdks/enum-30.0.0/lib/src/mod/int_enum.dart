enum IntEnum {
  intOne(1),
  intTwo(2);

  const IntEnum(this.wireValue);
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
