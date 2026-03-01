// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'live_trace_configuration.dart';
import 'managed_identity.dart';
import 'resource_log_configuration.dart';
import 'resource_sku.dart';
import 'serverless_settings.dart';
import 'serverless_upstream_settings.dart';
import 'signal_rcors_settings.dart';
import 'signal_rfeature.dart';
import 'signal_rnetwork_acls.dart';
import 'signal_rtls_settings.dart';

/// {@template pulumi_signalrservice_signal_rargs_doc}
/// The set of arguments for SignalR.
/// {@endtemplate}
/// {@macro pulumi_signalrservice_signal_rargs_doc}
class SignalRArgs {
  /// Cross-Origin Resource Sharing (CORS) settings.
  final pulumi.Input<SignalRCorsSettings>? cors;
  /// DisableLocalAuth
  /// Enable or disable aad auth
  /// When set as true, connection with AuthType=aad won't work.
  final pulumi.Input<bool>? disableAadAuth;
  /// DisableLocalAuth
  /// Enable or disable local auth with AccessKey
  /// When set as true, connection with AccessKey=xxx won't work.
  final pulumi.Input<bool>? disableLocalAuth;
  /// List of the featureFlags.
  ///
  /// FeatureFlags that are not included in the parameters for the update operation will not be modified.
  /// And the response will only include featureFlags that are explicitly set.
  /// When a featureFlag is not explicitly set, its globally default value will be used
  /// But keep in mind, the default value doesn't mean "false". It varies in terms of different FeatureFlags.
  final pulumi.Input<List<SignalRFeature>>? features;
  /// A class represent managed identities used for request and response
  final pulumi.Input<ManagedIdentity>? identity;
  /// The kind of the service
  final pulumi.Input<String>? kind;
  /// Live trace configuration of a Microsoft.SignalRService resource.
  final pulumi.Input<LiveTraceConfiguration>? liveTraceConfiguration;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Network ACLs for the resource
  final pulumi.Input<SignalRNetworkACLs>? networkACLs;
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
  /// Serverless settings.
  final pulumi.Input<ServerlessSettings>? serverless;
  /// The billing information of the resource.
  final pulumi.Input<ResourceSku>? sku;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// TLS settings for the resource
  final pulumi.Input<SignalRTlsSettings>? tls;
  /// The settings for the Upstream when the service is in server-less mode.
  final pulumi.Input<ServerlessUpstreamSettings>? upstream;

