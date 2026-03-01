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
  ClusterIAMMemberState({
    pulumi.Output<String>? cluster,
    pulumi.Output<ClusterIAMMemberCondition>? condition,
    pulumi.Output<String>? etag,
    pulumi.Output<String>? member,
    pulumi.Output<String>? project,
    pulumi.Output<String>? region,
    pulumi.Output<String>? role,
  }) :
      cluster = pulumi.Input.asOptionalInput<String>(cluster),
      condition = pulumi.Input.asOptionalInput<ClusterIAMMemberCondition>(condition),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      member = pulumi.Input.asOptionalInput<String>(member),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region),
      role = pulumi.Input.asOptionalInput<String>(role);

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
      cluster: map['cluster'] == null ? null : pulumi.Output.create<String>(map['cluster'] as String),
      condition: map['condition'] == null ? null : pulumi.Output.create<ClusterIAMMemberCondition>(ClusterIAMMemberCondition.fromMap((map['condition'] as Map).cast<String, dynamic>())),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      member: map['member'] == null ? null : pulumi.Output.create<String>(map['member'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      role: map['role'] == null ? null : pulumi.Output.create<String>(map['role'] as String),
    );
  }
}

