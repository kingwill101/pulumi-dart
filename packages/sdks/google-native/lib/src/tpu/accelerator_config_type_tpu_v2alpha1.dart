import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. Type of TPU.
enum AcceleratorConfigTypeTpuV2alpha1 implements pulumi.PulumiEnum<String> {
  typeUnspecified("TYPE_UNSPECIFIED"),
  v2("V2"),
  v3("V3"),
  v4("V4");

  const AcceleratorConfigTypeTpuV2alpha1(this.wireValue);
  @override
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
