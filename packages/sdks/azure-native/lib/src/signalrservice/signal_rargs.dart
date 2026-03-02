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
    this.cors,
    this.disableAadAuth,
    this.disableLocalAuth,
    this.features,
    this.identity,
    this.kind,
    this.liveTraceConfiguration,
    this.location,
    this.networkACLs,
    this.publicNetworkAccess,
    this.regionEndpointEnabled,
    required this.resourceGroupName,
    this.resourceLogConfiguration,
    this.resourceName,
    this.resourceStopped,
    this.serverless,
    this.sku,
    this.tags,
    this.tls,
    this.upstream,
  });

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
      cors: map['cors'] == null ? null : (SignalRCorsSettings.fromMap((map['cors']! as Map).cast<String, dynamic>())).input(),
      disableAadAuth: map['disableAadAuth'] == null ? null : (map['disableAadAuth']! as bool).input(),
      disableLocalAuth: map['disableLocalAuth'] == null ? null : (map['disableLocalAuth']! as bool).input(),
      features: map['features'] == null ? null : (pulumi.Input.decodeList<SignalRFeature>(map['features']!, (value) => SignalRFeature.fromMap((value as Map).cast<String, dynamic>()))).input(),
      identity: map['identity'] == null ? null : (ManagedIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      liveTraceConfiguration: map['liveTraceConfiguration'] == null ? null : (LiveTraceConfiguration.fromMap((map['liveTraceConfiguration']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      networkACLs: map['networkACLs'] == null ? null : (SignalRNetworkACLs.fromMap((map['networkACLs']! as Map).cast<String, dynamic>())).input(),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : (map['publicNetworkAccess']! as String).input(),
      regionEndpointEnabled: map['regionEndpointEnabled'] == null ? null : (map['regionEndpointEnabled']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      resourceLogConfiguration: map['resourceLogConfiguration'] == null ? null : (ResourceLogConfiguration.fromMap((map['resourceLogConfiguration']! as Map).cast<String, dynamic>())).input(),
      resourceName: map['resourceName'] == null ? null : (map['resourceName']! as String).input(),
      resourceStopped: map['resourceStopped'] == null ? null : (map['resourceStopped']! as String).input(),
      serverless: map['serverless'] == null ? null : (ServerlessSettings.fromMap((map['serverless']! as Map).cast<String, dynamic>())).input(),
      sku: map['sku'] == null ? null : (ResourceSku.fromMap((map['sku']! as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      tls: map['tls'] == null ? null : (SignalRTlsSettings.fromMap((map['tls']! as Map).cast<String, dynamic>())).input(),
      upstream: map['upstream'] == null ? null : (ServerlessUpstreamSettings.fromMap((map['upstream']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

