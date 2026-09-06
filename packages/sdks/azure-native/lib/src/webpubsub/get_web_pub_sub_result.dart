// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'live_trace_configuration_response.dart';
import 'managed_identity_response.dart';
import 'private_endpoint_connection_response.dart';
import 'resource_log_configuration_response.dart';
import 'resource_sku_response.dart';
import 'shared_private_link_resource_response.dart';
import 'system_data_response.dart';
import 'web_pub_sub_network_acls_response.dart';
import 'web_pub_sub_socket_iosettings_response.dart';
import 'web_pub_sub_tls_settings_response.dart';

/// Result data returned by getWebPubSub.
class GetWebPubSubResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// DisableLocalAuth
  /// Enable or disable aad auth
  /// When set as true, connection with AuthType=aad won't work.
  final bool? disableAadAuth;
  /// DisableLocalAuth
  /// Enable or disable local auth with AccessKey
  /// When set as true, connection with AccessKey=xxx won't work.
  final bool? disableLocalAuth;
  /// The publicly accessible IP of the resource.
  final String? externalIP;
  /// FQDN of the service instance.
  final String? hostName;
  /// Deprecated.
  final String? hostNamePrefix;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// A class represent managed identities used for request and response
  final ManagedIdentityResponse? identity;
  /// The kind of the service
  final String? kind;
  /// Live trace configuration of a Microsoft.SignalRService resource.
  final LiveTraceConfigurationResponse? liveTraceConfiguration;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// Network ACLs for the resource
  final WebPubSubNetworkACLsResponse? networkACLs;
  /// Private endpoint connections to the resource.
  final List<PrivateEndpointConnectionResponse>? privateEndpointConnections;
  /// Provisioning state of the resource.
  final String? provisioningState;
  /// Enable or disable public network access. Default to "Enabled".
  /// When it's Enabled, network ACLs still apply.
  /// When it's Disabled, public network access is always disabled no matter what you set in network ACLs.
  final String? publicNetworkAccess;
  /// The publicly accessible port of the resource which is designed for browser/client side usage.
  final int? publicPort;
  /// Enable or disable the regional endpoint. Default to "Enabled".
  /// When it's Disabled, new connections will not be routed to this endpoint, however existing connections will not be affected.
  /// This property is replica specific. Disable the regional endpoint without replica is not allowed.
  final String? regionEndpointEnabled;
  /// Resource log configuration of a Microsoft.SignalRService resource.
  final ResourceLogConfigurationResponse? resourceLogConfiguration;
  /// Stop or start the resource.  Default to "False".
  /// When it's true, the data plane of the resource is shutdown.
  /// When it's false, the data plane of the resource is started.
  final String? resourceStopped;
  /// The publicly accessible port of the resource which is designed for customer server side usage.
  final int? serverPort;
  /// The list of shared private link resources.
  final List<SharedPrivateLinkResourceResponse>? sharedPrivateLinkResources;
  /// The billing information of the resource.
  final ResourceSkuResponse? sku;
  /// SocketIO settings for the resource
  final WebPubSubSocketIOSettingsResponse? socketIO;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// TLS settings for the resource
  final WebPubSubTlsSettingsResponse? tls;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// Version of the resource. Probably you need the same or higher version of client SDKs.
  final String? version;

  /// Creates a new [GetWebPubSubResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [disableAadAuth] DisableLocalAuth
  /// [disableLocalAuth] DisableLocalAuth
  /// [externalIP] The publicly accessible IP of the resource.
  /// [hostName] FQDN of the service instance.
  /// [hostNamePrefix] Deprecated.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [identity] A class represent managed identities used for request and response
  /// [kind] The kind of the service
  /// [liveTraceConfiguration] Live trace configuration of a Microsoft.SignalRService resource.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [networkACLs] Network ACLs for the resource
  /// [privateEndpointConnections] Private endpoint connections to the resource.
  /// [provisioningState] Provisioning state of the resource.
  /// [publicNetworkAccess] Enable or disable public network access. Default to "Enabled".
  /// [publicPort] The publicly accessible port of the resource which is designed for browser/client side usage.
  /// [regionEndpointEnabled] Enable or disable the regional endpoint. Default to "Enabled".
  /// [resourceLogConfiguration] Resource log configuration of a Microsoft.SignalRService resource.
  /// [resourceStopped] Stop or start the resource.  Default to "False".
  /// [serverPort] The publicly accessible port of the resource which is designed for customer server side usage.
  /// [sharedPrivateLinkResources] The list of shared private link resources.
  /// [sku] The billing information of the resource.
  /// [socketIO] SocketIO settings for the resource
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [tls] TLS settings for the resource
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [version] Version of the resource. Probably you need the same or higher version of client SDKs.
  GetWebPubSubResult({
    this.azureApiVersion,
    bool? disableAadAuth,
    bool? disableLocalAuth,
    this.externalIP,
    this.hostName,
    this.hostNamePrefix,
    this.id,
    this.identity,
    this.kind,
    this.liveTraceConfiguration,
    this.location,
    this.name,
    this.networkACLs,
    this.privateEndpointConnections,
    this.provisioningState,
    String? publicNetworkAccess,
    this.publicPort,
    String? regionEndpointEnabled,
    this.resourceLogConfiguration,
    String? resourceStopped,
    this.serverPort,
    this.sharedPrivateLinkResources,
    this.sku,
    this.socketIO,
    this.systemData,
    this.tags,
    this.tls,
    this.type,
    this.version,
  }) : disableAadAuth = disableAadAuth ?? false, disableLocalAuth = disableLocalAuth ?? false, publicNetworkAccess = publicNetworkAccess ?? 'Enabled', regionEndpointEnabled = regionEndpointEnabled ?? 'Enabled', resourceStopped = resourceStopped ?? 'false';

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'disableAadAuth': ?disableAadAuth,
      'disableLocalAuth': ?disableLocalAuth,
      'externalIP': ?externalIP,
      'hostName': ?hostName,
      'hostNamePrefix': ?hostNamePrefix,
      'id': ?id,
      'identity': ?identity?.toMap(),
      'kind': ?kind,
      'liveTraceConfiguration': ?liveTraceConfiguration?.toMap(),
      'location': ?location,
      'name': ?name,
      'networkACLs': ?networkACLs?.toMap(),
      'privateEndpointConnections': ?(() { final guardedValue = privateEndpointConnections; if (guardedValue == null) return null; return pulumi.Input.encodeList<PrivateEndpointConnectionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'provisioningState': ?provisioningState,
      'publicNetworkAccess': ?publicNetworkAccess,
      'publicPort': ?publicPort,
      'regionEndpointEnabled': ?regionEndpointEnabled,
      'resourceLogConfiguration': ?resourceLogConfiguration?.toMap(),
      'resourceStopped': ?resourceStopped,
      'serverPort': ?serverPort,
      'sharedPrivateLinkResources': ?(() { final guardedValue = sharedPrivateLinkResources; if (guardedValue == null) return null; return pulumi.Input.encodeList<SharedPrivateLinkResourceResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'sku': ?sku?.toMap(),
      'socketIO': ?socketIO?.toMap(),
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'tls': ?tls?.toMap(),
      'type': ?type,
      'version': ?version,
    };
  }

  factory GetWebPubSubResult.fromMap(Map<String, dynamic> map) {
    return GetWebPubSubResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      disableAadAuth: (() { final guardedValue = map['disableAadAuth']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      disableLocalAuth: (() { final guardedValue = map['disableLocalAuth']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      externalIP: (() { final guardedValue = map['externalIP']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hostName: (() { final guardedValue = map['hostName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hostNamePrefix: (() { final guardedValue = map['hostNamePrefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return ManagedIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      liveTraceConfiguration: (() { final guardedValue = map['liveTraceConfiguration']; if (guardedValue == null) return null; return LiveTraceConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkACLs: (() { final guardedValue = map['networkACLs']; if (guardedValue == null) return null; return WebPubSubNetworkACLsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      privateEndpointConnections: (() { final guardedValue = map['privateEndpointConnections']; if (guardedValue == null) return null; return pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(guardedValue, (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicPort: (() { final guardedValue = map['publicPort']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      regionEndpointEnabled: (() { final guardedValue = map['regionEndpointEnabled']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceLogConfiguration: (() { final guardedValue = map['resourceLogConfiguration']; if (guardedValue == null) return null; return ResourceLogConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      resourceStopped: (() { final guardedValue = map['resourceStopped']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serverPort: (() { final guardedValue = map['serverPort']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      sharedPrivateLinkResources: (() { final guardedValue = map['sharedPrivateLinkResources']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SharedPrivateLinkResourceResponse>(guardedValue, (value) => SharedPrivateLinkResourceResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return ResourceSkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      socketIO: (() { final guardedValue = map['socketIO']; if (guardedValue == null) return null; return WebPubSubSocketIOSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      tls: (() { final guardedValue = map['tls']; if (guardedValue == null) return null; return WebPubSubTlsSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
