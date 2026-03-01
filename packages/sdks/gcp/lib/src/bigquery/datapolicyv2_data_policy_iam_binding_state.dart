// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'datapolicyv2_data_policy_iam_binding_condition.dart';

/// Input properties used for looking up and filtering Datapolicyv2DataPolicyIamBinding resources.
class Datapolicyv2DataPolicyIamBindingState {
  final pulumi.Input<Datapolicyv2DataPolicyIamBindingCondition>? condition;
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String>? dataPolicyId;
  /// (Computed) The etag of the IAM policy.
  final pulumi.Input<String>? etag;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122. Used to find the parent resource to bind the IAM policy to. If not specified,
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
  final pulumi.Input<List<String>>? members;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;
  /// The role that should be applied. Only one
  /// `gcp.bigquery.Datapolicyv2DataPolicyIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final pulumi.Input<String>? role;

  /// Creates a new [Datapolicyv2DataPolicyIamBindingState].
  /// [condition] Optional.
  /// [dataPolicyId] Used to find the parent resource to bind the IAM policy to
  /// [etag] (Computed) The etag of the IAM policy.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122. Used to find the parent resource to bind the IAM policy to. If not specified,
  /// [members] Identities that will be granted the privilege in `role`.
  /// [project] The ID of the project in which the resource belongs.
  /// [role] The role that should be applied. Only one
  Datapolicyv2DataPolicyIamBindingState({
    pulumi.Output<Datapolicyv2DataPolicyIamBindingCondition>? condition,
    pulumi.Output<String>? dataPolicyId,
    pulumi.Output<String>? etag,
    pulumi.Output<String>? location,
    pulumi.Output<List<String>>? members,
    pulumi.Output<String>? project,
    pulumi.Output<String>? role,
  }) :
      condition = pulumi.Input.asOptionalInput<Datapolicyv2DataPolicyIamBindingCondition>(condition),
      dataPolicyId = pulumi.Input.asOptionalInput<String>(dataPolicyId),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      location = pulumi.Input.asOptionalInput<String>(location),
      members = pulumi.Input.asOptionalInput<List<String>>(members),
      project = pulumi.Input.asOptionalInput<String>(project),
      role = pulumi.Input.asOptionalInput<String>(role);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<Datapolicyv2DataPolicyIamBindingCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'dataPolicyId': ?dataPolicyId,
      'etag': ?etag,
      'location': ?location,
      'members': ?members,
      'project': ?project,
      'role': ?role,
    };
  }

  factory Datapolicyv2DataPolicyIamBindingState.fromMap(Map<String, dynamic> map) {
    return Datapolicyv2DataPolicyIamBindingState(
      condition: map['condition'] == null ? null : pulumi.Output.create<Datapolicyv2DataPolicyIamBindingCondition>(Datapolicyv2DataPolicyIamBindingCondition.fromMap((map['condition'] as Map).cast<String, dynamic>())),
      dataPolicyId: map['dataPolicyId'] == null ? null : pulumi.Output.create<String>(map['dataPolicyId'] as String),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      members: map['members'] == null ? null : pulumi.Output.create<List<String>>((map['members'] as List).cast<String>()),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      role: map['role'] == null ? null : pulumi.Output.create<String>(map['role'] as String),
    );
  }
}

