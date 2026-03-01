// ignore_for_file: unused_element, unnecessary_cast


class WafPolicyIpException {
  /// Specifies how the system responds to blocking requests sent from this IP address. Possible options [`always`, `never`, `policy-default`].
  final String? blockRequests;
  /// Specifies the description of the policy.
  final String? description;
  /// Specifies when enabled that the system considers this IP address legitimate and does not take it into account when performing brute force prevention.
  final bool? ignoreAnomalies;
  /// Specifies when enabled that the system considers this IP address legitimate even if it is found in the IP Intelligence database (a database of questionable IP addresses).
  final bool? ignoreIpreputation;
  /// Specifies the IP address that you want the system to trust.
  final String ipAddress;
  /// Specifies the netmask of the exceptional IP address. This is an optional field.
  final String ipMask;
  /// Specifies when enabled the Policy Builder considers traffic from this IP address as being safe.
  final bool? trustedbyPolicybuilder;

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
      blockRequests: map['blockRequests'] == null ? null : map['blockRequests'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      ignoreAnomalies: map['ignoreAnomalies'] == null ? null : map['ignoreAnomalies'] as bool,
      ignoreIpreputation: map['ignoreIpreputation'] == null ? null : map['ignoreIpreputation'] as bool,
      ipAddress: map['ipAddress'] as String,
      ipMask: map['ipMask'] as String,
      trustedbyPolicybuilder: map['trustedbyPolicybuilder'] == null ? null : map['trustedbyPolicybuilder'] as bool,
    );
  }
}

