import 'package:pulumi/pulumi.dart' as pulumi;

/// If this is a primitive type then this field is the type of the primitive For example, STRING. Leave unspecified for composite types.
enum TypePrimitive implements pulumi.PulumiEnum<String> {
  primitiveUnspecified("PRIMITIVE_UNSPECIFIED"),
  string_("STRING"),
  varies("VARIES"),
  unescapedString("UNESCAPED_STRING");

  const TypePrimitive(this.wireValue);
  @override
  final String wireValue;

  static TypePrimitive fromValue(String value) {
    for (final item in TypePrimitive.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TypePrimitive value: $value');
  }
}
