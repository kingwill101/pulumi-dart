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
  /// &gt; **Note:** `public_network_access` cannot be set to `Disabled` when `sku` is `Free_F1`.
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
  /// &gt; **Note:** `tls_client_cert_enabled` cannot be set to `true` when `sku` is `Free_F1`.
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
  const SocketioArgs({
    this.aadAuthEnabled,
    this.identity,
    this.liveTraceConnectivityLogsEnabled,
    this.liveTraceEnabled,
    this.liveTraceHttpRequestLogsEnabled,
    this.liveTraceMessagingLogsEnabled,
    this.localAuthEnabled,
    this.location,
    this.name,
    this.publicNetworkAccess,
    required this.resourceGroupName,
    this.serviceMode,
    required this.sku,
    this.tags,
    this.tlsClientCertEnabled,
  });

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
      aadAuthEnabled: (() { final guardedValue = map['aadAuthEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SocketioIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      liveTraceConnectivityLogsEnabled: (() { final guardedValue = map['liveTraceConnectivityLogsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      liveTraceEnabled: (() { final guardedValue = map['liveTraceEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      liveTraceHttpRequestLogsEnabled: (() { final guardedValue = map['liveTraceHttpRequestLogsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      liveTraceMessagingLogsEnabled: (() { final guardedValue = map['liveTraceMessagingLogsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      localAuthEnabled: (() { final guardedValue = map['localAuthEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serviceMode: (() { final guardedValue = map['serviceMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sku: pulumi.Input.fromValue(SocketioSku.fromMap((map['sku']! as Map).cast<String, dynamic>())),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tlsClientCertEnabled: (() { final guardedValue = map['tlsClientCertEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

