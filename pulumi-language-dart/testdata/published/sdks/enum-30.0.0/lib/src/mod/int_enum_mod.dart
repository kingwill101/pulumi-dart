enum IntEnumMod {
  intOne(1),
  intTwo(2);

  const IntEnumMod(this.wireValue);
  final int wireValue;

  static IntEnumMod fromValue(int value) {
    for (final item in IntEnumMod.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IntEnumMod value: $value');
  }
}
