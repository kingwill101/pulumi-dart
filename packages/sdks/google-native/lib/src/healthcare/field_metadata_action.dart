/// Deidentify action for one field.
enum FieldMetadataAction {
  actionUnspecified("ACTION_UNSPECIFIED"),
  transform("TRANSFORM"),
  inspectAndTransform("INSPECT_AND_TRANSFORM"),
  doNotTransform("DO_NOT_TRANSFORM");

  const FieldMetadataAction(this.wireValue);
  final String wireValue;

  static FieldMetadataAction fromValue(String value) {
    for (final item in FieldMetadataAction.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FieldMetadataAction value: $value');
  }
}
