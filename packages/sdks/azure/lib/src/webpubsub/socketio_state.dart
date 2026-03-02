// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'socketio_identity.dart';
import 'socketio_sku.dart';

/// Input properties used for looking up and filtering Socketio resources.
class SocketioState {
  /// Whether Azure Active Directory authentication is enabled. Defaults to `true`.
  final pulumi.Input<bool>? aadAuthEnabled;
  /// The publicly accessible IP address of the Web PubSub Service.
  final pulumi.Input<String>? externalIp;
  /// The FQDN of the Web PubSub Service.
  final pulumi.Input<String>? hostname;
  /// An `identity` block as defined below.
  final pulumi.Input<SocketioIdentity>? identity;
  /// Whether the connectivity log category for live trace is enabled. Defaults to `true`.
  final pulumi.Input<bool>? liveTraceConnectivityLogsEnabled;
  /// Whether the live trace tool is enabled. Defaults to `true`.
  final pulumi.Input<bool>? liveTraceEnabled;
  /// Whether the HTTP request log category for live trace is enabled. Defaults to `true`.
  final pulumi.Input<bool>? liveTraceHttpRequestLogsEnabled;
  /// Whether the messaging log category for live trace is enabled. Defaults to `true`.
  final pulumi.Input<bool>? liveTraceMessagingLogsEnabled;
  /// Whether local authentication using an access key is enabled. Defaults to `true`.
  final pulumi.Input<bool>? localAuthEnabled;
  /// The Azure Region where the Web PubSub Service should exist. Changing this forces a new Web PubSub Service to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Web PubSub Service. Changing this forces a new Web PubSub Service to be created.
  final pulumi.Input<String>? name;
  /// The primary access key for the Web PubSub Service.
  final pulumi.Input<String>? primaryAccessKey;
  /// The primary connection string for the Web PubSub Service.
  final pulumi.Input<String>? primaryConnectionString;
  /// Whether public network access is enabled. Defaults to `Enabled`. Possible values are `Enabled` and `Disabled`.
  ///
  /// > **Note:** `public_network_access` cannot be set to `Disabled` when `sku` is `Free_F1`.
  final pulumi.Input<String>? publicNetworkAccess;
  /// The publicly accessible port for client-side usage of the Web PubSub Service.
  final pulumi.Input<int>? publicPort;
  /// The name of the Resource Group where the Web PubSub Service should exist. Changing this forces a new Web PubSub Service to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The secondary access key for the Web PubSub Service.
  final pulumi.Input<String>? secondaryAccessKey;
  /// The secondary connection string for the Web PubSub Service.
  final pulumi.Input<String>? secondaryConnectionString;
  /// The publicly accessible port for server-side usage of the Web PubSub Service.
  final pulumi.Input<int>? serverPort;
  /// The service mode of this Web PubSub Service. Defaults to `Default`. Possible values are `Default` and `Serverless`.
  final pulumi.Input<String>? serviceMode;
  /// One or more `sku` blocks as defined below.
  final pulumi.Input<SocketioSku>? sku;
  /// A mapping of tags which should be assigned to the Web PubSub Service.
  final pulumi.Input<Map<String, String>>? tags;
  /// Whether the service should request a client certificate during a TLS handshake. Defaults to `false`.
  ///
  /// > **Note:** `tls_client_cert_enabled` cannot be set to `true` when `sku` is `Free_F1`.
  final pulumi.Input<bool>? tlsClientCertEnabled;

