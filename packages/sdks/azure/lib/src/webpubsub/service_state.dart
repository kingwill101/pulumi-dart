// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_identity.dart';
import 'service_live_trace.dart';

/// Input properties used for looking up and filtering Service resources.
class ServiceState {
  /// Whether to enable AAD auth? Defaults to `true`.
  final pulumi.Input<bool>? aadAuthEnabled;
  /// Specifies the number of units associated with this Web PubSub resource. Valid values are `1`, `2`, `3`, `4`, `5`, `6`, `7`, `8`, `9`, `10`, `20`, `30`, `40`, `50`, `60`, `70`, `80`, `90`, `100`, `200`, `300`, `400`, `500`, `600`, `700`, `800`, `900` and `1000`.
  ///
  /// > **Note:** The valid capacity range for sku `Free_F1` is `1`, for sku `Premium_P2` is from `100` to `1000`, and from `1` to `100` for sku `Standard_S1` and `Premium_P1`.
  final pulumi.Input<int>? capacity;
  /// The publicly accessible IP of the Web PubSub service.
  final pulumi.Input<String>? externalIp;
  /// The FQDN of the Web PubSub service.
  final pulumi.Input<String>? hostname;
  /// An `identity` block as defined below.
  final pulumi.Input<ServiceIdentity>? identity;
  /// A `live_trace` block as defined below.
  final pulumi.Input<ServiceLiveTrace>? liveTrace;
  /// Whether to enable local auth? Defaults to `true`.
  final pulumi.Input<bool>? localAuthEnabled;
  /// Specifies the supported Azure location where the Web PubSub service exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the Web PubSub service. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The primary access key for the Web PubSub service.
  final pulumi.Input<String>? primaryAccessKey;
  /// The primary connection string for the Web PubSub service.
  final pulumi.Input<String>? primaryConnectionString;
  /// Whether to enable public network access? Defaults to `true`.
  final pulumi.Input<bool>? publicNetworkAccessEnabled;
  /// The publicly accessible port of the Web PubSub service which is designed for browser/client use.
  final pulumi.Input<int>? publicPort;
  /// The name of the resource group in which to create the Web PubSub service. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The secondary access key for the Web PubSub service.
  final pulumi.Input<String>? secondaryAccessKey;
  /// The secondary connection string for the Web PubSub service.
  final pulumi.Input<String>? secondaryConnectionString;
  /// The publicly accessible port of the Web PubSub service which is designed for customer server side use.
  final pulumi.Input<int>? serverPort;
  /// Specifies which SKU to use. Possible values are `Free_F1`, `Standard_S1`, `Premium_P1` and `Premium_P2`.
  final pulumi.Input<String>? sku;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// Whether to request client certificate during TLS handshake? Defaults to `false`.
  final pulumi.Input<bool>? tlsClientCertEnabled;
  final pulumi.Input<String>? version;

