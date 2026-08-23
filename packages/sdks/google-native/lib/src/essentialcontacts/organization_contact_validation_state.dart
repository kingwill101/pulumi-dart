/// The validity of the contact. A contact is considered valid if it is the correct recipient for notifications for a particular resource.
enum OrganizationContactValidationState {
  validationStateUnspecified("VALIDATION_STATE_UNSPECIFIED"),
  valid("VALID"),
  invalid("INVALID");

  const OrganizationContactValidationState(this.wireValue);
  final String wireValue;

  static OrganizationContactValidationState fromValue(String value) {
    for (final item in OrganizationContactValidationState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OrganizationContactValidationState value: $value');
  }
}
