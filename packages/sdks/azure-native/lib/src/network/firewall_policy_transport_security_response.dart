// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_certificate_authority_response.dart';

/// Configuration needed to perform TLS termination & initiation.
class FirewallPolicyTransportSecurityResponse {
  /// The CA used for intermediate CA generation.
  final pulumi.Input<FirewallPolicyCertificateAuthorityResponse?>? certificateAuthority;

  /// Creates a new [FirewallPolicyTransportSecurityResponse].
  /// [certificateAuthority] The CA used for intermediate CA generation.
  const FirewallPolicyTransportSecurityResponse({
    this.certificateAuthority,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateAuthority': ?pulumi.Input.mapOptionalInputValue<FirewallPolicyCertificateAuthorityResponse, Map<String, dynamic>>(certificateAuthority, (value) => value.toMap()),
    };
  }

  factory FirewallPolicyTransportSecurityResponse.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyTransportSecurityResponse(
      certificateAuthority: (() { final guardedValue = map['certificateAuthority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FirewallPolicyCertificateAuthorityResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
