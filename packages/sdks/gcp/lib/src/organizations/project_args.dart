// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_organizations_project_project_args_doc}
/// The set of arguments for Project.
/// {@endtemplate}
/// {@macro pulumi_organizations_project_project_args_doc}
class ProjectArgs {
  /// Create the 'default' network automatically.  Default true. If set to false, the default network will be deleted.  Note that, for quota purposes, you will still need to have 1 network slot available to create the project successfully, even if you set auto_create_network to false, since the network will exist momentarily.
  final pulumi.Input<bool>? autoCreateNetwork;

  /// The alphanumeric ID of the billing account this project
  /// belongs to. The user or service account performing this operation with the provider
  /// must have at mininum Billing Account User privileges (`roles/billing.user`) on the billing account.
  /// See [Google Cloud Billing API Access Control](https://cloud.google.com/billing/docs/how-to/billing-access)
  /// for more details.
  final pulumi.Input<String>? billingAccount;
  final pulumi.Input<String>? deletionPolicy;

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

  /// The numeric ID of the organization this project belongs to.
  /// Changing this forces a new project to be created.  Only one of
  /// `org_id` or `folder_id` may be specified. If the `org_id` is
  /// specified then the project is created at the top level. Changing
  /// this forces the project to be migrated to the newly specified
  /// organization.
  final pulumi.Input<String>? orgId;

  /// The project ID. Changing this forces a new project to be created.
  final pulumi.Input<String>? projectId;

  /// A map of resource manager tags. Resource manager tag keys and values have the same definition as resource manager tags. Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456. The field is ignored when empty. The field is immutable and causes resource replacement when mutated. This field is only set at create time and modifying this field after creation will trigger recreation. To apply tags to an existing resource, see the `gcp.tags.TagValue` resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ProjectArgs].
  /// [autoCreateNetwork] Create the 'default' network automatically.  Default true. If set to false, the default network will be deleted.  Note that, for quota purposes, you will still need to have 1 network slot available to create the project successfully, even if you set auto_create_network to false, since the network will exist momentarily.
  /// [billingAccount] The alphanumeric ID of the billing account this project
  /// [deletionPolicy] Optional.
  /// [folderId] The numeric ID of the folder this project should be
  /// [labels] A set of key/value label pairs to assign to the project.
  /// [name] The display name of the project.
  /// [orgId] The numeric ID of the organization this project belongs to.
  /// [projectId] The project ID. Changing this forces a new project to be created.
  /// [tags] A map of resource manager tags. Resource manager tag keys and values have the same definition as resource manager tags. Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456. The field is ignored when empty. The field is immutable and causes resource replacement when mutated. This field is only set at create time and modifying this field after creation will trigger recreation. To apply tags to an existing resource, see the `gcp.tags.TagValue` resource.
  ProjectArgs({
    this.autoCreateNetwork,
    this.billingAccount,
    this.deletionPolicy,
    this.folderId,
    this.labels,
    this.name,
    this.orgId,
    this.projectId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoCreateNetwork': ?autoCreateNetwork,
      'billingAccount': ?billingAccount,
      'deletionPolicy': ?deletionPolicy,
      'folderId': ?folderId,
      'labels': ?labels,
      'name': ?name,
      'orgId': ?orgId,
      'projectId': ?projectId,
      'tags': ?tags,
    };
  }

  factory ProjectArgs.fromMap(Map<String, dynamic> map) {
    return ProjectArgs(
      autoCreateNetwork: (() {
        final guardedValue = map['autoCreateNetwork'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      billingAccount: (() {
        final guardedValue = map['billingAccount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      deletionPolicy: (() {
        final guardedValue = map['deletionPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      folderId: (() {
        final guardedValue = map['folderId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      orgId: (() {
        final guardedValue = map['orgId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      projectId: (() {
        final guardedValue = map['projectId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
