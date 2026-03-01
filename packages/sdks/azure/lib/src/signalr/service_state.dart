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
    pulumi.Output<bool>? aadAuthEnabled,
    pulumi.Output<bool>? connectivityLogsEnabled,
    pulumi.Output<List<ServiceCor>>? cors,
    pulumi.Output<String>? hostname,
    pulumi.Output<bool>? httpRequestLogsEnabled,
    pulumi.Output<ServiceIdentity>? identity,
    pulumi.Output<String>? ipAddress,
    pulumi.Output<ServiceLiveTrace>? liveTrace,
    pulumi.Output<bool>? liveTraceEnabled,
    pulumi.Output<bool>? localAuthEnabled,
    pulumi.Output<String>? location,
    pulumi.Output<bool>? messagingLogsEnabled,
    pulumi.Output<String>? name,
    pulumi.Output<String>? primaryAccessKey,
    pulumi.Output<String>? primaryConnectionString,
    pulumi.Output<bool>? publicNetworkAccessEnabled,
    pulumi.Output<int>? publicPort,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? secondaryAccessKey,
    pulumi.Output<String>? secondaryConnectionString,
    pulumi.Output<int>? serverPort,
    pulumi.Output<int>? serverlessConnectionTimeoutInSeconds,
    pulumi.Output<String>? serviceMode,
    pulumi.Output<ServiceSku>? sku,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<bool>? tlsClientCertEnabled,
    pulumi.Output<List<ServiceUpstreamEndpoint>>? upstreamEndpoints,
  }) :
      aadAuthEnabled = pulumi.Input.asOptionalInput<bool>(aadAuthEnabled),
      connectivityLogsEnabled = pulumi.Input.asOptionalInput<bool>(connectivityLogsEnabled),
      cors = pulumi.Input.asOptionalInput<List<ServiceCor>>(cors),
      hostname = pulumi.Input.asOptionalInput<String>(hostname),
      httpRequestLogsEnabled = pulumi.Input.asOptionalInput<bool>(httpRequestLogsEnabled),
      identity = pulumi.Input.asOptionalInput<ServiceIdentity>(identity),
      ipAddress = pulumi.Input.asOptionalInput<String>(ipAddress),
      liveTrace = pulumi.Input.asOptionalInput<ServiceLiveTrace>(liveTrace),
      liveTraceEnabled = pulumi.Input.asOptionalInput<bool>(liveTraceEnabled),
      localAuthEnabled = pulumi.Input.asOptionalInput<bool>(localAuthEnabled),
      location = pulumi.Input.asOptionalInput<String>(location),
      messagingLogsEnabled = pulumi.Input.asOptionalInput<bool>(messagingLogsEnabled),
      name = pulumi.Input.asOptionalInput<String>(name),
      primaryAccessKey = pulumi.Input.asOptionalInput<String>(primaryAccessKey),
      primaryConnectionString = pulumi.Input.asOptionalInput<String>(primaryConnectionString),
      publicNetworkAccessEnabled = pulumi.Input.asOptionalInput<bool>(publicNetworkAccessEnabled),
      publicPort = pulumi.Input.asOptionalInput<int>(publicPort),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      secondaryAccessKey = pulumi.Input.asOptionalInput<String>(secondaryAccessKey),
      secondaryConnectionString = pulumi.Input.asOptionalInput<String>(secondaryConnectionString),
      serverPort = pulumi.Input.asOptionalInput<int>(serverPort),
      serverlessConnectionTimeoutInSeconds = pulumi.Input.asOptionalInput<int>(serverlessConnectionTimeoutInSeconds),
      serviceMode = pulumi.Input.asOptionalInput<String>(serviceMode),
      sku = pulumi.Input.asOptionalInput<ServiceSku>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tlsClientCertEnabled = pulumi.Input.asOptionalInput<bool>(tlsClientCertEnabled),
      upstreamEndpoints = pulumi.Input.asOptionalInput<List<ServiceUpstreamEndpoint>>(upstreamEndpoints);

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
      aadAuthEnabled: map['aadAuthEnabled'] == null ? null : pulumi.Output.create<bool>(map['aadAuthEnabled'] as bool),
      connectivityLogsEnabled: map['connectivityLogsEnabled'] == null ? null : pulumi.Output.create<bool>(map['connectivityLogsEnabled'] as bool),
      cors: map['cors'] == null ? null : pulumi.Output.create<List<ServiceCor>>(pulumi.Input.decodeList<ServiceCor>(map['cors'], (value) => ServiceCor.fromMap((value as Map).cast<String, dynamic>()))),
      hostname: map['hostname'] == null ? null : pulumi.Output.create<String>(map['hostname'] as String),
      httpRequestLogsEnabled: map['httpRequestLogsEnabled'] == null ? null : pulumi.Output.create<bool>(map['httpRequestLogsEnabled'] as bool),
      identity: map['identity'] == null ? null : pulumi.Output.create<ServiceIdentity>(ServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      ipAddress: map['ipAddress'] == null ? null : pulumi.Output.create<String>(map['ipAddress'] as String),
      liveTrace: map['liveTrace'] == null ? null : pulumi.Output.create<ServiceLiveTrace>(ServiceLiveTrace.fromMap((map['liveTrace'] as Map).cast<String, dynamic>())),
      liveTraceEnabled: map['liveTraceEnabled'] == null ? null : pulumi.Output.create<bool>(map['liveTraceEnabled'] as bool),
      localAuthEnabled: map['localAuthEnabled'] == null ? null : pulumi.Output.create<bool>(map['localAuthEnabled'] as bool),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      messagingLogsEnabled: map['messagingLogsEnabled'] == null ? null : pulumi.Output.create<bool>(map['messagingLogsEnabled'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      primaryAccessKey: map['primaryAccessKey'] == null ? null : pulumi.Output.create<String>(map['primaryAccessKey'] as String),
      primaryConnectionString: map['primaryConnectionString'] == null ? null : pulumi.Output.create<String>(map['primaryConnectionString'] as String),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : pulumi.Output.create<bool>(map['publicNetworkAccessEnabled'] as bool),
      publicPort: map['publicPort'] == null ? null : pulumi.Output.create<int>(map['publicPort'] as int),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      secondaryAccessKey: map['secondaryAccessKey'] == null ? null : pulumi.Output.create<String>(map['secondaryAccessKey'] as String),
      secondaryConnectionString: map['secondaryConnectionString'] == null ? null : pulumi.Output.create<String>(map['secondaryConnectionString'] as String),
      serverPort: map['serverPort'] == null ? null : pulumi.Output.create<int>(map['serverPort'] as int),
      serverlessConnectionTimeoutInSeconds: map['serverlessConnectionTimeoutInSeconds'] == null ? null : pulumi.Output.create<int>(map['serverlessConnectionTimeoutInSeconds'] as int),
      serviceMode: map['serviceMode'] == null ? null : pulumi.Output.create<String>(map['serviceMode'] as String),
      sku: map['sku'] == null ? null : pulumi.Output.create<ServiceSku>(ServiceSku.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tlsClientCertEnabled: map['tlsClientCertEnabled'] == null ? null : pulumi.Output.create<bool>(map['tlsClientCertEnabled'] as bool),
      upstreamEndpoints: map['upstreamEndpoints'] == null ? null : pulumi.Output.create<List<ServiceUpstreamEndpoint>>(pulumi.Input.decodeList<ServiceUpstreamEndpoint>(map['upstreamEndpoints'], (value) => ServiceUpstreamEndpoint.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

