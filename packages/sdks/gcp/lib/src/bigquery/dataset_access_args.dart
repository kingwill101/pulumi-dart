// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_access_authorized_dataset.dart';
import 'dataset_access_condition.dart';
import 'dataset_access_routine.dart';
import 'dataset_access_view.dart';

/// {@template pulumi_bigquery_dataset_access_dataset_access_args_doc}
/// The set of arguments for DatasetAccess.
/// {@endtemplate}
/// {@macro pulumi_bigquery_dataset_access_dataset_access_args_doc}
class DatasetAccessArgs {
  /// Grants all resources of particular types in a particular dataset read access to the current dataset.
  /// Structure is documented below.
  final pulumi.Input<DatasetAccessAuthorizedDataset?>? authorizedDataset;
  /// Condition for the binding. If CEL expression in this field is true, this
  /// access binding will be considered.
  /// Structure is documented below.
  final pulumi.Input<DatasetAccessCondition?>? condition;
  /// A unique ID for this dataset, without the project name. The ID
  /// must contain only letters (a-z, A-Z), numbers (0-9), or
  /// underscores (_). The maximum length is 1,024 characters.
  final pulumi.Input<String> datasetId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// A domain to grant access to. Any users signed in with the
  /// domain specified will be granted the specified access
  final pulumi.Input<String?>? domain;
  /// An email address of a Google Group to grant access to.
  final pulumi.Input<String?>? groupByEmail;
  /// Some other type of member that appears in the IAM Policy but isn't a user,
  /// group, domain, or special group. For example: `allUsers`
  final pulumi.Input<String?>? iamMember;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Describes the rights granted to the user specified by the other
  /// member of the access object. Basic, predefined, and custom roles are
  /// supported. Predefined roles that have equivalent basic roles are
  /// swapped by the API to their basic counterparts, and will show a diff
  /// post-create. See
  /// [official docs](https://cloud.google.com/bigquery/docs/access-control).
  final pulumi.Input<String?>? role;
  /// A routine from a different dataset to grant access to. Queries
  /// executed against that routine will have read access to tables in
  /// this dataset. The role field is not required when this field is
  /// set. If that routine is updated by any user, access to the routine
  /// needs to be granted again via an update operation.
  /// Structure is documented below.
  final pulumi.Input<DatasetAccessRoutine?>? routine;
  /// A special group to grant access to. Possible values include:
  /// * `projectOwners`: Owners of the enclosing project.
  /// * `projectReaders`: Readers of the enclosing project.
  /// * `projectWriters`: Writers of the enclosing project.
  /// * `allAuthenticatedUsers`: All authenticated BigQuery users.
  final pulumi.Input<String?>? specialGroup;
  /// An email address of a user to grant access to. For example:
  /// fred@example.com
  final pulumi.Input<String?>? userByEmail;
  /// A view from a different dataset to grant access to. Queries
  /// executed against that view will have read access to tables in
  /// this dataset. The role field is not required when this field is
  /// set. If that view is updated by any user, access to the view
  /// needs to be granted again via an update operation.
  /// Structure is documented below.
  final pulumi.Input<DatasetAccessView?>? view;

  /// Creates a new [DatasetAccessArgs].
  /// [authorizedDataset] Grants all resources of particular types in a particular dataset read access to the current dataset.
  /// [condition] Condition for the binding. If CEL expression in this field is true, this
  /// [datasetId] A unique ID for this dataset, without the project name. The ID
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [domain] A domain to grant access to. Any users signed in with the
  /// [groupByEmail] An email address of a Google Group to grant access to.
  /// [iamMember] Some other type of member that appears in the IAM Policy but isn't a user,
  /// [project] The ID of the project in which the resource belongs.
  /// [role] Describes the rights granted to the user specified by the other
  /// [routine] A routine from a different dataset to grant access to. Queries
  /// [specialGroup] A special group to grant access to. Possible values include:
  /// [userByEmail] An email address of a user to grant access to. For example:
  /// [view] A view from a different dataset to grant access to. Queries
  const DatasetAccessArgs({
    this.authorizedDataset,
    this.condition,
    required this.datasetId,
    this.deletionPolicy,
    this.domain,
    this.groupByEmail,
    this.iamMember,
    this.project,
    this.role,
    this.routine,
    this.specialGroup,
    this.userByEmail,
    this.view,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizedDataset': ?pulumi.Input.mapOptionalInputValue<DatasetAccessAuthorizedDataset, Map<String, dynamic>>(authorizedDataset, (value) => value.toMap()),
      'condition': ?pulumi.Input.mapOptionalInputValue<DatasetAccessCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'datasetId': datasetId,
      'deletionPolicy': ?deletionPolicy,
      'domain': ?domain,
      'groupByEmail': ?groupByEmail,
      'iamMember': ?iamMember,
      'project': ?project,
      'role': ?role,
      'routine': ?pulumi.Input.mapOptionalInputValue<DatasetAccessRoutine, Map<String, dynamic>>(routine, (value) => value.toMap()),
      'specialGroup': ?specialGroup,
      'userByEmail': ?userByEmail,
      'view': ?pulumi.Input.mapOptionalInputValue<DatasetAccessView, Map<String, dynamic>>(view, (value) => value.toMap()),
    };
  }

  factory DatasetAccessArgs.fromMap(Map<String, dynamic> map) {
    return DatasetAccessArgs(
      authorizedDataset: (() { final guardedValue = map['authorizedDataset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatasetAccessAuthorizedDataset.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      condition: (() { final guardedValue = map['condition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatasetAccessCondition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      datasetId: pulumi.Input.fromValue(map['datasetId'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      groupByEmail: (() { final guardedValue = map['groupByEmail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      iamMember: (() { final guardedValue = map['iamMember']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      role: (() { final guardedValue = map['role']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routine: (() { final guardedValue = map['routine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatasetAccessRoutine.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      specialGroup: (() { final guardedValue = map['specialGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userByEmail: (() { final guardedValue = map['userByEmail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      view: (() { final guardedValue = map['view']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatasetAccessView.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
