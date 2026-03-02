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
      allowNewPrivateEndpointConnections: map['allowNewPrivateEndpointConnections'] == null ? null : (map['allowNewPrivateEndpointConnections'] as bool).input(),
      ftpEnabled: map['ftpEnabled'] == null ? null : (map['ftpEnabled'] as bool).input(),
      inboundIpAddressOverride: map['inboundIpAddressOverride'] == null ? null : (map['inboundIpAddressOverride'] as String).input(),
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
      remoteDebugEnabled: map['remoteDebugEnabled'] == null ? null : (map['remoteDebugEnabled'] as bool).input(),
    );
  }
}

