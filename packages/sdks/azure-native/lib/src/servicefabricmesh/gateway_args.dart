// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_config.dart';
import 'network_ref.dart';
import 'tcp_config.dart';

/// {@template pulumi_servicefabricmesh_gateway_args_doc}
/// The set of arguments for Gateway.
/// {@endtemplate}
/// {@macro pulumi_servicefabricmesh_gateway_args_doc}
class GatewayArgs {
  /// User readable description of the gateway.
  final pulumi.Input<String>? description;
  /// Network that the Application is using.
  final pulumi.Input<NetworkRef> destinationNetwork;
  /// The identity of the gateway.
  final pulumi.Input<String>? gatewayResourceName;
  /// Configuration for http connectivity for this gateway.
  final pulumi.Input<List<HttpConfig>>? http;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Azure resource group name
  final pulumi.Input<String> resourceGroupName;
  /// Network the gateway should listen on for requests.
  final pulumi.Input<NetworkRef> sourceNetwork;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Configuration for tcp connectivity for this gateway.
  final pulumi.Input<List<TcpConfig>>? tcp;

  /// Creates a new [GatewayArgs].
  /// [description] User readable description of the gateway.
  /// [destinationNetwork] Network that the Application is using.
  /// [gatewayResourceName] The identity of the gateway.
  /// [http] Configuration for http connectivity for this gateway.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] Azure resource group name
  /// [sourceNetwork] Network the gateway should listen on for requests.
  /// [tags] Resource tags.
  /// [tcp] Configuration for tcp connectivity for this gateway.
  GatewayArgs({
    this.description,
    required this.destinationNetwork,
    this.gatewayResourceName,
    this.http,
    this.location,
    required this.resourceGroupName,
    required this.sourceNetwork,
    this.tags,
    this.tcp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'destinationNetwork': pulumi.Input.mapInputValue<NetworkRef, Map<String, dynamic>>(destinationNetwork, (value) => value.toMap()),
      'gatewayResourceName': ?gatewayResourceName,
      'http': ?pulumi.Input.mapOptionalInputValue<List<HttpConfig>, List<Map<String, dynamic>>>(http, (value) => pulumi.Input.encodeList<HttpConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'sourceNetwork': pulumi.Input.mapInputValue<NetworkRef, Map<String, dynamic>>(sourceNetwork, (value) => value.toMap()),
      'tags': ?tags,
      'tcp': ?pulumi.Input.mapOptionalInputValue<List<TcpConfig>, List<Map<String, dynamic>>>(tcp, (value) => pulumi.Input.encodeList<TcpConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GatewayArgs.fromMap(Map<String, dynamic> map) {
    return GatewayArgs(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      destinationNetwork: (NetworkRef.fromMap((map['destinationNetwork'] as Map).cast<String, dynamic>())).input(),
      gatewayResourceName: map['gatewayResourceName'] == null ? null : (map['gatewayResourceName'] as String).input(),
      http: map['http'] == null ? null : (pulumi.Input.decodeList<HttpConfig>(map['http'], (value) => HttpConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sourceNetwork: (NetworkRef.fromMap((map['sourceNetwork'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tcp: map['tcp'] == null ? null : (pulumi.Input.decodeList<TcpConfig>(map['tcp'], (value) => TcpConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

