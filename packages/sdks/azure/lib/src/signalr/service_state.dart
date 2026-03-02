// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_cor.dart';
import 'service_identity.dart';
import 'service_live_trace.dart';
import 'service_sku.dart';
import 'service_upstream_endpoint.dart';

/// Input properties used for looking up and filtering Service resources.
class ServiceState {
  /// Whether to enable AAD auth? Defaults to `true`.
  final pulumi.Input<bool>? aadAuthEnabled;
  /// Specifies if Connectivity Logs are enabled or not. Defaults to `false`.
  final pulumi.Input<bool>? connectivityLogsEnabled;
  /// A `cors` block as documented below.
  final pulumi.Input<List<ServiceCor>>? cors;
  /// The FQDN of the SignalR service.
  final pulumi.Input<String>? hostname;
  /// Specifies if Http Request Logs are enabled or not. Defaults to `false`.
  final pulumi.Input<bool>? httpRequestLogsEnabled;
  /// An `identity` block as defined below.
  final pulumi.Input<ServiceIdentity>? identity;
  /// The publicly accessible IP of the SignalR service.
  final pulumi.Input<String>? ipAddress;
  /// A `live_trace` block as defined below.
  final pulumi.Input<ServiceLiveTrace>? liveTrace;
  final pulumi.Input<bool>? liveTraceEnabled;
  /// Whether to enable local auth? Defaults to `true`.
  final pulumi.Input<bool>? localAuthEnabled;
  /// Specifies the supported Azure location where the SignalR service exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies if Messaging Logs are enabled or not. Defaults to `false`.
  final pulumi.Input<bool>? messagingLogsEnabled;
  /// The name of the SignalR service. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The primary access key for the SignalR service.
  final pulumi.Input<String>? primaryAccessKey;
  /// The primary connection string for the SignalR service.
  final pulumi.Input<String>? primaryConnectionString;
  /// Whether to enable public network access? Defaults to `true`.
  ///
  /// > **Note:** `public_network_access_enabled` cannot be set to `false` in `Free` sku tier.
  final pulumi.Input<bool>? publicNetworkAccessEnabled;
  /// The publicly accessible port of the SignalR service which is designed for browser/client use.
  final pulumi.Input<int>? publicPort;
  /// The name of the resource group in which to create the SignalR service. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The secondary access key for the SignalR service.
  final pulumi.Input<String>? secondaryAccessKey;
  /// The secondary connection string for the SignalR service.
  final pulumi.Input<String>? secondaryConnectionString;
  /// The publicly accessible port of the SignalR service which is designed for customer server side use.
  final pulumi.Input<int>? serverPort;
  /// Specifies the client connection timeout. Defaults to `30`.
  final pulumi.Input<int>? serverlessConnectionTimeoutInSeconds;
  /// Specifies the service mode. Possible values are `Classic`, `Default` and `Serverless`. Defaults to `Default`.
  final pulumi.Input<String>? serviceMode;
  /// A `sku` block as documented below.
  final pulumi.Input<ServiceSku>? sku;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// Whether to request client certificate during TLS handshake? Defaults to `false`.
  ///
  /// > **Note:** `tls_client_cert_enabled` cannot be set to `true` in `Free` sku tier.
  final pulumi.Input<bool>? tlsClientCertEnabled;
  /// An `upstream_endpoint` block as documented below. Using this block requires the SignalR service to be Serverless. When creating multiple blocks they will be processed in the order they are defined in.
  final pulumi.Input<List<ServiceUpstreamEndpoint>>? upstreamEndpoints;

