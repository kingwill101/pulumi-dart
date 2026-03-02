// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Project resources.
class ProjectState {
  /// Create the 'default' network automatically.  Default true. If set to false, the default network will be deleted.  Note that, for quota purposes, you will still need to have 1 network slot available to create the project successfully, even if you set auto_create_network to false, since the network will exist momentarily.
  final pulumi.Input<bool>? autoCreateNetwork;
  /// The alphanumeric ID of the billing account this project
  /// belongs to. The user or service account performing this operation with the provider
  /// must have at mininum Billing Account User privileges (`roles/billing.user`) on the billing account.
  /// See [Google Cloud Billing API Access Control](https://cloud.google.com/billing/docs/how-to/billing-access)
  /// for more details.
  final pulumi.Input<String>? billingAccount;
  final pulumi.Input<String>? deletionPolicy;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// The numeric ID of the folder this project should be
  /// created under. Only one of `org_id` or `folder_id` may be
  /// specified. If the `folder_id` is specified, then the project is
  /// created under the specified folder. Changing this forces the
  /// project to be migrated to the newly specified folder.
  final pulumi.Input<String>? folderId;
  /// A set of key/value label pairs to assign to the project.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field 'effective_labels' for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The display name of the project.
  final pulumi.Input<String>? name;
  /// The numeric identifier of the project.
  final pulumi.Input<String>? number;
  /// The numeric ID of the organization this project belongs to.
  /// Changing this forces a new project to be created.  Only one of
  /// `org_id` or `folder_id` may be specified. If the `org_id` is
  /// specified then the project is created at the top level. Changing
  /// this forces the project to be migrated to the newly specified
  /// organization.
  final pulumi.Input<String>? orgId;
  /// The project ID. Changing this forces a new project to be created.
  final pulumi.Input<String>? projectId;
  /// The combination of labels configured directly on the resource and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// A map of resource manager tags. Resource manager tag keys and values have the same definition as resource manager tags. Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456. The field is ignored when empty. The field is immutable and causes resource replacement when mutated. This field is only set at create time and modifying this field after creation will trigger recreation. To apply tags to an existing resource, see the `gcp.tags.TagValue` resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ProjectState].
  /// [autoCreateNetwork] Create the 'default' network automatically.  Default true. If set to false, the default network will be deleted.  Note that, for quota purposes, you will still need to have 1 network slot available to create the project successfully, even if you set auto_create_network to false, since the network will exist momentarily.
  /// [billingAccount] The alphanumeric ID of the billing account this project
  /// [deletionPolicy] Optional.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [folderId] The numeric ID of the folder this project should be
  /// [labels] A set of key/value label pairs to assign to the project.
  /// [name] The display name of the project.
  /// [number] The numeric identifier of the project.
  /// [orgId] The numeric ID of the organization this project belongs to.
  /// [projectId] The project ID. Changing this forces a new project to be created.
  /// [pulumiLabels] The combination of labels configured directly on the resource and default labels configured on the provider.
  /// [tags] A map of resource manager tags. Resource manager tag keys and values have the same definition as resource manager tags. Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456. The field is ignored when empty. The field is immutable and causes resource replacement when mutated. This field is only set at create time and modifying this field after creation will trigger recreation. To apply tags to an existing resource, see the `gcp.tags.TagValue` resource.
  ProjectState({
    this.autoCreateNetwork,
    this.billingAccount,
    this.deletionPolicy,
    this.effectiveLabels,
    this.folderId,
    this.labels,
    this.name,
    this.number,
    this.orgId,
    this.projectId,
    this.pulumiLabels,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoCreateNetwork': ?autoCreateNetwork,
      'billingAccount': ?billingAccount,
      'deletionPolicy': ?deletionPolicy,
      'effectiveLabels': ?effectiveLabels,
      'folderId': ?folderId,
      'labels': ?labels,
      'name': ?name,
      'number': ?number,
      'orgId': ?orgId,
      'projectId': ?projectId,
      'pulumiLabels': ?pulumiLabels,
      'tags': ?tags,
    };
  }

  factory ProjectState.fromMap(Map<String, dynamic> map) {
    return ProjectState(
      autoCreateNetwork: map['autoCreateNetwork'] == null ? null : (map['autoCreateNetwork']! as bool).input(),
      billingAccount: map['billingAccount'] == null ? null : (map['billingAccount']! as String).input(),
      deletionPolicy: map['deletionPolicy'] == null ? null : (map['deletionPolicy']! as String).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels']! as Map).cast<String, String>()).input(),
      folderId: map['folderId'] == null ? null : (map['folderId']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      number: map['number'] == null ? null : (map['number']! as String).input(),
      orgId: map['orgId'] == null ? null : (map['orgId']! as String).input(),
      projectId: map['projectId'] == null ? null : (map['projectId']! as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels']! as Map).cast<String, String>()).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

