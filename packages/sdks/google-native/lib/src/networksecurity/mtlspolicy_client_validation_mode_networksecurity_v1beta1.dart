/// When the client presents an invalid certificate or no certificate to the load balancer, the `client_validation_mode` specifies how the client connection is handled. Required if the policy is to be used with the external HTTPS load balancing. For Traffic Director it must be empty.
enum MTLSPolicyClientValidationModeNetworksecurityV1beta1 {
  clientValidationModeUnspecified("CLIENT_VALIDATION_MODE_UNSPECIFIED"),
  allowInvalidOrMissingClientCert("ALLOW_INVALID_OR_MISSING_CLIENT_CERT"),
  rejectInvalid("REJECT_INVALID");

  const MTLSPolicyClientValidationModeNetworksecurityV1beta1(this.value);
  final String value;

  static MTLSPolicyClientValidationModeNetworksecurityV1beta1 fromValue(String value) {
    for (final item in MTLSPolicyClientValidationModeNetworksecurityV1beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MTLSPolicyClientValidationModeNetworksecurityV1beta1 value: $value');
  }
}

