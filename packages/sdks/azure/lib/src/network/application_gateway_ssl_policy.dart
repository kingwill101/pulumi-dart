// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationGatewaySslPolicy {
  final pulumi.Input<List<String>>? cipherSuites;
  /// A list of SSL Protocols which should be disabled on this Application Gateway. Possible values are `TLSv1_0`, `TLSv1_1`, `TLSv1_2` and `TLSv1_3`.
  ///
  /// &gt; **Note:** `disabled_protocols` cannot be set when `policy_name` or `policy_type` are set.
  final pulumi.Input<List<String>>? disabledProtocols;
  final pulumi.Input<String>? minProtocolVersion;
  final pulumi.Input<String>? policyName;
  /// The Type of the Policy. Possible values are `Predefined`, `Custom` and `CustomV2`.
  ///
  /// &gt; **Note:** `policy_type` is Required when `policy_name` is set - cannot be set if `disabled_protocols` is set.
  final pulumi.Input<String>? policyType;

  /// Creates a new [ApplicationGatewaySslPolicy].
  /// [cipherSuites] Optional.
  /// [disabledProtocols] A list of SSL Protocols which should be disabled on this Application Gateway. Possible values are `TLSv1_0`, `TLSv1_1`, `TLSv1_2` and `TLSv1_3`.
  /// [minProtocolVersion] Optional.
  /// [policyName] Optional.
  /// [policyType] The Type of the Policy. Possible values are `Predefined`, `Custom` and `CustomV2`.
  ApplicationGatewaySslPolicy({
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

  factory ApplicationGatewaySslPolicy.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewaySslPolicy(
      cipherSuites: (() { final guardedValue = map['cipherSuites']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      disabledProtocols: (() { final guardedValue = map['disabledProtocols']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      minProtocolVersion: (() { final guardedValue = map['minProtocolVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyName: (() { final guardedValue = map['policyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyType: (() { final guardedValue = map['policyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