  /// Creates a new [ServiceState].
  /// [aadAuthEnabled] Whether to enable AAD auth? Defaults to `true`.
  /// [connectivityLogsEnabled] Specifies if Connectivity Logs are enabled or not. Defaults to `false`.
  /// [cors] A `cors` block as documented below.
  /// [hostname] The FQDN of the SignalR service.
  /// [httpRequestLogsEnabled] Specifies if Http Request Logs are enabled or not. Defaults to `false`.
  /// [identity] An `identity` block as defined below.
  /// [ipAddress] The publicly accessible IP of the SignalR service.
  /// [liveTrace] A `live_trace` block as defined below.
  /// [liveTraceEnabled] Optional.
  /// [localAuthEnabled] Whether to enable local auth? Defaults to `true`.
  /// [location] Specifies the supported Azure location where the SignalR service exists. Changing this forces a new resource to be created.
  /// [messagingLogsEnabled] Specifies if Messaging Logs are enabled or not. Defaults to `false`.
  /// [name] The name of the SignalR service. Changing this forces a new resource to be created.
  /// [primaryAccessKey] The primary access key for the SignalR service.
  /// [primaryConnectionString] The primary connection string for the SignalR service.
  /// [publicNetworkAccessEnabled] Whether to enable public network access? Defaults to `true`.
  /// [publicPort] The publicly accessible port of the SignalR service which is designed for browser/client use.
  /// [resourceGroupName] The name of the resource group in which to create the SignalR service. Changing this forces a new resource to be created.
  /// [secondaryAccessKey] The secondary access key for the SignalR service.
  /// [secondaryConnectionString] The secondary connection string for the SignalR service.
  /// [serverPort] The publicly accessible port of the SignalR service which is designed for customer server side use.
  /// [serverlessConnectionTimeoutInSeconds] Specifies the client connection timeout. Defaults to `30`.
  /// [serviceMode] Specifies the service mode. Possible values are `Classic`, `Default` and `Serverless`. Defaults to `Default`.
  /// [sku] A `sku` block as documented below.
  /// [tags] A mapping of tags to assign to the resource.
  /// [tlsClientCertEnabled] Whether to request client certificate during TLS handshake? Defaults to `false`.
  /// [upstreamEndpoints] An `upstream_endpoint` block as documented below. Using this block requires the SignalR service to be Serverless. When creating multiple blocks they will be processed in the order they are defined in.
  ServiceState({
    this.aadAuthEnabled,
    this.connectivityLogsEnabled,
    this.cors,
    this.hostname,
    this.httpRequestLogsEnabled,
    this.identity,
    this.ipAddress,
    this.liveTrace,
    this.liveTraceEnabled,
    this.localAuthEnabled,
    this.location,
    this.messagingLogsEnabled,
    this.name,
    this.primaryAccessKey,
    this.primaryConnectionString,
    this.publicNetworkAccessEnabled,
    this.publicPort,
    this.resourceGroupName,
    this.secondaryAccessKey,
    this.secondaryConnectionString,
    this.serverPort,
    this.serverlessConnectionTimeoutInSeconds,
    this.serviceMode,
    this.sku,
    this.tags,
    this.tlsClientCertEnabled,
    this.upstreamEndpoints,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aadAuthEnabled': ?aadAuthEnabled,
      'connectivityLogsEnabled': ?connectivityLogsEnabled,
      'cors': ?pulumi.Input.mapOptionalInputValue<List<ServiceCor>, List<Map<String, dynamic>>>(cors, (value) => pulumi.Input.encodeList<ServiceCor, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hostname': ?hostname,
      'httpRequestLogsEnabled': ?httpRequestLogsEnabled,
      'identity': ?pulumi.Input.mapOptionalInputValue<ServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'ipAddress': ?ipAddress,
      'liveTrace': ?pulumi.Input.mapOptionalInputValue<ServiceLiveTrace, Map<String, dynamic>>(liveTrace, (value) => value.toMap()),
      'liveTraceEnabled': ?liveTraceEnabled,
      'localAuthEnabled': ?localAuthEnabled,
      'location': ?location,
      'messagingLogsEnabled': ?messagingLogsEnabled,
      'name': ?name,
      'primaryAccessKey': ?primaryAccessKey,
      'primaryConnectionString': ?primaryConnectionString,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'publicPort': ?publicPort,
      'resourceGroupName': ?resourceGroupName,
      'secondaryAccessKey': ?secondaryAccessKey,
      'secondaryConnectionString': ?secondaryConnectionString,
      'serverPort': ?serverPort,
      'serverlessConnectionTimeoutInSeconds': ?serverlessConnectionTimeoutInSeconds,
      'serviceMode': ?serviceMode,
      'sku': ?pulumi.Input.mapOptionalInputValue<ServiceSku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
      'tlsClientCertEnabled': ?tlsClientCertEnabled,
      'upstreamEndpoints': ?pulumi.Input.mapOptionalInputValue<List<ServiceUpstreamEndpoint>, List<Map<String, dynamic>>>(upstreamEndpoints, (value) => pulumi.Input.encodeList<ServiceUpstreamEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ServiceState.fromMap(Map<String, dynamic> map) {
    return ServiceState(
      aadAuthEnabled: map['aadAuthEnabled'] == null ? null : (map['aadAuthEnabled'] as bool).input(),
      connectivityLogsEnabled: map['connectivityLogsEnabled'] == null ? null : (map['connectivityLogsEnabled'] as bool).input(),
      cors: map['cors'] == null ? null : (pulumi.Input.decodeList<ServiceCor>(map['cors'], (value) => ServiceCor.fromMap((value as Map).cast<String, dynamic>()))).input(),
      hostname: map['hostname'] == null ? null : (map['hostname'] as String).input(),
      httpRequestLogsEnabled: map['httpRequestLogsEnabled'] == null ? null : (map['httpRequestLogsEnabled'] as bool).input(),
      identity: map['identity'] == null ? null : (ServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      ipAddress: map['ipAddress'] == null ? null : (map['ipAddress'] as String).input(),
      liveTrace: map['liveTrace'] == null ? null : (ServiceLiveTrace.fromMap((map['liveTrace'] as Map).cast<String, dynamic>())).input(),
      liveTraceEnabled: map['liveTraceEnabled'] == null ? null : (map['liveTraceEnabled'] as bool).input(),
      localAuthEnabled: map['localAuthEnabled'] == null ? null : (map['localAuthEnabled'] as bool).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      messagingLogsEnabled: map['messagingLogsEnabled'] == null ? null : (map['messagingLogsEnabled'] as bool).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      primaryAccessKey: map['primaryAccessKey'] == null ? null : (map['primaryAccessKey'] as String).input(),
      primaryConnectionString: map['primaryConnectionString'] == null ? null : (map['primaryConnectionString'] as String).input(),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : (map['publicNetworkAccessEnabled'] as bool).input(),
      publicPort: map['publicPort'] == null ? null : (map['publicPort'] as int).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
      secondaryAccessKey: map['secondaryAccessKey'] == null ? null : (map['secondaryAccessKey'] as String).input(),
      secondaryConnectionString: map['secondaryConnectionString'] == null ? null : (map['secondaryConnectionString'] as String).input(),
      serverPort: map['serverPort'] == null ? null : (map['serverPort'] as int).input(),
      serverlessConnectionTimeoutInSeconds: map['serverlessConnectionTimeoutInSeconds'] == null ? null : (map['serverlessConnectionTimeoutInSeconds'] as int).input(),
      serviceMode: map['serviceMode'] == null ? null : (map['serviceMode'] as String).input(),
      sku: map['sku'] == null ? null : (ServiceSku.fromMap((map['sku'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tlsClientCertEnabled: map['tlsClientCertEnabled'] == null ? null : (map['tlsClientCertEnabled'] as bool).input(),
      upstreamEndpoints: map['upstreamEndpoints'] == null ? null : (pulumi.Input.decodeList<ServiceUpstreamEndpoint>(map['upstreamEndpoints'], (value) => ServiceUpstreamEndpoint.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

