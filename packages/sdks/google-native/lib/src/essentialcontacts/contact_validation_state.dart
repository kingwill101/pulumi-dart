/// The validity of the contact. A contact is considered valid if it is the correct recipient for notifications for a particular resource.
enum ContactValidationState {
  validationStateUnspecified("VALIDATION_STATE_UNSPECIFIED"),
  valid("VALID"),
  invalid("INVALID");

  const ContactValidationState(this.wireValue);
  final String wireValue;

  static ContactValidationState fromValue(String value) {
    for (final item in ContactValidationState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ContactValidationState value: $value');
  }
}
