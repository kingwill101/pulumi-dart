// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationGatewaySslProfileSslPolicy {
  final pulumi.Input<List<String>?>? cipherSuites;
  /// A list of SSL Protocols which should be disabled on this Application Gateway. Possible values are `TLSv1_0`, `TLSv1_1`, `TLSv1_2` and `TLSv1_3`.
  ///
  /// &gt; **Note:** `disabledProtocols` cannot be set when `policyName` or `policyType` are set.
  final pulumi.Input<List<String>?>? disabledProtocols;
  final pulumi.Input<String?>? minProtocolVersion;
  final pulumi.Input<String?>? policyName;
  /// The Type of the Policy. Possible values are `Predefined`, `Custom` and `CustomV2`.
  ///
  /// &gt; **Note:** `policyType` is Required when `policyName` is set - cannot be set if `disabledProtocols` is set.
  final pulumi.Input<String?>? policyType;

  /// Creates a new [ApplicationGatewaySslProfileSslPolicy].
  /// [cipherSuites] Optional.
  /// [disabledProtocols] A list of SSL Protocols which should be disabled on this Application Gateway. Possible values are `TLSv1_0`, `TLSv1_1`, `TLSv1_2` and `TLSv1_3`.
  /// [minProtocolVersion] Optional.
  /// [policyName] Optional.
  /// [policyType] The Type of the Policy. Possible values are `Predefined`, `Custom` and `CustomV2`.
  const ApplicationGatewaySslProfileSslPolicy({
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
      cipherSuites: (() { final guardedValue = map['cipherSuites']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      disabledProtocols: (() { final guardedValue = map['disabledProtocols']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      minProtocolVersion: (() { final guardedValue = map['minProtocolVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyName: (() { final guardedValue = map['policyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyType: (() { final guardedValue = map['policyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
