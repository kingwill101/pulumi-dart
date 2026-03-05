// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration of the API Bridge.
class ApiBridgePropertiesResponse {
  /// The allowed source IP addresses or CIDR ranges for accessing the API Bridge
  final pulumi.Input<List<String>>? allowedAddressPrefixes;
  /// The activation state of the API Bridge for this Communications Gateway
  final pulumi.Input<String>? configureApiBridge;
  /// FQDNs for sending requests to the API Bridge endpoint
  final pulumi.Input<List<String>> endpointFqdns;

  /// Creates a new [ApiBridgePropertiesResponse].
  /// [allowedAddressPrefixes] The allowed source IP addresses or CIDR ranges for accessing the API Bridge
  /// [configureApiBridge] The activation state of the API Bridge for this Communications Gateway
  /// [endpointFqdns] FQDNs for sending requests to the API Bridge endpoint
  ApiBridgePropertiesResponse({
    this.allowedAddressPrefixes,
    this.configureApiBridge,
    required this.endpointFqdns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedAddressPrefixes': ?allowedAddressPrefixes,
      'configureApiBridge': ?configureApiBridge,
      'endpointFqdns': endpointFqdns,
    };
  }

  factory ApiBridgePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ApiBridgePropertiesResponse(
      allowedAddressPrefixes: (() { final guardedValue = map['allowedAddressPrefixes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      configureApiBridge: (() { final guardedValue = map['configureApiBridge']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointFqdns: pulumi.Input.fromValue((map['endpointFqdns'] as List).cast<String>()),
    );
  }
}

