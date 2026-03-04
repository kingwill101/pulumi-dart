/// The justification type for this vulnerability.
enum JustificationJustificationType {
  justificationTypeUnspecified("JUSTIFICATION_TYPE_UNSPECIFIED"),
  componentNotPresent("COMPONENT_NOT_PRESENT"),
  vulnerableCodeNotPresent("VULNERABLE_CODE_NOT_PRESENT"),
  vulnerableCodeNotInExecutePath("VULNERABLE_CODE_NOT_IN_EXECUTE_PATH"),
  vulnerableCodeCannotBeControlledByAdversary(
    "VULNERABLE_CODE_CANNOT_BE_CONTROLLED_BY_ADVERSARY",
  ),
  inlineMitigationsAlreadyExist("INLINE_MITIGATIONS_ALREADY_EXIST");

  const JustificationJustificationType(this.wireValue);
  final String wireValue;

  static JustificationJustificationType fromValue(String value) {
    for (final item in JustificationJustificationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JustificationJustificationType value: $value');
  }
}