  /// Creates a new [SocketioState].
  /// [aadAuthEnabled] Whether Azure Active Directory authentication is enabled. Defaults to `true`.
  /// [externalIp] The publicly accessible IP address of the Web PubSub Service.
  /// [hostname] The FQDN of the Web PubSub Service.
  /// [identity] An `identity` block as defined below.
  /// [liveTraceConnectivityLogsEnabled] Whether the connectivity log category for live trace is enabled. Defaults to `true`.
  /// [liveTraceEnabled] Whether the live trace tool is enabled. Defaults to `true`.
  /// [liveTraceHttpRequestLogsEnabled] Whether the HTTP request log category for live trace is enabled. Defaults to `true`.
  /// [liveTraceMessagingLogsEnabled] Whether the messaging log category for live trace is enabled. Defaults to `true`.
  /// [localAuthEnabled] Whether local authentication using an access key is enabled. Defaults to `true`.
  /// [location] The Azure Region where the Web PubSub Service should exist. Changing this forces a new Web PubSub Service to be created.
  /// [name] The name which should be used for this Web PubSub Service. Changing this forces a new Web PubSub Service to be created.
  /// [primaryAccessKey] The primary access key for the Web PubSub Service.
  /// [primaryConnectionString] The primary connection string for the Web PubSub Service.
  /// [publicNetworkAccess] Whether public network access is enabled. Defaults to `Enabled`. Possible values are `Enabled` and `Disabled`.
  /// [publicPort] The publicly accessible port for client-side usage of the Web PubSub Service.
  /// [resourceGroupName] The name of the Resource Group where the Web PubSub Service should exist. Changing this forces a new Web PubSub Service to be created.
  /// [secondaryAccessKey] The secondary access key for the Web PubSub Service.
  /// [secondaryConnectionString] The secondary connection string for the Web PubSub Service.
  /// [serverPort] The publicly accessible port for server-side usage of the Web PubSub Service.
  /// [serviceMode] The service mode of this Web PubSub Service. Defaults to `Default`. Possible values are `Default` and `Serverless`.
  /// [sku] One or more `sku` blocks as defined below.
  /// [tags] A mapping of tags which should be assigned to the Web PubSub Service.
  /// [tlsClientCertEnabled] Whether the service should request a client certificate during a TLS handshake. Defaults to `false`.
  SocketioState({
    this.aadAuthEnabled,
    this.externalIp,
    this.hostname,
    this.identity,
    this.liveTraceConnectivityLogsEnabled,
    this.liveTraceEnabled,
    this.liveTraceHttpRequestLogsEnabled,
    this.liveTraceMessagingLogsEnabled,
    this.localAuthEnabled,
    this.location,
    this.name,
    this.primaryAccessKey,
    this.primaryConnectionString,
    this.publicNetworkAccess,
    this.publicPort,
    this.resourceGroupName,
    this.secondaryAccessKey,
    this.secondaryConnectionString,
    this.serverPort,
    this.serviceMode,
    this.sku,
    this.tags,
    this.tlsClientCertEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aadAuthEnabled': ?aadAuthEnabled,
      'externalIp': ?externalIp,
      'hostname': ?hostname,
      'identity': ?pulumi.Input.mapOptionalInputValue<SocketioIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'liveTraceConnectivityLogsEnabled': ?liveTraceConnectivityLogsEnabled,
      'liveTraceEnabled': ?liveTraceEnabled,
      'liveTraceHttpRequestLogsEnabled': ?liveTraceHttpRequestLogsEnabled,
      'liveTraceMessagingLogsEnabled': ?liveTraceMessagingLogsEnabled,
      'localAuthEnabled': ?localAuthEnabled,
      'location': ?location,
      'name': ?name,
      'primaryAccessKey': ?primaryAccessKey,
      'primaryConnectionString': ?primaryConnectionString,
      'publicNetworkAccess': ?publicNetworkAccess,
      'publicPort': ?publicPort,
      'resourceGroupName': ?resourceGroupName,
      'secondaryAccessKey': ?secondaryAccessKey,
      'secondaryConnectionString': ?secondaryConnectionString,
      'serverPort': ?serverPort,
      'serviceMode': ?serviceMode,
      'sku': ?pulumi.Input.mapOptionalInputValue<SocketioSku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
      'tlsClientCertEnabled': ?tlsClientCertEnabled,
    };
  }

  factory SocketioState.fromMap(Map<String, dynamic> map) {
    return SocketioState(
      aadAuthEnabled: map['aadAuthEnabled'] == null ? null : (map['aadAuthEnabled'] as bool).input(),
      externalIp: map['externalIp'] == null ? null : (map['externalIp'] as String).input(),
      hostname: map['hostname'] == null ? null : (map['hostname'] as String).input(),
      identity: map['identity'] == null ? null : (SocketioIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      liveTraceConnectivityLogsEnabled: map['liveTraceConnectivityLogsEnabled'] == null ? null : (map['liveTraceConnectivityLogsEnabled'] as bool).input(),
      liveTraceEnabled: map['liveTraceEnabled'] == null ? null : (map['liveTraceEnabled'] as bool).input(),
      liveTraceHttpRequestLogsEnabled: map['liveTraceHttpRequestLogsEnabled'] == null ? null : (map['liveTraceHttpRequestLogsEnabled'] as bool).input(),
      liveTraceMessagingLogsEnabled: map['liveTraceMessagingLogsEnabled'] == null ? null : (map['liveTraceMessagingLogsEnabled'] as bool).input(),
      localAuthEnabled: map['localAuthEnabled'] == null ? null : (map['localAuthEnabled'] as bool).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      primaryAccessKey: map['primaryAccessKey'] == null ? null : (map['primaryAccessKey'] as String).input(),
      primaryConnectionString: map['primaryConnectionString'] == null ? null : (map['primaryConnectionString'] as String).input(),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : (map['publicNetworkAccess'] as String).input(),
      publicPort: map['publicPort'] == null ? null : (map['publicPort'] as int).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
      secondaryAccessKey: map['secondaryAccessKey'] == null ? null : (map['secondaryAccessKey'] as String).input(),
      secondaryConnectionString: map['secondaryConnectionString'] == null ? null : (map['secondaryConnectionString'] as String).input(),
      serverPort: map['serverPort'] == null ? null : (map['serverPort'] as int).input(),
      serviceMode: map['serviceMode'] == null ? null : (map['serviceMode'] as String).input(),
      sku: map['sku'] == null ? null : (SocketioSku.fromMap((map['sku'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tlsClientCertEnabled: map['tlsClientCertEnabled'] == null ? null : (map['tlsClientCertEnabled'] as bool).input(),
    );
  }
}

