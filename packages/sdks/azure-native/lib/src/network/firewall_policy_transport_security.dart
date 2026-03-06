// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_certificate_authority.dart';

/// Configuration needed to perform TLS termination & initiation.
class FirewallPolicyTransportSecurity {
  /// The CA used for intermediate CA generation.
  final pulumi.Input<FirewallPolicyCertificateAuthority>? certificateAuthority;

  /// Creates a new [FirewallPolicyTransportSecurity].
  /// [certificateAuthority] The CA used for intermediate CA generation.
  const FirewallPolicyTransportSecurity({
    this.certificateAuthority,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateAuthority': ?pulumi.Input.mapOptionalInputValue<FirewallPolicyCertificateAuthority, Map<String, dynamic>>(certificateAuthority, (value) => value.toMap()),
    };
  }

  factory FirewallPolicyTransportSecurity.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyTransportSecurity(
      certificateAuthority: (() { final guardedValue = map['certificateAuthority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FirewallPolicyCertificateAuthority.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

