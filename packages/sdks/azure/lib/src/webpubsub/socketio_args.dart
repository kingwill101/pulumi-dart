// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'socketio_identity.dart';
import 'socketio_sku.dart';

/// {@template pulumi_webpubsub_socketio_socketio_args_doc}
/// The set of arguments for Socketio.
/// {@endtemplate}
/// {@macro pulumi_webpubsub_socketio_socketio_args_doc}
class SocketioArgs {
  /// Whether Azure Active Directory authentication is enabled. Defaults to `true`.
  final pulumi.Input<bool>? aadAuthEnabled;
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
  /// Whether public network access is enabled. Defaults to `Enabled`. Possible values are `Enabled` and `Disabled`.
  ///
  /// > **Note:** `public_network_access` cannot be set to `Disabled` when `sku` is `Free_F1`.
  final pulumi.Input<String>? publicNetworkAccess;
  /// The name of the Resource Group where the Web PubSub Service should exist. Changing this forces a new Web PubSub Service to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The service mode of this Web PubSub Service. Defaults to `Default`. Possible values are `Default` and `Serverless`.
  final pulumi.Input<String>? serviceMode;
  /// One or more `sku` blocks as defined below.
  final pulumi.Input<SocketioSku> sku;
  /// A mapping of tags which should be assigned to the Web PubSub Service.
  final pulumi.Input<Map<String, String>>? tags;
  /// Whether the service should request a client certificate during a TLS handshake. Defaults to `false`.
  ///
  /// > **Note:** `tls_client_cert_enabled` cannot be set to `true` when `sku` is `Free_F1`.
  final pulumi.Input<bool>? tlsClientCertEnabled;

