// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_identity.dart';
import 'service_live_trace.dart';

/// {@template pulumi_webpubsub_service_service_args_doc}
/// The set of arguments for Service.
/// {@endtemplate}
/// {@macro pulumi_webpubsub_service_service_args_doc}
class ServiceArgs {
  /// Whether to enable AAD auth? Defaults to `true`.
  final pulumi.Input<bool>? aadAuthEnabled;
  /// Specifies the number of units associated with this Web PubSub resource. Valid values are `1`, `2`, `3`, `4`, `5`, `6`, `7`, `8`, `9`, `10`, `20`, `30`, `40`, `50`, `60`, `70`, `80`, `90`, `100`, `200`, `300`, `400`, `500`, `600`, `700`, `800`, `900` and `1000`.
  ///
  /// > **Note:** The valid capacity range for sku `Free_F1` is `1`, for sku `Premium_P2` is from `100` to `1000`, and from `1` to `100` for sku `Standard_S1` and `Premium_P1`.
  final pulumi.Input<int>? capacity;
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
  /// Whether to enable public network access? Defaults to `true`.
  final pulumi.Input<bool>? publicNetworkAccessEnabled;
  /// The name of the resource group in which to create the Web PubSub service. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// Specifies which SKU to use. Possible values are `Free_F1`, `Standard_S1`, `Premium_P1` and `Premium_P2`.
  final pulumi.Input<String> sku;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// Whether to request client certificate during TLS handshake? Defaults to `false`.
  final pulumi.Input<bool>? tlsClientCertEnabled;

  /// Creates a new [ServiceArgs].
  /// [aadAuthEnabled] Whether to enable AAD auth? Defaults to `true`.
  /// [capacity] Specifies the number of units associated with this Web PubSub resource. Valid values are `1`, `2`, `3`, `4`, `5`, `6`, `7`, `8`, `9`, `10`, `20`, `30`, `40`, `50`, `60`, `70`, `80`, `90`, `100`, `200`, `300`, `400`, `500`, `600`, `700`, `800`, `900` and `1000`.
  /// [identity] An `identity` block as defined below.
  /// [liveTrace] A `live_trace` block as defined below.
  /// [localAuthEnabled] Whether to enable local auth? Defaults to `true`.
  /// [location] Specifies the supported Azure location where the Web PubSub service exists. Changing this forces a new resource to be created.
  /// [name] The name of the Web PubSub service. Changing this forces a new resource to be created.
  /// [publicNetworkAccessEnabled] Whether to enable public network access? Defaults to `true`.
  /// [resourceGroupName] The name of the resource group in which to create the Web PubSub service. Changing this forces a new resource to be created.
  /// [sku] Specifies which SKU to use. Possible values are `Free_F1`, `Standard_S1`, `Premium_P1` and `Premium_P2`.
  /// [tags] A mapping of tags to assign to the resource.
  /// [tlsClientCertEnabled] Whether to request client certificate during TLS handshake? Defaults to `false`.
  ServiceArgs({
    this.aadAuthEnabled,
    this.capacity,
    this.identity,
    this.liveTrace,
    this.localAuthEnabled,
    this.location,
    this.name,
    this.publicNetworkAccessEnabled,
    required this.resourceGroupName,
    required this.sku,
    this.tags,
    this.tlsClientCertEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aadAuthEnabled': ?aadAuthEnabled,
      'capacity': ?capacity,
      'identity': ?pulumi.Input.mapOptionalInputValue<ServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'liveTrace': ?pulumi.Input.mapOptionalInputValue<ServiceLiveTrace, Map<String, dynamic>>(liveTrace, (value) => value.toMap()),
      'localAuthEnabled': ?localAuthEnabled,
      'location': ?location,
      'name': ?name,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'resourceGroupName': resourceGroupName,
      'sku': sku,
      'tags': ?tags,
      'tlsClientCertEnabled': ?tlsClientCertEnabled,
    };
  }

  factory ServiceArgs.fromMap(Map<String, dynamic> map) {
    return ServiceArgs(
      aadAuthEnabled: map['aadAuthEnabled'] == null ? null : (map['aadAuthEnabled']! as bool).input(),
      capacity: map['capacity'] == null ? null : (map['capacity']! as int).input(),
      identity: map['identity'] == null ? null : (ServiceIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      liveTrace: map['liveTrace'] == null ? null : (ServiceLiveTrace.fromMap((map['liveTrace']! as Map).cast<String, dynamic>())).input(),
      localAuthEnabled: map['localAuthEnabled'] == null ? null : (map['localAuthEnabled']! as bool).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : (map['publicNetworkAccessEnabled']! as bool).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sku: (map['sku'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      tlsClientCertEnabled: map['tlsClientCertEnabled'] == null ? null : (map['tlsClientCertEnabled']! as bool).input(),
    );
  }
}

