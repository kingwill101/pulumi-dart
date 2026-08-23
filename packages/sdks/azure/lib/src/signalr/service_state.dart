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
  /// A `liveTrace` block as defined below.
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
  /// &gt; **Note:** `publicNetworkAccessEnabled` cannot be set to `false` in `Free` sku tier.
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
  /// &gt; **Note:** `tlsClientCertEnabled` cannot be set to `true` in `Free` sku tier.
  final pulumi.Input<bool>? tlsClientCertEnabled;
  /// An `upstreamEndpoint` block as documented below. Using this block requires the SignalR service to be Serverless. When creating multiple blocks they will be processed in the order they are defined in.
  final pulumi.Input<List<ServiceUpstreamEndpoint>>? upstreamEndpoints;

  /// Creates a new [ServiceState].
  /// [aadAuthEnabled] Whether to enable AAD auth? Defaults to `true`.
  /// [connectivityLogsEnabled] Specifies if Connectivity Logs are enabled or not. Defaults to `false`.
  /// [cors] A `cors` block as documented below.
  /// [hostname] The FQDN of the SignalR service.
  /// [httpRequestLogsEnabled] Specifies if Http Request Logs are enabled or not. Defaults to `false`.
  /// [identity] An `identity` block as defined below.
  /// [ipAddress] The publicly accessible IP of the SignalR service.
  /// [liveTrace] A `liveTrace` block as defined below.
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
  /// [upstreamEndpoints] An `upstreamEndpoint` block as documented below. Using this block requires the SignalR service to be Serverless. When creating multiple blocks they will be processed in the order they are defined in.
  const ServiceState({
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
      aadAuthEnabled: (() { final guardedValue = map['aadAuthEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      connectivityLogsEnabled: (() { final guardedValue = map['connectivityLogsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      cors: (() { final guardedValue = map['cors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServiceCor>(guardedValue, (value) => ServiceCor.fromMap((value as Map).cast<String, dynamic>()))); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      httpRequestLogsEnabled: (() { final guardedValue = map['httpRequestLogsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      liveTrace: (() { final guardedValue = map['liveTrace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceLiveTrace.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      liveTraceEnabled: (() { final guardedValue = map['liveTraceEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      localAuthEnabled: (() { final guardedValue = map['localAuthEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      messagingLogsEnabled: (() { final guardedValue = map['messagingLogsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryAccessKey: (() { final guardedValue = map['primaryAccessKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryConnectionString: (() { final guardedValue = map['primaryConnectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicNetworkAccessEnabled: (() { final guardedValue = map['publicNetworkAccessEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      publicPort: (() { final guardedValue = map['publicPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secondaryAccessKey: (() { final guardedValue = map['secondaryAccessKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secondaryConnectionString: (() { final guardedValue = map['secondaryConnectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverPort: (() { final guardedValue = map['serverPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      serverlessConnectionTimeoutInSeconds: (() { final guardedValue = map['serverlessConnectionTimeoutInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      serviceMode: (() { final guardedValue = map['serviceMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceSku.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tlsClientCertEnabled: (() { final guardedValue = map['tlsClientCertEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      upstreamEndpoints: (() { final guardedValue = map['upstreamEndpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServiceUpstreamEndpoint>(guardedValue, (value) => ServiceUpstreamEndpoint.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
