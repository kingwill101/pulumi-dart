import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. The category of the attribute. The value of this field cannot be changed after creation.
enum AttributeDefinitionCategoryHealthcareV1beta1 implements pulumi.PulumiEnum<String> {
  categoryUnspecified("CATEGORY_UNSPECIFIED"),
  resource("RESOURCE"),
  request("REQUEST");

  const AttributeDefinitionCategoryHealthcareV1beta1(this.wireValue);
  @override
  final String wireValue;

  static AttributeDefinitionCategoryHealthcareV1beta1 fromValue(String value) {
    for (final item in AttributeDefinitionCategoryHealthcareV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AttributeDefinitionCategoryHealthcareV1beta1 value: $value');
  }
}
