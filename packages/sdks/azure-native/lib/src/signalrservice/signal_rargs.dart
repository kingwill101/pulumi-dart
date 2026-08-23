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
  const SignalRArgs({
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
      cors: (() { final guardedValue = map['cors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SignalRCorsSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      disableAadAuth: (() { final guardedValue = map['disableAadAuth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      disableLocalAuth: (() { final guardedValue = map['disableLocalAuth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      features: (() { final guardedValue = map['features']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SignalRFeature>(guardedValue, (value) => SignalRFeature.fromMap((value as Map).cast<String, dynamic>()))); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      liveTraceConfiguration: (() { final guardedValue = map['liveTraceConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LiveTraceConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkACLs: (() { final guardedValue = map['networkACLs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SignalRNetworkACLs.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regionEndpointEnabled: (() { final guardedValue = map['regionEndpointEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceLogConfiguration: (() { final guardedValue = map['resourceLogConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceLogConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceName: (() { final guardedValue = map['resourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceStopped: (() { final guardedValue = map['resourceStopped']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverless: (() { final guardedValue = map['serverless']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServerlessSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceSku.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tls: (() { final guardedValue = map['tls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SignalRTlsSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      upstream: (() { final guardedValue = map['upstream']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServerlessUpstreamSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
