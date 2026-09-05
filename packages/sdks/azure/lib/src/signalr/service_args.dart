// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_cor.dart';
import 'service_identity.dart';
import 'service_live_trace.dart';
import 'service_sku.dart';
import 'service_upstream_endpoint.dart';

/// {@template pulumi_signalr_service_service_args_doc}
/// The set of arguments for Service.
/// {@endtemplate}
/// {@macro pulumi_signalr_service_service_args_doc}
class ServiceArgs {
  /// Whether to enable AAD auth? Defaults to `true`.
  final pulumi.Input<bool?>? aadAuthEnabled;
  /// Specifies if Connectivity Logs are enabled or not. Defaults to `false`.
  final pulumi.Input<bool?>? connectivityLogsEnabled;
  /// A `cors` block as documented below.
  final pulumi.Input<List<ServiceCor>?>? cors;
  /// Specifies if Http Request Logs are enabled or not. Defaults to `false`.
  final pulumi.Input<bool?>? httpRequestLogsEnabled;
  /// An `identity` block as defined below.
  final pulumi.Input<ServiceIdentity?>? identity;
  /// A `liveTrace` block as defined below.
  final pulumi.Input<ServiceLiveTrace?>? liveTrace;
  final pulumi.Input<bool?>? liveTraceEnabled;
  /// Whether to enable local auth? Defaults to `true`.
  final pulumi.Input<bool?>? localAuthEnabled;
  /// Specifies the supported Azure location where the SignalR service exists. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? location;
  /// Specifies if Messaging Logs are enabled or not. Defaults to `false`.
  final pulumi.Input<bool?>? messagingLogsEnabled;
  /// The name of the SignalR service. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// Whether to enable public network access? Defaults to `true`.
  ///
  /// &gt; **Note:** `publicNetworkAccessEnabled` cannot be set to `false` in `Free` sku tier.
  final pulumi.Input<bool?>? publicNetworkAccessEnabled;
  /// The name of the resource group in which to create the SignalR service. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// Specifies the client connection timeout. Defaults to `30`.
  final pulumi.Input<int?>? serverlessConnectionTimeoutInSeconds;
  /// Specifies the service mode. Possible values are `Classic`, `Default` and `Serverless`. Defaults to `Default`.
  final pulumi.Input<String?>? serviceMode;
  /// A `sku` block as documented below.
  final pulumi.Input<ServiceSku> sku;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Whether to request client certificate during TLS handshake? Defaults to `false`.
  ///
  /// &gt; **Note:** `tlsClientCertEnabled` cannot be set to `true` in `Free` sku tier.
  final pulumi.Input<bool?>? tlsClientCertEnabled;
  /// An `upstreamEndpoint` block as documented below. Using this block requires the SignalR service to be Serverless. When creating multiple blocks they will be processed in the order they are defined in.
  final pulumi.Input<List<ServiceUpstreamEndpoint>?>? upstreamEndpoints;

