/// Required. The category of the attribute. The value of this field cannot be changed after creation.
enum AttributeDefinitionCategory {
  categoryUnspecified("CATEGORY_UNSPECIFIED"),
  resource("RESOURCE"),
  request("REQUEST");

  const AttributeDefinitionCategory(this.wireValue);
  final String wireValue;

  static AttributeDefinitionCategory fromValue(String value) {
    for (final item in AttributeDefinitionCategory.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AttributeDefinitionCategory value: $value');
  }
}
