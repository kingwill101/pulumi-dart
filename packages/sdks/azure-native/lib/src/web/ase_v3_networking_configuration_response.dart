// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';

/// Full view of networking configuration for an ASE.
class AseV3NetworkingConfigurationResponse {
  /// Property to enable and disable new private endpoint connection creation on ASE
  final pulumi.Input<bool?>? allowNewPrivateEndpointConnections;
  final pulumi.Input<List<String>> externalInboundIpAddresses;
  /// Property to enable and disable FTP on ASEV3
  final pulumi.Input<bool?>? ftpEnabled;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final pulumi.Input<String> id;
  /// Customer provided Inbound IP Address. Only able to be set on Ase create.
  final pulumi.Input<String?>? inboundIpAddressOverride;
  final pulumi.Input<List<String>> internalInboundIpAddresses;
  /// Kind of resource.
  final pulumi.Input<String?>? kind;
  final pulumi.Input<List<String>> linuxOutboundIpAddresses;
  /// The name of the resource
  final pulumi.Input<String> name;
  /// Property to enable and disable Remote Debug on ASEV3
  final pulumi.Input<bool?>? remoteDebugEnabled;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final pulumi.Input<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final pulumi.Input<String> type;
  final pulumi.Input<List<String>> windowsOutboundIpAddresses;

  /// Creates a new [AseV3NetworkingConfigurationResponse].
  /// [allowNewPrivateEndpointConnections] Property to enable and disable new private endpoint connection creation on ASE
  /// [externalInboundIpAddresses] Required.
  /// [ftpEnabled] Property to enable and disable FTP on ASEV3
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [inboundIpAddressOverride] Customer provided Inbound IP Address. Only able to be set on Ase create.
  /// [internalInboundIpAddresses] Required.
  /// [kind] Kind of resource.
  /// [linuxOutboundIpAddresses] Required.
  /// [name] The name of the resource
  /// [remoteDebugEnabled] Property to enable and disable Remote Debug on ASEV3
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [windowsOutboundIpAddresses] Required.
  const AseV3NetworkingConfigurationResponse({
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
    required this.systemData,
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
      'systemData': pulumi.Input.mapInputValue<SystemDataResponse, Map<String, dynamic>>(systemData, (value) => value.toMap()),
      'type': type,
      'windowsOutboundIpAddresses': windowsOutboundIpAddresses,
    };
  }

  factory AseV3NetworkingConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return AseV3NetworkingConfigurationResponse(
      allowNewPrivateEndpointConnections: (() { final guardedValue = map['allowNewPrivateEndpointConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      externalInboundIpAddresses: pulumi.Input.fromValue((map['externalInboundIpAddresses'] as List).cast<String>()),
      ftpEnabled: (() { final guardedValue = map['ftpEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      id: pulumi.Input.fromValue(map['id'] as String),
      inboundIpAddressOverride: (() { final guardedValue = map['inboundIpAddressOverride']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      internalInboundIpAddresses: pulumi.Input.fromValue((map['internalInboundIpAddresses'] as List).cast<String>()),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      linuxOutboundIpAddresses: pulumi.Input.fromValue((map['linuxOutboundIpAddresses'] as List).cast<String>()),
      name: pulumi.Input.fromValue(map['name'] as String),
      remoteDebugEnabled: (() { final guardedValue = map['remoteDebugEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      systemData: pulumi.Input.fromValue(SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>())),
      type: pulumi.Input.fromValue(map['type'] as String),
      windowsOutboundIpAddresses: pulumi.Input.fromValue((map['windowsOutboundIpAddresses'] as List).cast<String>()),
    );
  }
}