  /// Creates a new [ServiceState].
  /// [aadAuthEnabled] Whether to enable AAD auth? Defaults to `true`.
  /// [capacity] Specifies the number of units associated with this Web PubSub resource. Valid values are `1`, `2`, `3`, `4`, `5`, `6`, `7`, `8`, `9`, `10`, `20`, `30`, `40`, `50`, `60`, `70`, `80`, `90`, `100`, `200`, `300`, `400`, `500`, `600`, `700`, `800`, `900` and `1000`.
  /// [externalIp] The publicly accessible IP of the Web PubSub service.
  /// [hostname] The FQDN of the Web PubSub service.
  /// [identity] An `identity` block as defined below.
  /// [liveTrace] A `live_trace` block as defined below.
  /// [localAuthEnabled] Whether to enable local auth? Defaults to `true`.
  /// [location] Specifies the supported Azure location where the Web PubSub service exists. Changing this forces a new resource to be created.
  /// [name] The name of the Web PubSub service. Changing this forces a new resource to be created.
  /// [primaryAccessKey] The primary access key for the Web PubSub service.
  /// [primaryConnectionString] The primary connection string for the Web PubSub service.
  /// [publicNetworkAccessEnabled] Whether to enable public network access? Defaults to `true`.
  /// [publicPort] The publicly accessible port of the Web PubSub service which is designed for browser/client use.
  /// [resourceGroupName] The name of the resource group in which to create the Web PubSub service. Changing this forces a new resource to be created.
  /// [secondaryAccessKey] The secondary access key for the Web PubSub service.
  /// [secondaryConnectionString] The secondary connection string for the Web PubSub service.
  /// [serverPort] The publicly accessible port of the Web PubSub service which is designed for customer server side use.
  /// [sku] Specifies which SKU to use. Possible values are `Free_F1`, `Standard_S1`, `Premium_P1` and `Premium_P2`.
  /// [tags] A mapping of tags to assign to the resource.
  /// [tlsClientCertEnabled] Whether to request client certificate during TLS handshake? Defaults to `false`.
  /// [version] Optional.
  ServiceState({
    pulumi.Output<bool>? aadAuthEnabled,
    pulumi.Output<int>? capacity,
    pulumi.Output<String>? externalIp,
    pulumi.Output<String>? hostname,
    pulumi.Output<ServiceIdentity>? identity,
    pulumi.Output<ServiceLiveTrace>? liveTrace,
    pulumi.Output<bool>? localAuthEnabled,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? primaryAccessKey,
    pulumi.Output<String>? primaryConnectionString,
    pulumi.Output<bool>? publicNetworkAccessEnabled,
    pulumi.Output<int>? publicPort,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? secondaryAccessKey,
    pulumi.Output<String>? secondaryConnectionString,
    pulumi.Output<int>? serverPort,
    pulumi.Output<String>? sku,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<bool>? tlsClientCertEnabled,
    pulumi.Output<String>? version,
  }) :
      aadAuthEnabled = pulumi.Input.asOptionalInput<bool>(aadAuthEnabled),
      capacity = pulumi.Input.asOptionalInput<int>(capacity),
      externalIp = pulumi.Input.asOptionalInput<String>(externalIp),
      hostname = pulumi.Input.asOptionalInput<String>(hostname),
      identity = pulumi.Input.asOptionalInput<ServiceIdentity>(identity),
      liveTrace = pulumi.Input.asOptionalInput<ServiceLiveTrace>(liveTrace),
      localAuthEnabled = pulumi.Input.asOptionalInput<bool>(localAuthEnabled),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      primaryAccessKey = pulumi.Input.asOptionalInput<String>(primaryAccessKey),
      primaryConnectionString = pulumi.Input.asOptionalInput<String>(primaryConnectionString),
      publicNetworkAccessEnabled = pulumi.Input.asOptionalInput<bool>(publicNetworkAccessEnabled),
      publicPort = pulumi.Input.asOptionalInput<int>(publicPort),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      secondaryAccessKey = pulumi.Input.asOptionalInput<String>(secondaryAccessKey),
      secondaryConnectionString = pulumi.Input.asOptionalInput<String>(secondaryConnectionString),
      serverPort = pulumi.Input.asOptionalInput<int>(serverPort),
      sku = pulumi.Input.asOptionalInput<String>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tlsClientCertEnabled = pulumi.Input.asOptionalInput<bool>(tlsClientCertEnabled),
      version = pulumi.Input.asOptionalInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aadAuthEnabled': ?aadAuthEnabled,
      'capacity': ?capacity,
      'externalIp': ?externalIp,
      'hostname': ?hostname,
      'identity': ?pulumi.Input.mapOptionalInputValue<ServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'liveTrace': ?pulumi.Input.mapOptionalInputValue<ServiceLiveTrace, Map<String, dynamic>>(liveTrace, (value) => value.toMap()),
      'localAuthEnabled': ?localAuthEnabled,
      'location': ?location,
      'name': ?name,
      'primaryAccessKey': ?primaryAccessKey,
      'primaryConnectionString': ?primaryConnectionString,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'publicPort': ?publicPort,
      'resourceGroupName': ?resourceGroupName,
      'secondaryAccessKey': ?secondaryAccessKey,
      'secondaryConnectionString': ?secondaryConnectionString,
      'serverPort': ?serverPort,
      'sku': ?sku,
      'tags': ?tags,
      'tlsClientCertEnabled': ?tlsClientCertEnabled,
      'version': ?version,
    };
  }

  factory ServiceState.fromMap(Map<String, dynamic> map) {
    return ServiceState(
      aadAuthEnabled: map['aadAuthEnabled'] == null ? null : pulumi.Output.create<bool>(map['aadAuthEnabled'] as bool),
      capacity: map['capacity'] == null ? null : pulumi.Output.create<int>(map['capacity'] as int),
      externalIp: map['externalIp'] == null ? null : pulumi.Output.create<String>(map['externalIp'] as String),
      hostname: map['hostname'] == null ? null : pulumi.Output.create<String>(map['hostname'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<ServiceIdentity>(ServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      liveTrace: map['liveTrace'] == null ? null : pulumi.Output.create<ServiceLiveTrace>(ServiceLiveTrace.fromMap((map['liveTrace'] as Map).cast<String, dynamic>())),
      localAuthEnabled: map['localAuthEnabled'] == null ? null : pulumi.Output.create<bool>(map['localAuthEnabled'] as bool),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      primaryAccessKey: map['primaryAccessKey'] == null ? null : pulumi.Output.create<String>(map['primaryAccessKey'] as String),
      primaryConnectionString: map['primaryConnectionString'] == null ? null : pulumi.Output.create<String>(map['primaryConnectionString'] as String),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : pulumi.Output.create<bool>(map['publicNetworkAccessEnabled'] as bool),
      publicPort: map['publicPort'] == null ? null : pulumi.Output.create<int>(map['publicPort'] as int),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      secondaryAccessKey: map['secondaryAccessKey'] == null ? null : pulumi.Output.create<String>(map['secondaryAccessKey'] as String),
      secondaryConnectionString: map['secondaryConnectionString'] == null ? null : pulumi.Output.create<String>(map['secondaryConnectionString'] as String),
      serverPort: map['serverPort'] == null ? null : pulumi.Output.create<int>(map['serverPort'] as int),
      sku: map['sku'] == null ? null : pulumi.Output.create<String>(map['sku'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tlsClientCertEnabled: map['tlsClientCertEnabled'] == null ? null : pulumi.Output.create<bool>(map['tlsClientCertEnabled'] as bool),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

