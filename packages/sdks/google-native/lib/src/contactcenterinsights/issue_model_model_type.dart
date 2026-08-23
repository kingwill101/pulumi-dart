/// Type of the model.
enum IssueModelModelType {
  modelTypeUnspecified("MODEL_TYPE_UNSPECIFIED"),
  typeV1("TYPE_V1"),
  typeV2("TYPE_V2");

  const IssueModelModelType(this.wireValue);
  final String wireValue;

  static IssueModelModelType fromValue(String value) {
    for (final item in IssueModelModelType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IssueModelModelType value: $value');
  }
}
