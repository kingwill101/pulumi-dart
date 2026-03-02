// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_endpoint_list_network_endpoint.dart';

/// Input properties used for looking up and filtering NetworkEndpointList resources.
class NetworkEndpointListState {
  /// The network endpoint group these endpoints are part of.
  final pulumi.Input<String>? networkEndpointGroup;
  /// The network endpoints to be added to the enclosing network endpoint group
  /// (NEG). Each endpoint specifies an IP address and port, along with
  /// additional information depending on the NEG type.
  /// Structure is documented below.
  final pulumi.Input<List<NetworkEndpointListNetworkEndpoint>>? networkEndpoints;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Zone where the containing network endpoint group is located.
  final pulumi.Input<String>? zone;

  /// Creates a new [NetworkEndpointListState].
  /// [networkEndpointGroup] The network endpoint group these endpoints are part of.
  /// [networkEndpoints] The network endpoints to be added to the enclosing network endpoint group
  /// [project] The ID of the project in which the resource belongs.
  /// [zone] Zone where the containing network endpoint group is located.
  NetworkEndpointListState({
    this.networkEndpointGroup,
    this.networkEndpoints,
    this.project,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkEndpointGroup': ?networkEndpointGroup,
      'networkEndpoints': ?pulumi.Input.mapOptionalInputValue<List<NetworkEndpointListNetworkEndpoint>, List<Map<String, dynamic>>>(networkEndpoints, (value) => pulumi.Input.encodeList<NetworkEndpointListNetworkEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'project': ?project,
      'zone': ?zone,
    };
  }

  factory NetworkEndpointListState.fromMap(Map<String, dynamic> map) {
    return NetworkEndpointListState(
      networkEndpointGroup: map['networkEndpointGroup'] == null ? null : (map['networkEndpointGroup']! as String).input(),
      networkEndpoints: map['networkEndpoints'] == null ? null : (pulumi.Input.decodeList<NetworkEndpointListNetworkEndpoint>(map['networkEndpoints']!, (value) => NetworkEndpointListNetworkEndpoint.fromMap((value as Map).cast<String, dynamic>()))).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      zone: map['zone'] == null ? null : (map['zone']! as String).input(),
    );
  }
}

