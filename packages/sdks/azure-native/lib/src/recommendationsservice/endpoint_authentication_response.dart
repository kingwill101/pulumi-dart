// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Service endpoints authentication details.
class EndpointAuthenticationResponse {
  /// AAD tenant ID.
  final pulumi.Input<String>? aadTenantID;
  /// AAD principal ID.
  final pulumi.Input<String>? principalID;
  /// AAD principal type.
  final pulumi.Input<String>? principalType;

  /// Creates a new [EndpointAuthenticationResponse].
  /// [aadTenantID] AAD tenant ID.
  /// [principalID] AAD principal ID.
  /// [principalType] AAD principal type.
  EndpointAuthenticationResponse({
    this.aadTenantID,
    this.principalID,
    this.principalType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aadTenantID': ?aadTenantID,
      'principalID': ?principalID,
      'principalType': ?principalType,
    };
  }

  factory EndpointAuthenticationResponse.fromMap(Map<String, dynamic> map) {
    return EndpointAuthenticationResponse(
      aadTenantID: (() { final guardedValue = map['aadTenantID']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      principalID: (() { final guardedValue = map['principalID']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      principalType: (() { final guardedValue = map['principalType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

