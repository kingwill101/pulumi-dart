// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// TotpMFAProviderConfig represents the TOTP based MFA provider.
class GoogleCloudIdentitytoolkitAdminV2TotpMfaProviderConfigResponse {
  /// The allowed number of adjacent intervals that will be used for verification to avoid clock skew.
  final pulumi.Input<int> adjacentIntervals;

  /// Creates a new [GoogleCloudIdentitytoolkitAdminV2TotpMfaProviderConfigResponse].
  /// [adjacentIntervals] The allowed number of adjacent intervals that will be used for verification to avoid clock skew.
  const GoogleCloudIdentitytoolkitAdminV2TotpMfaProviderConfigResponse({
    required this.adjacentIntervals,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adjacentIntervals': adjacentIntervals,
    };
  }

  factory GoogleCloudIdentitytoolkitAdminV2TotpMfaProviderConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIdentitytoolkitAdminV2TotpMfaProviderConfigResponse(
      adjacentIntervals: pulumi.Input.fromValue(map['adjacentIntervals'] as int),
    );
  }
}

