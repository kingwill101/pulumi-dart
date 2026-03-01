// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_desired_user_created_endpoints_desired_user_created_endpoint.dart';

/// Input properties used for looking up and filtering InstanceDesiredUserCreatedEndpoints resources.
class InstanceDesiredUserCreatedEndpointsState {
  /// A list of desired user endpoints
  /// Structure is documented below.
  final pulumi.Input<List<InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpoint>>? desiredUserCreatedEndpoints;
  /// The name of the Memorystore instance these endpoints should be added to.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The name of the region of the Memorystore instance these endpoints should be added to.
  final pulumi.Input<String>? region;

  /// Creates a new [InstanceDesiredUserCreatedEndpointsState].
  /// [desiredUserCreatedEndpoints] A list of desired user endpoints
  /// [name] The name of the Memorystore instance these endpoints should be added to.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The name of the region of the Memorystore instance these endpoints should be added to.
  InstanceDesiredUserCreatedEndpointsState({
    pulumi.Output<List<InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpoint>>? desiredUserCreatedEndpoints,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? region,
  }) :
      desiredUserCreatedEndpoints = pulumi.Input.asOptionalInput<List<InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpoint>>(desiredUserCreatedEndpoints),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'desiredUserCreatedEndpoints': ?pulumi.Input.mapOptionalInputValue<List<InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpoint>, List<Map<String, dynamic>>>(desiredUserCreatedEndpoints, (value) => pulumi.Input.encodeList<InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'project': ?project,
      'region': ?region,
    };
  }

  factory InstanceDesiredUserCreatedEndpointsState.fromMap(Map<String, dynamic> map) {
    return InstanceDesiredUserCreatedEndpointsState(
      desiredUserCreatedEndpoints: map['desiredUserCreatedEndpoints'] == null ? null : pulumi.Output.create<List<InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpoint>>(pulumi.Input.decodeList<InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpoint>(map['desiredUserCreatedEndpoints'], (value) => InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpoint.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