  /// Creates a new [ServiceArgs].
  /// [aadAuthEnabled] Whether to enable AAD auth? Defaults to `true`.
  /// [connectivityLogsEnabled] Specifies if Connectivity Logs are enabled or not. Defaults to `false`.
  /// [cors] A `cors` block as documented below.
  /// [httpRequestLogsEnabled] Specifies if Http Request Logs are enabled or not. Defaults to `false`.
  /// [identity] An `identity` block as defined below.
  /// [liveTrace] A `liveTrace` block as defined below.
  /// [liveTraceEnabled] Optional.
  /// [localAuthEnabled] Whether to enable local auth? Defaults to `true`.
  /// [location] Specifies the supported Azure location where the SignalR service exists. Changing this forces a new resource to be created.
  /// [messagingLogsEnabled] Specifies if Messaging Logs are enabled or not. Defaults to `false`.
  /// [name] The name of the SignalR service. Changing this forces a new resource to be created.
  /// [publicNetworkAccessEnabled] Whether to enable public network access? Defaults to `true`.
  /// [resourceGroupName] The name of the resource group in which to create the SignalR service. Changing this forces a new resource to be created.
  /// [serverlessConnectionTimeoutInSeconds] Specifies the client connection timeout. Defaults to `30`.
  /// [serviceMode] Specifies the service mode. Possible values are `Classic`, `Default` and `Serverless`. Defaults to `Default`.
  /// [sku] A `sku` block as documented below.
  /// [tags] A mapping of tags to assign to the resource.
  /// [tlsClientCertEnabled] Whether to request client certificate during TLS handshake? Defaults to `false`.
  /// [upstreamEndpoints] An `upstreamEndpoint` block as documented below. Using this block requires the SignalR service to be Serverless. When creating multiple blocks they will be processed in the order they are defined in.
  const ServiceArgs({
    this.aadAuthEnabled,
    this.connectivityLogsEnabled,
    this.cors,
    this.httpRequestLogsEnabled,
    this.identity,
    this.liveTrace,
    this.liveTraceEnabled,
    this.localAuthEnabled,
    this.location,
    this.messagingLogsEnabled,
    this.name,
    this.publicNetworkAccessEnabled,
    required this.resourceGroupName,
    this.serverlessConnectionTimeoutInSeconds,
    this.serviceMode,
    required this.sku,
    this.tags,
    this.tlsClientCertEnabled,
    this.upstreamEndpoints,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aadAuthEnabled': ?aadAuthEnabled,
      'connectivityLogsEnabled': ?connectivityLogsEnabled,
      'cors': ?pulumi.Input.mapOptionalInputValue<List<ServiceCor>, List<Map<String, dynamic>>>(cors, (value) => pulumi.Input.encodeList<ServiceCor, Map<String, dynamic>>(value, (value) => value.toMap())),
      'httpRequestLogsEnabled': ?httpRequestLogsEnabled,
      'identity': ?pulumi.Input.mapOptionalInputValue<ServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'liveTrace': ?pulumi.Input.mapOptionalInputValue<ServiceLiveTrace, Map<String, dynamic>>(liveTrace, (value) => value.toMap()),
      'liveTraceEnabled': ?liveTraceEnabled,
      'localAuthEnabled': ?localAuthEnabled,
      'location': ?location,
      'messagingLogsEnabled': ?messagingLogsEnabled,
      'name': ?name,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'resourceGroupName': resourceGroupName,
      'serverlessConnectionTimeoutInSeconds': ?serverlessConnectionTimeoutInSeconds,
      'serviceMode': ?serviceMode,
      'sku': pulumi.Input.mapInputValue<ServiceSku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
      'tlsClientCertEnabled': ?tlsClientCertEnabled,
      'upstreamEndpoints': ?pulumi.Input.mapOptionalInputValue<List<ServiceUpstreamEndpoint>, List<Map<String, dynamic>>>(upstreamEndpoints, (value) => pulumi.Input.encodeList<ServiceUpstreamEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ServiceArgs.fromMap(Map<String, dynamic> map) {
    return ServiceArgs(
      aadAuthEnabled: (() { final guardedValue = map['aadAuthEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      connectivityLogsEnabled: (() { final guardedValue = map['connectivityLogsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      cors: (() { final guardedValue = map['cors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServiceCor>(guardedValue, (value) => ServiceCor.fromMap((value as Map).cast<String, dynamic>()))); })(),
      httpRequestLogsEnabled: (() { final guardedValue = map['httpRequestLogsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      liveTrace: (() { final guardedValue = map['liveTrace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceLiveTrace.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      liveTraceEnabled: (() { final guardedValue = map['liveTraceEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      localAuthEnabled: (() { final guardedValue = map['localAuthEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      messagingLogsEnabled: (() { final guardedValue = map['messagingLogsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicNetworkAccessEnabled: (() { final guardedValue = map['publicNetworkAccessEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serverlessConnectionTimeoutInSeconds: (() { final guardedValue = map['serverlessConnectionTimeoutInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      serviceMode: (() { final guardedValue = map['serviceMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sku: pulumi.Input.fromValue(ServiceSku.fromMap((map['sku']! as Map).cast<String, dynamic>())),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tlsClientCertEnabled: (() { final guardedValue = map['tlsClientCertEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      upstreamEndpoints: (() { final guardedValue = map['upstreamEndpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServiceUpstreamEndpoint>(guardedValue, (value) => ServiceUpstreamEndpoint.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
