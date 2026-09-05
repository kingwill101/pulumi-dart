// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'socketio_identity.dart';
import 'socketio_sku.dart';

/// Input properties used for looking up and filtering Socketio resources.
class SocketioState {
  /// Whether Azure Active Directory authentication is enabled. Defaults to `true`.
  final pulumi.Input<bool?>? aadAuthEnabled;
  /// The publicly accessible IP address of the Web PubSub Service.
  final pulumi.Input<String?>? externalIp;
  /// The FQDN of the Web PubSub Service.
  final pulumi.Input<String?>? hostname;
  /// An `identity` block as defined below.
  final pulumi.Input<SocketioIdentity?>? identity;
  /// Whether the connectivity log category for live trace is enabled. Defaults to `true`.
  final pulumi.Input<bool?>? liveTraceConnectivityLogsEnabled;
  /// Whether the live trace tool is enabled. Defaults to `true`.
  final pulumi.Input<bool?>? liveTraceEnabled;
  /// Whether the HTTP request log category for live trace is enabled. Defaults to `true`.
  final pulumi.Input<bool?>? liveTraceHttpRequestLogsEnabled;
  /// Whether the messaging log category for live trace is enabled. Defaults to `true`.
  final pulumi.Input<bool?>? liveTraceMessagingLogsEnabled;
  /// Whether local authentication using an access key is enabled. Defaults to `true`.
  final pulumi.Input<bool?>? localAuthEnabled;
  /// The Azure Region where the Web PubSub Service should exist. Changing this forces a new Web PubSub Service to be created.
  final pulumi.Input<String?>? location;
  /// The name which should be used for this Web PubSub Service. Changing this forces a new Web PubSub Service to be created.
  final pulumi.Input<String?>? name;
  /// The primary access key for the Web PubSub Service.
  final pulumi.Input<String?>? primaryAccessKey;
  /// The primary connection string for the Web PubSub Service.
  final pulumi.Input<String?>? primaryConnectionString;
  /// Whether public network access is enabled. Defaults to `Enabled`. Possible values are `Enabled` and `Disabled`.
  ///
  /// &gt; **Note:** `publicNetworkAccess` cannot be set to `Disabled` when `sku` is `Free_F1`.
  final pulumi.Input<String?>? publicNetworkAccess;
  /// The publicly accessible port for client-side usage of the Web PubSub Service.
  final pulumi.Input<int?>? publicPort;
  /// The name of the Resource Group where the Web PubSub Service should exist. Changing this forces a new Web PubSub Service to be created.
  final pulumi.Input<String?>? resourceGroupName;
  /// The secondary access key for the Web PubSub Service.
  final pulumi.Input<String?>? secondaryAccessKey;
  /// The secondary connection string for the Web PubSub Service.
  final pulumi.Input<String?>? secondaryConnectionString;
  /// The publicly accessible port for server-side usage of the Web PubSub Service.
  final pulumi.Input<int?>? serverPort;
  /// The service mode of this Web PubSub Service. Defaults to `Default`. Possible values are `Default` and `Serverless`.
  final pulumi.Input<String?>? serviceMode;
  /// One or more `sku` blocks as defined below.
  final pulumi.Input<SocketioSku?>? sku;
  /// A mapping of tags which should be assigned to the Web PubSub Service.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Whether the service should request a client certificate during a TLS handshake. Defaults to `false`.
  ///
  /// &gt; **Note:** `tlsClientCertEnabled` cannot be set to `true` when `sku` is `Free_F1`.
  final pulumi.Input<bool?>? tlsClientCertEnabled;

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
  const SocketioState({
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
      aadAuthEnabled: (() { final guardedValue = map['aadAuthEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      externalIp: (() { final guardedValue = map['externalIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SocketioIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      liveTraceConnectivityLogsEnabled: (() { final guardedValue = map['liveTraceConnectivityLogsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      liveTraceEnabled: (() { final guardedValue = map['liveTraceEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      liveTraceHttpRequestLogsEnabled: (() { final guardedValue = map['liveTraceHttpRequestLogsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      liveTraceMessagingLogsEnabled: (() { final guardedValue = map['liveTraceMessagingLogsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      localAuthEnabled: (() { final guardedValue = map['localAuthEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryAccessKey: (() { final guardedValue = map['primaryAccessKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryConnectionString: (() { final guardedValue = map['primaryConnectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicPort: (() { final guardedValue = map['publicPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secondaryAccessKey: (() { final guardedValue = map['secondaryAccessKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secondaryConnectionString: (() { final guardedValue = map['secondaryConnectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverPort: (() { final guardedValue = map['serverPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      serviceMode: (() { final guardedValue = map['serviceMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SocketioSku.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tlsClientCertEnabled: (() { final guardedValue = map['tlsClientCertEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
