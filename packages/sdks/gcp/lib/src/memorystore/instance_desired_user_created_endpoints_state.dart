// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_desired_user_created_endpoints_desired_user_created_endpoint.dart';

/// Input properties used for looking up and filtering InstanceDesiredUserCreatedEndpoints resources.
class InstanceDesiredUserCreatedEndpointsState {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
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
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [desiredUserCreatedEndpoints] A list of desired user endpoints
  /// [name] The name of the Memorystore instance these endpoints should be added to.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The name of the region of the Memorystore instance these endpoints should be added to.
  const InstanceDesiredUserCreatedEndpointsState({
    this.deletionPolicy,
    this.desiredUserCreatedEndpoints,
    this.name,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'desiredUserCreatedEndpoints': ?pulumi.Input.mapOptionalInputValue<List<InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpoint>, List<Map<String, dynamic>>>(desiredUserCreatedEndpoints, (value) => pulumi.Input.encodeList<InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'project': ?project,
      'region': ?region,
    };
  }

  factory InstanceDesiredUserCreatedEndpointsState.fromMap(Map<String, dynamic> map) {
    return InstanceDesiredUserCreatedEndpointsState(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      desiredUserCreatedEndpoints: (() { final guardedValue = map['desiredUserCreatedEndpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpoint>(guardedValue, (value) => InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpoint.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
