// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Full view of networking configuration for an ASE.
class AseV3NetworkingConfiguration {
  /// Property to enable and disable new private endpoint connection creation on ASE
  final pulumi.Input<bool>? allowNewPrivateEndpointConnections;

  /// Property to enable and disable FTP on ASEV3
  final pulumi.Input<bool>? ftpEnabled;

  /// Customer provided Inbound IP Address. Only able to be set on Ase create.
  final pulumi.Input<String>? inboundIpAddressOverride;

  /// Kind of resource.
  final pulumi.Input<String>? kind;

  /// Property to enable and disable Remote Debug on ASEV3
  final pulumi.Input<bool>? remoteDebugEnabled;

  /// Creates a new [AseV3NetworkingConfiguration].
  /// [allowNewPrivateEndpointConnections] Property to enable and disable new private endpoint connection creation on ASE
  /// [ftpEnabled] Property to enable and disable FTP on ASEV3
  /// [inboundIpAddressOverride] Customer provided Inbound IP Address. Only able to be set on Ase create.
  /// [kind] Kind of resource.
  /// [remoteDebugEnabled] Property to enable and disable Remote Debug on ASEV3
  AseV3NetworkingConfiguration({
    this.allowNewPrivateEndpointConnections,
    this.ftpEnabled,
    this.inboundIpAddressOverride,
    this.kind,
    this.remoteDebugEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowNewPrivateEndpointConnections': ?allowNewPrivateEndpointConnections,
      'ftpEnabled': ?ftpEnabled,
      'inboundIpAddressOverride': ?inboundIpAddressOverride,
      'kind': ?kind,
      'remoteDebugEnabled': ?remoteDebugEnabled,
    };
  }

  factory AseV3NetworkingConfiguration.fromMap(Map<String, dynamic> map) {
    return AseV3NetworkingConfiguration(
      allowNewPrivateEndpointConnections: (() {
        final guardedValue = map['allowNewPrivateEndpointConnections'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      ftpEnabled: (() {
        final guardedValue = map['ftpEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      inboundIpAddressOverride: (() {
        final guardedValue = map['inboundIpAddressOverride'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kind: (() {
        final guardedValue = map['kind'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      remoteDebugEnabled: (() {
        final guardedValue = map['remoteDebugEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
