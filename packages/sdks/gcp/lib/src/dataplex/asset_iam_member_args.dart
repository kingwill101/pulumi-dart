// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'asset_iam_member_condition.dart';

/// {@template pulumi_dataplex_asset_iam_member_asset_iam_member_args_doc}
/// The set of arguments for AssetIamMember.
/// {@endtemplate}
/// {@macro pulumi_dataplex_asset_iam_member_asset_iam_member_args_doc}
class AssetIamMemberArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> asset;
  final pulumi.Input<AssetIamMemberCondition>? condition;
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> dataplexZone;
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> lake;
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  final pulumi.Input<String>? location;
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
  final pulumi.Input<String> member;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;
  /// The role that should be applied. Only one
  /// `gcp.dataplex.AssetIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final pulumi.Input<String> role;

  /// Creates a new [AssetIamMemberArgs].
  /// [asset] Used to find the parent resource to bind the IAM policy to
  /// [condition] Optional.
  /// [dataplexZone] Used to find the parent resource to bind the IAM policy to
  /// [lake] Used to find the parent resource to bind the IAM policy to
  /// [location] Used to find the parent resource to bind the IAM policy to. If not specified,
  /// [member] Identities that will be granted the privilege in `role`.
  /// [project] The ID of the project in which the resource belongs.
  /// [role] The role that should be applied. Only one
  AssetIamMemberArgs({
    required this.asset,
    this.condition,
    required this.dataplexZone,
    required this.lake,
    this.location,
    required this.member,
    this.project,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asset': asset,
      'condition': ?pulumi.Input.mapOptionalInputValue<AssetIamMemberCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'dataplexZone': dataplexZone,
      'lake': lake,
      'location': ?location,
      'member': member,
      'project': ?project,
      'role': role,
    };
  }

  factory AssetIamMemberArgs.fromMap(Map<String, dynamic> map) {
    return AssetIamMemberArgs(
      asset: (map['asset'] as String).input(),
      condition: map['condition'] == null ? null : (AssetIamMemberCondition.fromMap((map['condition'] as Map).cast<String, dynamic>())).input(),
      dataplexZone: (map['dataplexZone'] as String).input(),
      lake: (map['lake'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      member: (map['member'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      role: (map['role'] as String).input(),
    );
  }
}

