// ignore_for_file: unused_element, unnecessary_cast


class ApplicationGatewaySslProfileSslPolicy {
  final List<String>? cipherSuites;
  /// A list of SSL Protocols which should be disabled on this Application Gateway. Possible values are `TLSv1_0`, `TLSv1_1`, `TLSv1_2` and `TLSv1_3`.
  ///
  /// > **Note:** `disabled_protocols` cannot be set when `policy_name` or `policy_type` are set.
  final List<String>? disabledProtocols;
  final String? minProtocolVersion;
  final String? policyName;
  /// The Type of the Policy. Possible values are `Predefined`, `Custom` and `CustomV2`.
  ///
  /// > **Note:** `policy_type` is Required when `policy_name` is set - cannot be set if `disabled_protocols` is set.
  final String? policyType;

  /// Creates a new [ApplicationGatewaySslProfileSslPolicy].
  /// [cipherSuites] Optional.
  /// [disabledProtocols] A list of SSL Protocols which should be disabled on this Application Gateway. Possible values are `TLSv1_0`, `TLSv1_1`, `TLSv1_2` and `TLSv1_3`.
  /// [minProtocolVersion] Optional.
  /// [policyName] Optional.
  /// [policyType] The Type of the Policy. Possible values are `Predefined`, `Custom` and `CustomV2`.
  ApplicationGatewaySslProfileSslPolicy({
    this.cipherSuites,
    this.disabledProtocols,
    this.minProtocolVersion,
    this.policyName,
    this.policyType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cipherSuites': ?cipherSuites,
      'disabledProtocols': ?disabledProtocols,
      'minProtocolVersion': ?minProtocolVersion,
      'policyName': ?policyName,
      'policyType': ?policyType,
    };
  }

  factory ApplicationGatewaySslProfileSslPolicy.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewaySslProfileSslPolicy(
      cipherSuites: map['cipherSuites'] == null ? null : (map['cipherSuites'] as List).cast<String>(),
      disabledProtocols: map['disabledProtocols'] == null ? null : (map['disabledProtocols'] as List).cast<String>(),
      minProtocolVersion: map['minProtocolVersion'] == null ? null : map['minProtocolVersion'] as String,
      policyName: map['policyName'] == null ? null : map['policyName'] as String,
      policyType: map['policyType'] == null ? null : map['policyType'] as String,
    );
  }
}

