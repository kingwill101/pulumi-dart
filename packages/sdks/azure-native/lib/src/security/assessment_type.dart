/// BuiltIn if the assessment based on built-in Azure Policy definition, Custom if the assessment based on custom Azure Policy definition
enum AssessmentType {
  valueBuiltIn("BuiltIn"),
  valueCustomPolicy("CustomPolicy"),
  valueCustomerManaged("CustomerManaged");

  const AssessmentType(this.wireValue);
  final String wireValue;

  static AssessmentType fromValue(String value) {
    for (final item in AssessmentType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AssessmentType value: $value');
  }
}

