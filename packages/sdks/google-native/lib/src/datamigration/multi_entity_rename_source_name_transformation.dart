/// Optional. Additional transformation that can be done on the source entity name before it is being used by the new_name_pattern, for example lower case. If no transformation is desired, use NO_TRANSFORMATION
enum MultiEntityRenameSourceNameTransformation {
  entityNameTransformationUnspecified("ENTITY_NAME_TRANSFORMATION_UNSPECIFIED"),
  entityNameTransformationNoTransformation("ENTITY_NAME_TRANSFORMATION_NO_TRANSFORMATION"),
  entityNameTransformationLowerCase("ENTITY_NAME_TRANSFORMATION_LOWER_CASE"),
  entityNameTransformationUpperCase("ENTITY_NAME_TRANSFORMATION_UPPER_CASE"),
  entityNameTransformationCapitalizedCase("ENTITY_NAME_TRANSFORMATION_CAPITALIZED_CASE");

  const MultiEntityRenameSourceNameTransformation(this.wireValue);
  final String wireValue;

  static MultiEntityRenameSourceNameTransformation fromValue(String value) {
    for (final item in MultiEntityRenameSourceNameTransformation.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MultiEntityRenameSourceNameTransformation value: $value');
  }
}
