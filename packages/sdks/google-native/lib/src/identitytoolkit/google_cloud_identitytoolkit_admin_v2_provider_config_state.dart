import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the state of the MultiFactor Authentication type.
enum GoogleCloudIdentitytoolkitAdminV2ProviderConfigState implements pulumi.PulumiEnum<String> {
  mfaStateUnspecified("MFA_STATE_UNSPECIFIED"),
  disabled("DISABLED"),
  enabled("ENABLED"),
  mandatory("MANDATORY");

  const GoogleCloudIdentitytoolkitAdminV2ProviderConfigState(this.wireValue);
  @override
  final String wireValue;

  static GoogleCloudIdentitytoolkitAdminV2ProviderConfigState fromValue(String value) {
    for (final item in GoogleCloudIdentitytoolkitAdminV2ProviderConfigState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudIdentitytoolkitAdminV2ProviderConfigState value: $value');
  }
}
