// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_iammember_condition.dart';

/// Input properties used for looking up and filtering JobIAMMember resources.
class JobIAMMemberState {
  final pulumi.Input<JobIAMMemberCondition>? condition;
  /// (Computed) The etag of the jobs's IAM policy.
  final pulumi.Input<String>? etag;
  final pulumi.Input<String>? jobId;
  /// Identities that will be granted the privilege in `role`.
  /// Each entry can have one of the following values:
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  final pulumi.Input<String>? member;
  /// The project in which the job belongs. If it
  /// is not provided, the provider will use a default.
  final pulumi.Input<String>? project;
  /// The region in which the job belongs. If it
  /// is not provided, the provider will use a default.
  final pulumi.Input<String>? region;
  /// The role that should be applied. Only one
  /// `gcp.dataproc.JobIAMBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  ///
  /// `gcp.dataproc.JobIAMPolicy` only:
  final pulumi.Input<String>? role;

  /// Creates a new [JobIAMMemberState].
  /// [condition] Optional.
  /// [etag] (Computed) The etag of the jobs's IAM policy.
  /// [jobId] Optional.
  /// [member] Identities that will be granted the privilege in `role`.
  /// [project] The project in which the job belongs. If it
  /// [region] The region in which the job belongs. If it
  /// [role] The role that should be applied. Only one
  JobIAMMemberState({
    pulumi.Output<JobIAMMemberCondition>? condition,
    pulumi.Output<String>? etag,
    pulumi.Output<String>? jobId,
    pulumi.Output<String>? member,
    pulumi.Output<String>? project,
    pulumi.Output<String>? region,
    pulumi.Output<String>? role,
  }) :
      condition = pulumi.Input.asOptionalInput<JobIAMMemberCondition>(condition),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      jobId = pulumi.Input.asOptionalInput<String>(jobId),
      member = pulumi.Input.asOptionalInput<String>(member),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region),
      role = pulumi.Input.asOptionalInput<String>(role);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<JobIAMMemberCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'etag': ?etag,
      'jobId': ?jobId,
      'member': ?member,
      'project': ?project,
      'region': ?region,
      'role': ?role,
    };
  }

  factory JobIAMMemberState.fromMap(Map<String, dynamic> map) {
    return JobIAMMemberState(
      condition: map['condition'] == null ? null : pulumi.Output.create<JobIAMMemberCondition>(JobIAMMemberCondition.fromMap((map['condition'] as Map).cast<String, dynamic>())),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      jobId: map['jobId'] == null ? null : pulumi.Output.create<String>(map['jobId'] as String),
      member: map['member'] == null ? null : pulumi.Output.create<String>(map['member'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      role: map['role'] == null ? null : pulumi.Output.create<String>(map['role'] as String),
    );
  }
}

