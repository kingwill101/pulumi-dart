/// The status of the auth config.
enum AuthConfigState {
  stateUnspecified("STATE_UNSPECIFIED"),
  valid("VALID"),
  invalid("INVALID"),
  softDeleted("SOFT_DELETED"),
  expired("EXPIRED"),
  unauthorized("UNAUTHORIZED"),
  unsupported("UNSUPPORTED");

  const AuthConfigState(this.wireValue);
  final String wireValue;

  static AuthConfigState fromValue(String value) {
    for (final item in AuthConfigState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuthConfigState value: $value');
  }
}
