// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WafPolicyIpException {
  /// Specifies how the system responds to blocking requests sent from this IP address. Possible options [`always`, `never`, `policy-default`].
  final pulumi.Input<String>? blockRequests;
  /// Specifies the description of the policy.
  final pulumi.Input<String>? description;
  /// Specifies when enabled that the system considers this IP address legitimate and does not take it into account when performing brute force prevention.
  final pulumi.Input<bool>? ignoreAnomalies;
  /// Specifies when enabled that the system considers this IP address legitimate even if it is found in the IP Intelligence database (a database of questionable IP addresses).
  final pulumi.Input<bool>? ignoreIpreputation;
  /// Specifies the IP address that you want the system to trust.
  final pulumi.Input<String> ipAddress;
  /// Specifies the netmask of the exceptional IP address. This is an optional field.
  final pulumi.Input<String> ipMask;
  /// Specifies when enabled the Policy Builder considers traffic from this IP address as being safe.
  final pulumi.Input<bool>? trustedbyPolicybuilder;

  /// Creates a new [WafPolicyIpException].
  /// [blockRequests] Specifies how the system responds to blocking requests sent from this IP address. Possible options [`always`, `never`, `policy-default`].
  /// [description] Specifies the description of the policy.
  /// [ignoreAnomalies] Specifies when enabled that the system considers this IP address legitimate and does not take it into account when performing brute force prevention.
  /// [ignoreIpreputation] Specifies when enabled that the system considers this IP address legitimate even if it is found in the IP Intelligence database (a database of questionable IP addresses).
  /// [ipAddress] Specifies the IP address that you want the system to trust.
  /// [ipMask] Specifies the netmask of the exceptional IP address. This is an optional field.
  /// [trustedbyPolicybuilder] Specifies when enabled the Policy Builder considers traffic from this IP address as being safe.
  WafPolicyIpException({
    this.blockRequests,
    this.description,
    this.ignoreAnomalies,
    this.ignoreIpreputation,
    required this.ipAddress,
    required this.ipMask,
    this.trustedbyPolicybuilder,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blockRequests': ?blockRequests,
      'description': ?description,
      'ignoreAnomalies': ?ignoreAnomalies,
      'ignoreIpreputation': ?ignoreIpreputation,
      'ipAddress': ipAddress,
      'ipMask': ipMask,
      'trustedbyPolicybuilder': ?trustedbyPolicybuilder,
    };
  }

  factory WafPolicyIpException.fromMap(Map<String, dynamic> map) {
    return WafPolicyIpException(
      blockRequests: (() { final guardedValue = map['blockRequests']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ignoreAnomalies: (() { final guardedValue = map['ignoreAnomalies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ignoreIpreputation: (() { final guardedValue = map['ignoreIpreputation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ipAddress: pulumi.Input.fromValue(map['ipAddress'] as String),
      ipMask: pulumi.Input.fromValue(map['ipMask'] as String),
      trustedbyPolicybuilder: (() { final guardedValue = map['trustedbyPolicybuilder']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

