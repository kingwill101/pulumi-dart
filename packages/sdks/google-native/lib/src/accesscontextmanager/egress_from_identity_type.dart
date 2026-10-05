import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the type of identities that are allowed access to outside the perimeter. If left unspecified, then members of `identities` field will be allowed access.
enum EgressFromIdentityType implements pulumi.PulumiEnum<String> {
  identityTypeUnspecified("IDENTITY_TYPE_UNSPECIFIED"),
  anyIdentity("ANY_IDENTITY"),
  anyUserAccount("ANY_USER_ACCOUNT"),
  anyServiceAccount("ANY_SERVICE_ACCOUNT");

  const EgressFromIdentityType(this.wireValue);
  @override
  final String wireValue;

  static EgressFromIdentityType fromValue(String value) {
    for (final item in EgressFromIdentityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EgressFromIdentityType value: $value');
  }
}
