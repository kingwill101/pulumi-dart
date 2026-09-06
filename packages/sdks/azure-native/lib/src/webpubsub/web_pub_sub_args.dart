// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'live_trace_configuration.dart';
import 'managed_identity.dart';
import 'resource_log_configuration.dart';
import 'resource_sku.dart';
import 'web_pub_sub_network_acls.dart';
import 'web_pub_sub_socket_iosettings.dart';
import 'web_pub_sub_tls_settings.dart';

/// {@template pulumi_webpubsub_web_pub_sub_args_doc}
/// The set of arguments for WebPubSub.
/// {@endtemplate}
/// {@macro pulumi_webpubsub_web_pub_sub_args_doc}
class WebPubSubArgs {
  /// DisableLocalAuth
  /// Enable or disable aad auth
  /// When set as true, connection with AuthType=aad won't work.
  final pulumi.Input<bool?>? disableAadAuth;
  /// DisableLocalAuth
  /// Enable or disable local auth with AccessKey
  /// When set as true, connection with AccessKey=xxx won't work.
  final pulumi.Input<bool?>? disableLocalAuth;
  /// A class represent managed identities used for request and response
  final pulumi.Input<ManagedIdentity?>? identity;
  /// The kind of the service
  final pulumi.Input<dynamic>? kind;
  /// Live trace configuration of a Microsoft.SignalRService resource.
  final pulumi.Input<LiveTraceConfiguration?>? liveTraceConfiguration;
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// Network ACLs for the resource
  final pulumi.Input<WebPubSubNetworkACLs?>? networkACLs;
  /// Enable or disable public network access. Default to "Enabled".
  /// When it's Enabled, network ACLs still apply.
  /// When it's Disabled, public network access is always disabled no matter what you set in network ACLs.
  final pulumi.Input<String?>? publicNetworkAccess;
  /// Enable or disable the regional endpoint. Default to "Enabled".
  /// When it's Disabled, new connections will not be routed to this endpoint, however existing connections will not be affected.
  /// This property is replica specific. Disable the regional endpoint without replica is not allowed.
  final pulumi.Input<String?>? regionEndpointEnabled;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource log configuration of a Microsoft.SignalRService resource.
  final pulumi.Input<ResourceLogConfiguration?>? resourceLogConfiguration;
  /// The name of the resource.
  final pulumi.Input<String?>? resourceName;
  /// Stop or start the resource.  Default to "False".
  /// When it's true, the data plane of the resource is shutdown.
  /// When it's false, the data plane of the resource is started.
  final pulumi.Input<String?>? resourceStopped;
  /// The billing information of the resource.
  final pulumi.Input<ResourceSku?>? sku;
  /// SocketIO settings for the resource
  final pulumi.Input<WebPubSubSocketIOSettings?>? socketIO;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;
  /// TLS settings for the resource
  final pulumi.Input<WebPubSubTlsSettings?>? tls;

  /// Creates a new [WebPubSubArgs].
  /// [disableAadAuth] DisableLocalAuth
  /// [disableLocalAuth] DisableLocalAuth
  /// [identity] A class represent managed identities used for request and response
  /// [kind] The kind of the service
  /// [liveTraceConfiguration] Live trace configuration of a Microsoft.SignalRService resource.
  /// [location] The geo-location where the resource lives
  /// [networkACLs] Network ACLs for the resource
  /// [publicNetworkAccess] Enable or disable public network access. Default to "Enabled".
  /// [regionEndpointEnabled] Enable or disable the regional endpoint. Default to "Enabled".
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceLogConfiguration] Resource log configuration of a Microsoft.SignalRService resource.
  /// [resourceName] The name of the resource.
  /// [resourceStopped] Stop or start the resource.  Default to "False".
  /// [sku] The billing information of the resource.
  /// [socketIO] SocketIO settings for the resource
  /// [tags] Resource tags.
  /// [tls] TLS settings for the resource
  WebPubSubArgs({
    pulumi.Input<bool?>? disableAadAuth,
    pulumi.Input<bool?>? disableLocalAuth,
    this.identity,
    this.kind,
    this.liveTraceConfiguration,
    this.location,
    this.networkACLs,
    pulumi.Input<String?>? publicNetworkAccess,
    pulumi.Input<String?>? regionEndpointEnabled,
    required this.resourceGroupName,
    this.resourceLogConfiguration,
    this.resourceName,
    pulumi.Input<String?>? resourceStopped,
    this.sku,
    this.socketIO,
    this.tags,
    this.tls,
  }) : disableAadAuth = disableAadAuth ?? pulumi.Input.fromValue(false), disableLocalAuth = disableLocalAuth ?? pulumi.Input.fromValue(false), publicNetworkAccess = publicNetworkAccess ?? pulumi.Input.fromValue('Enabled'), regionEndpointEnabled = regionEndpointEnabled ?? pulumi.Input.fromValue('Enabled'), resourceStopped = resourceStopped ?? pulumi.Input.fromValue('false');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableAadAuth': ?disableAadAuth,
      'disableLocalAuth': ?disableLocalAuth,
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'kind': ?kind,
      'liveTraceConfiguration': ?pulumi.Input.mapOptionalInputValue<LiveTraceConfiguration, Map<String, dynamic>>(liveTraceConfiguration, (value) => value.toMap()),
      'location': ?location,
      'networkACLs': ?pulumi.Input.mapOptionalInputValue<WebPubSubNetworkACLs, Map<String, dynamic>>(networkACLs, (value) => value.toMap()),
      'publicNetworkAccess': ?publicNetworkAccess,
      'regionEndpointEnabled': ?regionEndpointEnabled,
      'resourceGroupName': resourceGroupName,
      'resourceLogConfiguration': ?pulumi.Input.mapOptionalInputValue<ResourceLogConfiguration, Map<String, dynamic>>(resourceLogConfiguration, (value) => value.toMap()),
      'resourceName': ?resourceName,
      'resourceStopped': ?resourceStopped,
      'sku': ?pulumi.Input.mapOptionalInputValue<ResourceSku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'socketIO': ?pulumi.Input.mapOptionalInputValue<WebPubSubSocketIOSettings, Map<String, dynamic>>(socketIO, (value) => value.toMap()),
      'tags': ?tags,
      'tls': ?pulumi.Input.mapOptionalInputValue<WebPubSubTlsSettings, Map<String, dynamic>>(tls, (value) => value.toMap()),
    };
  }

  factory WebPubSubArgs.fromMap(Map<String, dynamic> map) {
    return WebPubSubArgs(
      disableAadAuth: (() { final guardedValue = map['disableAadAuth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      disableLocalAuth: (() { final guardedValue = map['disableLocalAuth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      liveTraceConfiguration: (() { final guardedValue = map['liveTraceConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LiveTraceConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkACLs: (() { final guardedValue = map['networkACLs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebPubSubNetworkACLs.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regionEndpointEnabled: (() { final guardedValue = map['regionEndpointEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceLogConfiguration: (() { final guardedValue = map['resourceLogConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceLogConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceName: (() { final guardedValue = map['resourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceStopped: (() { final guardedValue = map['resourceStopped']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceSku.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      socketIO: (() { final guardedValue = map['socketIO']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebPubSubSocketIOSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tls: (() { final guardedValue = map['tls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebPubSubTlsSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