  /// Creates a new [SignalRArgs].
  /// [cors] Cross-Origin Resource Sharing (CORS) settings.
  /// [disableAadAuth] DisableLocalAuth
  /// [disableLocalAuth] DisableLocalAuth
  /// [features] List of the featureFlags.
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
  /// [serverless] Serverless settings.
  /// [sku] The billing information of the resource.
  /// [tags] Resource tags.
  /// [tls] TLS settings for the resource
  /// [upstream] The settings for the Upstream when the service is in server-less mode.
  SignalRArgs({
    pulumi.Output<SignalRCorsSettings>? cors,
    pulumi.Output<bool>? disableAadAuth,
    pulumi.Output<bool>? disableLocalAuth,
    pulumi.Output<List<SignalRFeature>>? features,
    pulumi.Output<ManagedIdentity>? identity,
    pulumi.Output<String>? kind,
    pulumi.Output<LiveTraceConfiguration>? liveTraceConfiguration,
    pulumi.Output<String>? location,
    pulumi.Output<SignalRNetworkACLs>? networkACLs,
    pulumi.Output<String>? publicNetworkAccess,
    pulumi.Output<String>? regionEndpointEnabled,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<ResourceLogConfiguration>? resourceLogConfiguration,
    pulumi.Output<String>? resourceName,
    pulumi.Output<String>? resourceStopped,
    pulumi.Output<ServerlessSettings>? serverless,
    pulumi.Output<ResourceSku>? sku,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<SignalRTlsSettings>? tls,
    pulumi.Output<ServerlessUpstreamSettings>? upstream,
  }) :
      cors = pulumi.Input.asOptionalInput<SignalRCorsSettings>(cors),
      disableAadAuth = pulumi.Input.asOptionalInput<bool>(disableAadAuth),
      disableLocalAuth = pulumi.Input.asOptionalInput<bool>(disableLocalAuth),
      features = pulumi.Input.asOptionalInput<List<SignalRFeature>>(features),
      identity = pulumi.Input.asOptionalInput<ManagedIdentity>(identity),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      liveTraceConfiguration = pulumi.Input.asOptionalInput<LiveTraceConfiguration>(liveTraceConfiguration),
      location = pulumi.Input.asOptionalInput<String>(location),
      networkACLs = pulumi.Input.asOptionalInput<SignalRNetworkACLs>(networkACLs),
      publicNetworkAccess = pulumi.Input.asOptionalInput<String>(publicNetworkAccess),
      regionEndpointEnabled = pulumi.Input.asOptionalInput<String>(regionEndpointEnabled),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceLogConfiguration = pulumi.Input.asOptionalInput<ResourceLogConfiguration>(resourceLogConfiguration),
      resourceName = pulumi.Input.asOptionalInput<String>(resourceName),
      resourceStopped = pulumi.Input.asOptionalInput<String>(resourceStopped),
      serverless = pulumi.Input.asOptionalInput<ServerlessSettings>(serverless),
      sku = pulumi.Input.asOptionalInput<ResourceSku>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tls = pulumi.Input.asOptionalInput<SignalRTlsSettings>(tls),
      upstream = pulumi.Input.asOptionalInput<ServerlessUpstreamSettings>(upstream);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cors': ?pulumi.Input.mapOptionalInputValue<SignalRCorsSettings, Map<String, dynamic>>(cors, (value) => value.toMap()),
      'disableAadAuth': ?disableAadAuth,
      'disableLocalAuth': ?disableLocalAuth,
      'features': ?pulumi.Input.mapOptionalInputValue<List<SignalRFeature>, List<Map<String, dynamic>>>(features, (value) => pulumi.Input.encodeList<SignalRFeature, Map<String, dynamic>>(value, (value) => value.toMap())),
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'kind': ?kind,
      'liveTraceConfiguration': ?pulumi.Input.mapOptionalInputValue<LiveTraceConfiguration, Map<String, dynamic>>(liveTraceConfiguration, (value) => value.toMap()),
      'location': ?location,
      'networkACLs': ?pulumi.Input.mapOptionalInputValue<SignalRNetworkACLs, Map<String, dynamic>>(networkACLs, (value) => value.toMap()),
      'publicNetworkAccess': ?publicNetworkAccess,
      'regionEndpointEnabled': ?regionEndpointEnabled,
      'resourceGroupName': resourceGroupName,
      'resourceLogConfiguration': ?pulumi.Input.mapOptionalInputValue<ResourceLogConfiguration, Map<String, dynamic>>(resourceLogConfiguration, (value) => value.toMap()),
      'resourceName': ?resourceName,
      'resourceStopped': ?resourceStopped,
      'serverless': ?pulumi.Input.mapOptionalInputValue<ServerlessSettings, Map<String, dynamic>>(serverless, (value) => value.toMap()),
      'sku': ?pulumi.Input.mapOptionalInputValue<ResourceSku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
      'tls': ?pulumi.Input.mapOptionalInputValue<SignalRTlsSettings, Map<String, dynamic>>(tls, (value) => value.toMap()),
      'upstream': ?pulumi.Input.mapOptionalInputValue<ServerlessUpstreamSettings, Map<String, dynamic>>(upstream, (value) => value.toMap()),
    };
  }

  factory SignalRArgs.fromMap(Map<String, dynamic> map) {
    return SignalRArgs(
      cors: map['cors'] == null ? null : pulumi.Output.create<SignalRCorsSettings>(SignalRCorsSettings.fromMap((map['cors'] as Map).cast<String, dynamic>())),
      disableAadAuth: map['disableAadAuth'] == null ? null : pulumi.Output.create<bool>(map['disableAadAuth'] as bool),
      disableLocalAuth: map['disableLocalAuth'] == null ? null : pulumi.Output.create<bool>(map['disableLocalAuth'] as bool),
      features: map['features'] == null ? null : pulumi.Output.create<List<SignalRFeature>>(pulumi.Input.decodeList<SignalRFeature>(map['features'], (value) => SignalRFeature.fromMap((value as Map).cast<String, dynamic>()))),
      identity: map['identity'] == null ? null : pulumi.Output.create<ManagedIdentity>(ManagedIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      liveTraceConfiguration: map['liveTraceConfiguration'] == null ? null : pulumi.Output.create<LiveTraceConfiguration>(LiveTraceConfiguration.fromMap((map['liveTraceConfiguration'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      networkACLs: map['networkACLs'] == null ? null : pulumi.Output.create<SignalRNetworkACLs>(SignalRNetworkACLs.fromMap((map['networkACLs'] as Map).cast<String, dynamic>())),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : pulumi.Output.create<String>(map['publicNetworkAccess'] as String),
      regionEndpointEnabled: map['regionEndpointEnabled'] == null ? null : pulumi.Output.create<String>(map['regionEndpointEnabled'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceLogConfiguration: map['resourceLogConfiguration'] == null ? null : pulumi.Output.create<ResourceLogConfiguration>(ResourceLogConfiguration.fromMap((map['resourceLogConfiguration'] as Map).cast<String, dynamic>())),
      resourceName: map['resourceName'] == null ? null : pulumi.Output.create<String>(map['resourceName'] as String),
      resourceStopped: map['resourceStopped'] == null ? null : pulumi.Output.create<String>(map['resourceStopped'] as String),
      serverless: map['serverless'] == null ? null : pulumi.Output.create<ServerlessSettings>(ServerlessSettings.fromMap((map['serverless'] as Map).cast<String, dynamic>())),
      sku: map['sku'] == null ? null : pulumi.Output.create<ResourceSku>(ResourceSku.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tls: map['tls'] == null ? null : pulumi.Output.create<SignalRTlsSettings>(SignalRTlsSettings.fromMap((map['tls'] as Map).cast<String, dynamic>())),
      upstream: map['upstream'] == null ? null : pulumi.Output.create<ServerlessUpstreamSettings>(ServerlessUpstreamSettings.fromMap((map['upstream'] as Map).cast<String, dynamic>())),
    );
  }
}

