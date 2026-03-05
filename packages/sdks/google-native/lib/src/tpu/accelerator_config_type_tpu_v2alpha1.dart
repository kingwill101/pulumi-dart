/// Required. Type of TPU.
enum AcceleratorConfigTypeTpuV2alpha1 {
  typeUnspecified("TYPE_UNSPECIFIED"),
  v2("V2"),
  v3("V3"),
  v4("V4");

  const AcceleratorConfigTypeTpuV2alpha1(this.wireValue);
  final String wireValue;

  static AcceleratorConfigTypeTpuV2alpha1 fromValue(String value) {
    for (final item in AcceleratorConfigTypeTpuV2alpha1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AcceleratorConfigTypeTpuV2alpha1 value: $value');
  }
}

