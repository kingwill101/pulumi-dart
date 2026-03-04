// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetApplicationGatewaySslPolicy {
  /// A List of accepted cipher suites.
  final pulumi.Input<List<String>> cipherSuites;

  /// A list of SSL Protocols which are disabled on this Application Gateway.
  final pulumi.Input<List<String>> disabledProtocols;

  /// The minimum TLS version.
  final pulumi.Input<String> minProtocolVersion;

  /// The Name of the Policy.
  final pulumi.Input<String> policyName;

  /// The Type of the Policy.
  final pulumi.Input<String> policyType;

  /// Creates a new [GetApplicationGatewaySslPolicy].
  /// [cipherSuites] A List of accepted cipher suites.
  /// [disabledProtocols] A list of SSL Protocols which are disabled on this Application Gateway.
  /// [minProtocolVersion] The minimum TLS version.
  /// [policyName] The Name of the Policy.
  /// [policyType] The Type of the Policy.
  GetApplicationGatewaySslPolicy({
    required this.cipherSuites,
    required this.disabledProtocols,
    required this.minProtocolVersion,
    required this.policyName,
    required this.policyType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cipherSuites': cipherSuites,
      'disabledProtocols': disabledProtocols,
      'minProtocolVersion': minProtocolVersion,
      'policyName': policyName,
      'policyType': policyType,
    };
  }

  factory GetApplicationGatewaySslPolicy.fromMap(Map<String, dynamic> map) {
    return GetApplicationGatewaySslPolicy(
      cipherSuites: pulumi.Input.fromValue(
        (map['cipherSuites'] as List).cast<String>(),
      ),
      disabledProtocols: pulumi.Input.fromValue(
        (map['disabledProtocols'] as List).cast<String>(),
      ),
      minProtocolVersion: pulumi.Input.fromValue(
        map['minProtocolVersion'] as String,
      ),
      policyName: pulumi.Input.fromValue(map['policyName'] as String),
      policyType: pulumi.Input.fromValue(map['policyType'] as String),
    );
  }
}
