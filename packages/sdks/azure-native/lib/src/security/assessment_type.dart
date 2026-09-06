import 'package:pulumi/pulumi.dart' as pulumi;

/// BuiltIn if the assessment based on built-in Azure Policy definition, Custom if the assessment based on custom Azure Policy definition
enum AssessmentType implements pulumi.PulumiEnum<String> {
  valueBuiltIn("BuiltIn"),
  valueCustomPolicy("CustomPolicy"),
  valueCustomerManaged("CustomerManaged");

  const AssessmentType(this.wireValue);
  @override
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
