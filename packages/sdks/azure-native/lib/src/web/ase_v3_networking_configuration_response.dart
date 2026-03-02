// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Full view of networking configuration for an ASE.
class AseV3NetworkingConfigurationResponse {
  /// Property to enable and disable new private endpoint connection creation on ASE
  final pulumi.Input<bool>? allowNewPrivateEndpointConnections;
  final pulumi.Input<List<String>> externalInboundIpAddresses;
  /// Property to enable and disable FTP on ASEV3
  final pulumi.Input<bool>? ftpEnabled;
  /// Resource Id.
  final pulumi.Input<String> id;
  /// Customer provided Inbound IP Address. Only able to be set on Ase create.
  final pulumi.Input<String>? inboundIpAddressOverride;
  final pulumi.Input<List<String>> internalInboundIpAddresses;
  /// Kind of resource.
  final pulumi.Input<String>? kind;
  final pulumi.Input<List<String>> linuxOutboundIpAddresses;
  /// Resource Name.
  final pulumi.Input<String> name;
  /// Property to enable and disable Remote Debug on ASEV3
  final pulumi.Input<bool>? remoteDebugEnabled;
  /// Resource type.
  final pulumi.Input<String> type;
  final pulumi.Input<List<String>> windowsOutboundIpAddresses;

  /// Creates a new [AseV3NetworkingConfigurationResponse].
  /// [allowNewPrivateEndpointConnections] Property to enable and disable new private endpoint connection creation on ASE
  /// [externalInboundIpAddresses] Required.
  /// [ftpEnabled] Property to enable and disable FTP on ASEV3
  /// [id] Resource Id.
  /// [inboundIpAddressOverride] Customer provided Inbound IP Address. Only able to be set on Ase create.
  /// [internalInboundIpAddresses] Required.
  /// [kind] Kind of resource.
  /// [linuxOutboundIpAddresses] Required.
  /// [name] Resource Name.
  /// [remoteDebugEnabled] Property to enable and disable Remote Debug on ASEV3
  /// [type] Resource type.
  /// [windowsOutboundIpAddresses] Required.
  AseV3NetworkingConfigurationResponse({
    this.allowNewPrivateEndpointConnections,
    required this.externalInboundIpAddresses,
    this.ftpEnabled,
    required this.id,
    this.inboundIpAddressOverride,
    required this.internalInboundIpAddresses,
    this.kind,
    required this.linuxOutboundIpAddresses,
    required this.name,
    this.remoteDebugEnabled,
    required this.type,
    required this.windowsOutboundIpAddresses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowNewPrivateEndpointConnections': ?allowNewPrivateEndpointConnections,
      'externalInboundIpAddresses': externalInboundIpAddresses,
      'ftpEnabled': ?ftpEnabled,
      'id': id,
      'inboundIpAddressOverride': ?inboundIpAddressOverride,
      'internalInboundIpAddresses': internalInboundIpAddresses,
      'kind': ?kind,
      'linuxOutboundIpAddresses': linuxOutboundIpAddresses,
      'name': name,
      'remoteDebugEnabled': ?remoteDebugEnabled,
      'type': type,
      'windowsOutboundIpAddresses': windowsOutboundIpAddresses,
    };
  }

  factory AseV3NetworkingConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return AseV3NetworkingConfigurationResponse(
      allowNewPrivateEndpointConnections: map['allowNewPrivateEndpointConnections'] == null ? null : (map['allowNewPrivateEndpointConnections']! as bool).input(),
      externalInboundIpAddresses: ((map['externalInboundIpAddresses'] as List).cast<String>()).input(),
      ftpEnabled: map['ftpEnabled'] == null ? null : (map['ftpEnabled']! as bool).input(),
      id: (map['id'] as String).input(),
      inboundIpAddressOverride: map['inboundIpAddressOverride'] == null ? null : (map['inboundIpAddressOverride']! as String).input(),
      internalInboundIpAddresses: ((map['internalInboundIpAddresses'] as List).cast<String>()).input(),
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      linuxOutboundIpAddresses: ((map['linuxOutboundIpAddresses'] as List).cast<String>()).input(),
      name: (map['name'] as String).input(),
      remoteDebugEnabled: map['remoteDebugEnabled'] == null ? null : (map['remoteDebugEnabled']! as bool).input(),
      type: (map['type'] as String).input(),
      windowsOutboundIpAddresses: ((map['windowsOutboundIpAddresses'] as List).cast<String>()).input(),
    );
  }
}

