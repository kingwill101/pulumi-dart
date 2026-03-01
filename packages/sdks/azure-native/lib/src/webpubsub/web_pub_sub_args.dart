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
  final pulumi.Input<bool>? disableAadAuth;
  /// DisableLocalAuth
  /// Enable or disable local auth with AccessKey
  /// When set as true, connection with AccessKey=xxx won't work.
  final pulumi.Input<bool>? disableLocalAuth;
  /// A class represent managed identities used for request and response
  final pulumi.Input<ManagedIdentity>? identity;
  /// The kind of the service
  final pulumi.Input<String>? kind;
  /// Live trace configuration of a Microsoft.SignalRService resource.
  final pulumi.Input<LiveTraceConfiguration>? liveTraceConfiguration;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Network ACLs for the resource
  final pulumi.Input<WebPubSubNetworkACLs>? networkACLs;
  /// Enable or disable public network access. Default to "Enabled".
  /// When it's Enabled, network ACLs still apply.
  /// When it's Disabled, public network access is always disabled no matter what you set in network ACLs.
  final pulumi.Input<String>? publicNetworkAccess;
  /// Enable or disable the regional endpoint. Default to "Enabled".
  /// When it's Disabled, new connections will not be routed to this endpoint, however existing connections will not be affected.
  /// This property is replica specific. Disable the regional endpoint without replica is not allowed.
  final pulumi.Input<String>? regionEndpointEnabled;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource log configuration of a Microsoft.SignalRService resource.
  final pulumi.Input<ResourceLogConfiguration>? resourceLogConfiguration;
  /// The name of the resource.
  final pulumi.Input<String>? resourceName;
  /// Stop or start the resource.  Default to "False".
  /// When it's true, the data plane of the resource is shutdown.
  /// When it's false, the data plane of the resource is started.
  final pulumi.Input<String>? resourceStopped;
  /// The billing information of the resource.
  final pulumi.Input<ResourceSku>? sku;
  /// SocketIO settings for the resource
  final pulumi.Input<WebPubSubSocketIOSettings>? socketIO;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// TLS settings for the resource
  final pulumi.Input<WebPubSubTlsSettings>? tls;

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
    pulumi.Output<bool>? disableAadAuth,
    pulumi.Output<bool>? disableLocalAuth,
    pulumi.Output<ManagedIdentity>? identity,
    pulumi.Output<String>? kind,
    pulumi.Output<LiveTraceConfiguration>? liveTraceConfiguration,
    pulumi.Output<String>? location,
    pulumi.Output<WebPubSubNetworkACLs>? networkACLs,
    pulumi.Output<String>? publicNetworkAccess,
    pulumi.Output<String>? regionEndpointEnabled,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<ResourceLogConfiguration>? resourceLogConfiguration,
    pulumi.Output<String>? resourceName,
    pulumi.Output<String>? resourceStopped,
    pulumi.Output<ResourceSku>? sku,
    pulumi.Output<WebPubSubSocketIOSettings>? socketIO,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<WebPubSubTlsSettings>? tls,
  }) :
      disableAadAuth = pulumi.Input.asOptionalInput<bool>(disableAadAuth),
      disableLocalAuth = pulumi.Input.asOptionalInput<bool>(disableLocalAuth),
      identity = pulumi.Input.asOptionalInput<ManagedIdentity>(identity),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      liveTraceConfiguration = pulumi.Input.asOptionalInput<LiveTraceConfiguration>(liveTraceConfiguration),
      location = pulumi.Input.asOptionalInput<String>(location),
      networkACLs = pulumi.Input.asOptionalInput<WebPubSubNetworkACLs>(networkACLs),
      publicNetworkAccess = pulumi.Input.asOptionalInput<String>(publicNetworkAccess),
      regionEndpointEnabled = pulumi.Input.asOptionalInput<String>(regionEndpointEnabled),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceLogConfiguration = pulumi.Input.asOptionalInput<ResourceLogConfiguration>(resourceLogConfiguration),
      resourceName = pulumi.Input.asOptionalInput<String>(resourceName),
      resourceStopped = pulumi.Input.asOptionalInput<String>(resourceStopped),
      sku = pulumi.Input.asOptionalInput<ResourceSku>(sku),
      socketIO = pulumi.Input.asOptionalInput<WebPubSubSocketIOSettings>(socketIO),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tls = pulumi.Input.asOptionalInput<WebPubSubTlsSettings>(tls);

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
      disableAadAuth: map['disableAadAuth'] == null ? null : pulumi.Output.create<bool>(map['disableAadAuth'] as bool),
      disableLocalAuth: map['disableLocalAuth'] == null ? null : pulumi.Output.create<bool>(map['disableLocalAuth'] as bool),
      identity: map['identity'] == null ? null : pulumi.Output.create<ManagedIdentity>(ManagedIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      liveTraceConfiguration: map['liveTraceConfiguration'] == null ? null : pulumi.Output.create<LiveTraceConfiguration>(LiveTraceConfiguration.fromMap((map['liveTraceConfiguration'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      networkACLs: map['networkACLs'] == null ? null : pulumi.Output.create<WebPubSubNetworkACLs>(WebPubSubNetworkACLs.fromMap((map['networkACLs'] as Map).cast<String, dynamic>())),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : pulumi.Output.create<String>(map['publicNetworkAccess'] as String),
      regionEndpointEnabled: map['regionEndpointEnabled'] == null ? null : pulumi.Output.create<String>(map['regionEndpointEnabled'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceLogConfiguration: map['resourceLogConfiguration'] == null ? null : pulumi.Output.create<ResourceLogConfiguration>(ResourceLogConfiguration.fromMap((map['resourceLogConfiguration'] as Map).cast<String, dynamic>())),
      resourceName: map['resourceName'] == null ? null : pulumi.Output.create<String>(map['resourceName'] as String),
      resourceStopped: map['resourceStopped'] == null ? null : pulumi.Output.create<String>(map['resourceStopped'] as String),
      sku: map['sku'] == null ? null : pulumi.Output.create<ResourceSku>(ResourceSku.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      socketIO: map['socketIO'] == null ? null : pulumi.Output.create<WebPubSubSocketIOSettings>(WebPubSubSocketIOSettings.fromMap((map['socketIO'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tls: map['tls'] == null ? null : pulumi.Output.create<WebPubSubTlsSettings>(WebPubSubTlsSettings.fromMap((map['tls'] as Map).cast<String, dynamic>())),
    );
  }
}

