import 'package:pulumi/pulumi.dart' as pulumi;

/// If this is a primitive type then this field is the type of the primitive For example, STRING. Leave unspecified for composite types.
enum TypePrimitiveHealthcareV1beta1 implements pulumi.PulumiEnum<String> {
  primitiveUnspecified("PRIMITIVE_UNSPECIFIED"),
  string_("STRING"),
  varies("VARIES"),
  unescapedString("UNESCAPED_STRING");

  const TypePrimitiveHealthcareV1beta1(this.wireValue);
  @override
  final String wireValue;

  static TypePrimitiveHealthcareV1beta1 fromValue(String value) {
    for (final item in TypePrimitiveHealthcareV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TypePrimitiveHealthcareV1beta1 value: $value');
  }
}
