// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_iammember_condition.dart';

/// Input properties used for looking up and filtering ClusterIAMMember resources.
class ClusterIAMMemberState {
  /// The name or relative resource id of the cluster to manage IAM policies for.
  ///
  /// For `gcp.dataproc.ClusterIAMMember` or `gcp.dataproc.ClusterIAMBinding`:
  final pulumi.Input<String>? cluster;
  final pulumi.Input<ClusterIAMMemberCondition>? condition;
  /// (Computed) The etag of the clusters's IAM policy.
  final pulumi.Input<String>? etag;
  /// Identities that will be granted the privilege in `role`.
  /// Each entry can have one of the following values:
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  final pulumi.Input<String>? member;
  /// The project in which the cluster belongs. If it
  /// is not provided, the provider will use a default.
  final pulumi.Input<String>? project;
  /// The region in which the cluster belongs. If it
  /// is not provided, the provider will use a default.
  final pulumi.Input<String>? region;
  /// The role that should be applied. Only one
  /// `gcp.dataproc.ClusterIAMBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  ///
  /// `gcp.dataproc.ClusterIAMPolicy` only:
  final pulumi.Input<String>? role;

  /// Creates a new [ClusterIAMMemberState].
  /// [cluster] The name or relative resource id of the cluster to manage IAM policies for.
  /// [condition] Optional.
  /// [etag] (Computed) The etag of the clusters's IAM policy.
  /// [member] Identities that will be granted the privilege in `role`.
  /// [project] The project in which the cluster belongs. If it
  /// [region] The region in which the cluster belongs. If it
  /// [role] The role that should be applied. Only one
  const ClusterIAMMemberState({
    this.cluster,
    this.condition,
    this.etag,
    this.member,
    this.project,
    this.region,
    this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cluster': ?cluster,
      'condition': ?pulumi.Input.mapOptionalInputValue<ClusterIAMMemberCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'etag': ?etag,
      'member': ?member,
      'project': ?project,
      'region': ?region,
      'role': ?role,
    };
  }

  factory ClusterIAMMemberState.fromMap(Map<String, dynamic> map) {
    return ClusterIAMMemberState(
      cluster: (() { final guardedValue = map['cluster']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      condition: (() { final guardedValue = map['condition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterIAMMemberCondition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      member: (() { final guardedValue = map['member']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      role: (() { final guardedValue = map['role']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
