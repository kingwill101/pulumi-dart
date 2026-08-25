// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'runtime_iam_binding_condition.dart';

/// Input properties used for looking up and filtering RuntimeIamBinding resources.
class RuntimeIamBindingState {
  final pulumi.Input<RuntimeIamBindingCondition?>? condition;
  /// (Computed) The etag of the IAM policy.
  final pulumi.Input<String?>? etag;
  /// A reference to the zone where the machine resides. Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  final pulumi.Input<String?>? location;
  /// Identities that will be granted the privilege in `role`.
  /// Each entry can have one of the following values:
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  /// * **projectOwner:projectid**: Owners of the given project. For example, "projectOwner:my-example-project"
  /// * **projectEditor:projectid**: Editors of the given project. For example, "projectEditor:my-example-project"
  /// * **projectViewer:projectid**: Viewers of the given project. For example, "projectViewer:my-example-project"
  /// * **Federated identities**: One or more federated identities in a workload or workforce identity pool, workload running on GKE, etc. Refer to the [Principal identifiers documentation](https://cloud.google.com/iam/docs/principal-identifiers#allow) for examples of targets and valid configuration. For example, "principal://iam.googleapis.com/locations/global/workforcePools/example-contractors/subject/joe@example.com"
  final pulumi.Input<List<String>?>? members;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The role that should be applied. Only one
  /// `gcp.notebooks.RuntimeIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final pulumi.Input<String?>? role;
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String?>? runtimeName;

  /// Creates a new [RuntimeIamBindingState].
  /// [condition] Optional.
  /// [etag] (Computed) The etag of the IAM policy.
  /// [location] A reference to the zone where the machine resides. Used to find the parent resource to bind the IAM policy to. If not specified,
  /// [members] Identities that will be granted the privilege in `role`.
  /// [project] The ID of the project in which the resource belongs.
  /// [role] The role that should be applied. Only one
  /// [runtimeName] Used to find the parent resource to bind the IAM policy to
  const RuntimeIamBindingState({
    this.condition,
    this.etag,
    this.location,
    this.members,
    this.project,
    this.role,
    this.runtimeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<RuntimeIamBindingCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'etag': ?etag,
      'location': ?location,
      'members': ?members,
      'project': ?project,
      'role': ?role,
      'runtimeName': ?runtimeName,
    };
  }

  factory RuntimeIamBindingState.fromMap(Map<String, dynamic> map) {
    return RuntimeIamBindingState(
      condition: (() { final guardedValue = map['condition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuntimeIamBindingCondition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      members: (() { final guardedValue = map['members']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      role: (() { final guardedValue = map['role']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runtimeName: (() { final guardedValue = map['runtimeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
