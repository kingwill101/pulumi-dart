// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tunnel_dest_group_iam_binding_condition.dart';

/// Input properties used for looking up and filtering TunnelDestGroupIamBinding resources.
class TunnelDestGroupIamBindingState {
  /// An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// Structure is documented below.
  final pulumi.Input<TunnelDestGroupIamBindingCondition?>? condition;
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String?>? destGroup;
  /// (Computed) The etag of the IAM policy.
  final pulumi.Input<String?>? etag;
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
  /// The region of the tunnel group. Must be the same as the network resources in the group.
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no region is provided in the parent identifier and no
  /// region is specified, it is taken from the provider configuration.
  final pulumi.Input<String?>? region;
  /// The role that should be applied. Only one
  /// `gcp.iap.TunnelDestGroupIamBinding` can be used per role and condition combination. Multiple bindings for the same role are allowed if each has a different `condition` block (or one has no condition). Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final pulumi.Input<String?>? role;

  /// Creates a new [TunnelDestGroupIamBindingState].
  /// [condition] An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// [destGroup] Used to find the parent resource to bind the IAM policy to
  /// [etag] (Computed) The etag of the IAM policy.
  /// [members] Identities that will be granted the privilege in `role`.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region of the tunnel group. Must be the same as the network resources in the group.
  /// [role] The role that should be applied. Only one
  const TunnelDestGroupIamBindingState({
    this.condition,
    this.destGroup,
    this.etag,
    this.members,
    this.project,
    this.region,
    this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<TunnelDestGroupIamBindingCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'destGroup': ?destGroup,
      'etag': ?etag,
      'members': ?members,
      'project': ?project,
      'region': ?region,
      'role': ?role,
    };
  }

  factory TunnelDestGroupIamBindingState.fromMap(Map<String, dynamic> map) {
    return TunnelDestGroupIamBindingState(
      condition: (() { final guardedValue = map['condition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TunnelDestGroupIamBindingCondition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      destGroup: (() { final guardedValue = map['destGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      members: (() { final guardedValue = map['members']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      role: (() { final guardedValue = map['role']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
