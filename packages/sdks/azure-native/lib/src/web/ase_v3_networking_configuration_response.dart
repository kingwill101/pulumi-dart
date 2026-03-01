// ignore_for_file: unused_element, unnecessary_cast


/// Full view of networking configuration for an ASE.
class AseV3NetworkingConfigurationResponse {
  /// Property to enable and disable new private endpoint connection creation on ASE
  final bool? allowNewPrivateEndpointConnections;
  final List<String> externalInboundIpAddresses;
  /// Property to enable and disable FTP on ASEV3
  final bool? ftpEnabled;
  /// Resource Id.
  final String id;
  /// Customer provided Inbound IP Address. Only able to be set on Ase create.
  final String? inboundIpAddressOverride;
  final List<String> internalInboundIpAddresses;
  /// Kind of resource.
  final String? kind;
  final List<String> linuxOutboundIpAddresses;
  /// Resource Name.
  final String name;
  /// Property to enable and disable Remote Debug on ASEV3
  final bool? remoteDebugEnabled;
  /// Resource type.
  final String type;
  final List<String> windowsOutboundIpAddresses;

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
      allowNewPrivateEndpointConnections: map['allowNewPrivateEndpointConnections'] == null ? null : map['allowNewPrivateEndpointConnections'] as bool,
      externalInboundIpAddresses: (map['externalInboundIpAddresses'] as List).cast<String>(),
      ftpEnabled: map['ftpEnabled'] == null ? null : map['ftpEnabled'] as bool,
      id: map['id'] as String,
      inboundIpAddressOverride: map['inboundIpAddressOverride'] == null ? null : map['inboundIpAddressOverride'] as String,
      internalInboundIpAddresses: (map['internalInboundIpAddresses'] as List).cast<String>(),
      kind: map['kind'] == null ? null : map['kind'] as String,
      linuxOutboundIpAddresses: (map['linuxOutboundIpAddresses'] as List).cast<String>(),
      name: map['name'] as String,
      remoteDebugEnabled: map['remoteDebugEnabled'] == null ? null : map['remoteDebugEnabled'] as bool,
      type: map['type'] as String,
      windowsOutboundIpAddresses: (map['windowsOutboundIpAddresses'] as List).cast<String>(),
    );
  }
}

