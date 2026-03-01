/// Required. The category of the attribute. The value of this field cannot be changed after creation.
enum AttributeDefinitionCategory {
  categoryUnspecified("CATEGORY_UNSPECIFIED"),
  resource("RESOURCE"),
  request("REQUEST");

  const AttributeDefinitionCategory(this.value);
  final String value;

  static AttributeDefinitionCategory fromValue(String value) {
    for (final item in AttributeDefinitionCategory.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AttributeDefinitionCategory value: $value');
  }
}

