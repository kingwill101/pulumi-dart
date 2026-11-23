// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ClusterTokenAuthUser resources.
class ClusterTokenAuthUserState {
  /// The name or resource ID of the Redis cluster.
  final pulumi.Input<String?>? cluster;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The full resource name of the Token Auth User.
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The name of the region of the Redis cluster.
  final pulumi.Input<String?>? region;
  /// The current state of the Token Auth User.
  final pulumi.Input<String?>? state;
  /// The unique ID (username) of the Token Auth User.
  /// The `default` user cannot be managed with this resource.
  final pulumi.Input<String?>? userId;

  /// Creates a new [ClusterTokenAuthUserState].
  /// [cluster] The name or resource ID of the Redis cluster.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [name] The full resource name of the Token Auth User.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The name of the region of the Redis cluster.
  /// [state] The current state of the Token Auth User.
  /// [userId] The unique ID (username) of the Token Auth User.
  const ClusterTokenAuthUserState({
    this.cluster,
    this.deletionPolicy,
    this.name,
    this.project,
    this.region,
    this.state,
    this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cluster': ?cluster,
      'deletionPolicy': ?deletionPolicy,
      'name': ?name,
      'project': ?project,
      'region': ?region,
      'state': ?state,
      'userId': ?userId,
    };
  }

  factory ClusterTokenAuthUserState.fromMap(Map<String, dynamic> map) {
    return ClusterTokenAuthUserState(
      cluster: (() { final guardedValue = map['cluster']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userId: (() { final guardedValue = map['userId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
