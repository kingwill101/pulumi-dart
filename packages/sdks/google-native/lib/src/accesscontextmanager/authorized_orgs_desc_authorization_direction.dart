/// The direction of the authorization relationship between this organization and the organizations listed in the `orgs` field. The valid values for this field include the following: `AUTHORIZATION_DIRECTION_FROM`: Allows this organization to evaluate traffic in the organizations listed in the `orgs` field. `AUTHORIZATION_DIRECTION_TO`: Allows the organizations listed in the `orgs` field to evaluate the traffic in this organization. For the authorization relationship to take effect, all of the organizations must authorize and specify the appropriate relationship direction. For example, if organization A authorized organization B and C to evaluate its traffic, by specifying `AUTHORIZATION_DIRECTION_TO` as the authorization direction, organizations B and C must specify `AUTHORIZATION_DIRECTION_FROM` as the authorization direction in their `AuthorizedOrgsDesc` resource.
enum AuthorizedOrgsDescAuthorizationDirection {
  authorizationDirectionUnspecified("AUTHORIZATION_DIRECTION_UNSPECIFIED"),
  authorizationDirectionTo("AUTHORIZATION_DIRECTION_TO"),
  authorizationDirectionFrom("AUTHORIZATION_DIRECTION_FROM");

  const AuthorizedOrgsDescAuthorizationDirection(this.wireValue);
  final String wireValue;

  static AuthorizedOrgsDescAuthorizationDirection fromValue(String value) {
    for (final item in AuthorizedOrgsDescAuthorizationDirection.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuthorizedOrgsDescAuthorizationDirection value: $value');
  }
}