  /// Creates a new [SocketioArgs].
  /// [aadAuthEnabled] Whether Azure Active Directory authentication is enabled. Defaults to `true`.
  /// [identity] An `identity` block as defined below.
  /// [liveTraceConnectivityLogsEnabled] Whether the connectivity log category for live trace is enabled. Defaults to `true`.
  /// [liveTraceEnabled] Whether the live trace tool is enabled. Defaults to `true`.
  /// [liveTraceHttpRequestLogsEnabled] Whether the HTTP request log category for live trace is enabled. Defaults to `true`.
  /// [liveTraceMessagingLogsEnabled] Whether the messaging log category for live trace is enabled. Defaults to `true`.
  /// [localAuthEnabled] Whether local authentication using an access key is enabled. Defaults to `true`.
  /// [location] The Azure Region where the Web PubSub Service should exist. Changing this forces a new Web PubSub Service to be created.
  /// [name] The name which should be used for this Web PubSub Service. Changing this forces a new Web PubSub Service to be created.
  /// [publicNetworkAccess] Whether public network access is enabled. Defaults to `Enabled`. Possible values are `Enabled` and `Disabled`.
  /// [resourceGroupName] The name of the Resource Group where the Web PubSub Service should exist. Changing this forces a new Web PubSub Service to be created.
  /// [serviceMode] The service mode of this Web PubSub Service. Defaults to `Default`. Possible values are `Default` and `Serverless`.
  /// [sku] One or more `sku` blocks as defined below.
  /// [tags] A mapping of tags which should be assigned to the Web PubSub Service.
  /// [tlsClientCertEnabled] Whether the service should request a client certificate during a TLS handshake. Defaults to `false`.
  SocketioArgs({
    pulumi.Output<bool>? aadAuthEnabled,
    pulumi.Output<SocketioIdentity>? identity,
    pulumi.Output<bool>? liveTraceConnectivityLogsEnabled,
    pulumi.Output<bool>? liveTraceEnabled,
    pulumi.Output<bool>? liveTraceHttpRequestLogsEnabled,
    pulumi.Output<bool>? liveTraceMessagingLogsEnabled,
    pulumi.Output<bool>? localAuthEnabled,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? publicNetworkAccess,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? serviceMode,
    required pulumi.Output<SocketioSku> sku,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<bool>? tlsClientCertEnabled,
  }) :
      aadAuthEnabled = pulumi.Input.asOptionalInput<bool>(aadAuthEnabled),
      identity = pulumi.Input.asOptionalInput<SocketioIdentity>(identity),
      liveTraceConnectivityLogsEnabled = pulumi.Input.asOptionalInput<bool>(liveTraceConnectivityLogsEnabled),
      liveTraceEnabled = pulumi.Input.asOptionalInput<bool>(liveTraceEnabled),
      liveTraceHttpRequestLogsEnabled = pulumi.Input.asOptionalInput<bool>(liveTraceHttpRequestLogsEnabled),
      liveTraceMessagingLogsEnabled = pulumi.Input.asOptionalInput<bool>(liveTraceMessagingLogsEnabled),
      localAuthEnabled = pulumi.Input.asOptionalInput<bool>(localAuthEnabled),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      publicNetworkAccess = pulumi.Input.asOptionalInput<String>(publicNetworkAccess),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceMode = pulumi.Input.asOptionalInput<String>(serviceMode),
      sku = pulumi.Input.asInput<SocketioSku>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tlsClientCertEnabled = pulumi.Input.asOptionalInput<bool>(tlsClientCertEnabled);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aadAuthEnabled': ?aadAuthEnabled,
      'identity': ?pulumi.Input.mapOptionalInputValue<SocketioIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'liveTraceConnectivityLogsEnabled': ?liveTraceConnectivityLogsEnabled,
      'liveTraceEnabled': ?liveTraceEnabled,
      'liveTraceHttpRequestLogsEnabled': ?liveTraceHttpRequestLogsEnabled,
      'liveTraceMessagingLogsEnabled': ?liveTraceMessagingLogsEnabled,
      'localAuthEnabled': ?localAuthEnabled,
      'location': ?location,
      'name': ?name,
      'publicNetworkAccess': ?publicNetworkAccess,
      'resourceGroupName': resourceGroupName,
      'serviceMode': ?serviceMode,
      'sku': pulumi.Input.mapInputValue<SocketioSku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
      'tlsClientCertEnabled': ?tlsClientCertEnabled,
    };
  }

  factory SocketioArgs.fromMap(Map<String, dynamic> map) {
    return SocketioArgs(
      aadAuthEnabled: map['aadAuthEnabled'] == null ? null : pulumi.Output.create<bool>(map['aadAuthEnabled'] as bool),
      identity: map['identity'] == null ? null : pulumi.Output.create<SocketioIdentity>(SocketioIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      liveTraceConnectivityLogsEnabled: map['liveTraceConnectivityLogsEnabled'] == null ? null : pulumi.Output.create<bool>(map['liveTraceConnectivityLogsEnabled'] as bool),
      liveTraceEnabled: map['liveTraceEnabled'] == null ? null : pulumi.Output.create<bool>(map['liveTraceEnabled'] as bool),
      liveTraceHttpRequestLogsEnabled: map['liveTraceHttpRequestLogsEnabled'] == null ? null : pulumi.Output.create<bool>(map['liveTraceHttpRequestLogsEnabled'] as bool),
      liveTraceMessagingLogsEnabled: map['liveTraceMessagingLogsEnabled'] == null ? null : pulumi.Output.create<bool>(map['liveTraceMessagingLogsEnabled'] as bool),
      localAuthEnabled: map['localAuthEnabled'] == null ? null : pulumi.Output.create<bool>(map['localAuthEnabled'] as bool),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : pulumi.Output.create<String>(map['publicNetworkAccess'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceMode: map['serviceMode'] == null ? null : pulumi.Output.create<String>(map['serviceMode'] as String),
      sku: pulumi.Output.create<SocketioSku>(SocketioSku.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tlsClientCertEnabled: map['tlsClientCertEnabled'] == null ? null : pulumi.Output.create<bool>(map['tlsClientCertEnabled'] as bool),
    );
  }
}

