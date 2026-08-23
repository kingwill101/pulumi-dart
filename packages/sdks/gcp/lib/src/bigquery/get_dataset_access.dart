// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dataset_access_condition.dart';
import 'get_dataset_access_dataset.dart';
import 'get_dataset_access_routine.dart';
import 'get_dataset_access_view.dart';

class GetDatasetAccess {
  /// Condition for the binding. If CEL expression in this field is true, this
  /// access binding will be considered.
  final pulumi.Input<List<GetDatasetAccessCondition>> conditions;
  /// Grants all resources of particular types in a particular dataset read access to the current dataset.
  final pulumi.Input<List<GetDatasetAccessDataset>> datasets;
  /// A domain to grant access to. Any users signed in with the
  /// domain specified will be granted the specified access
  final pulumi.Input<String> domain;
  /// An email address of a Google Group to grant access to.
  final pulumi.Input<String> groupByEmail;
  /// Some other type of member that appears in the IAM Policy but isn't a user,
  /// group, domain, or special group. For example: 'allUsers'
  final pulumi.Input<String> iamMember;
  /// Describes the rights granted to the user specified by the other
  /// member of the access object. Basic, predefined, and custom roles
  /// are supported. Predefined roles that have equivalent basic roles
  /// are swapped by the API to their basic counterparts. See
  /// [official docs](https://cloud.google.com/bigquery/docs/access-control).
  final pulumi.Input<String> role;
  /// A routine from a different dataset to grant access to. Queries
  /// executed against that routine will have read access to tables in
  /// this dataset. The role field is not required when this field is
  /// set. If that routine is updated by any user, access to the routine
  /// needs to be granted again via an update operation.
  final pulumi.Input<List<GetDatasetAccessRoutine>> routines;
  /// A special group to grant access to. Possible values include:
  /// * 'projectOwners': Owners of the enclosing project.
  /// * 'projectReaders': Readers of the enclosing project.
  /// * 'projectWriters': Writers of the enclosing project.
  /// * 'allAuthenticatedUsers': All authenticated BigQuery users.
  final pulumi.Input<String> specialGroup;
  /// An email address of a user to grant access to. For example:
  /// fred@example.com
  final pulumi.Input<String> userByEmail;
  /// A view from a different dataset to grant access to. Queries
  /// executed against that view will have read access to tables in
  /// this dataset. The role field is not required when this field is
  /// set. If that view is updated by any user, access to the view
  /// needs to be granted again via an update operation.
  final pulumi.Input<List<GetDatasetAccessView>> views;

  /// Creates a new [GetDatasetAccess].
  /// [conditions] Condition for the binding. If CEL expression in this field is true, this
  /// [datasets] Grants all resources of particular types in a particular dataset read access to the current dataset.
  /// [domain] A domain to grant access to. Any users signed in with the
  /// [groupByEmail] An email address of a Google Group to grant access to.
  /// [iamMember] Some other type of member that appears in the IAM Policy but isn't a user,
  /// [role] Describes the rights granted to the user specified by the other
  /// [routines] A routine from a different dataset to grant access to. Queries
  /// [specialGroup] A special group to grant access to. Possible values include:
  /// [userByEmail] An email address of a user to grant access to. For example:
  /// [views] A view from a different dataset to grant access to. Queries
  const GetDatasetAccess({
    required this.conditions,
    required this.datasets,
    required this.domain,
    required this.groupByEmail,
    required this.iamMember,
    required this.role,
    required this.routines,
    required this.specialGroup,
    required this.userByEmail,
    required this.views,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': pulumi.Input.mapInputValue<List<GetDatasetAccessCondition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<GetDatasetAccessCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'datasets': pulumi.Input.mapInputValue<List<GetDatasetAccessDataset>, List<Map<String, dynamic>>>(datasets, (value) => pulumi.Input.encodeList<GetDatasetAccessDataset, Map<String, dynamic>>(value, (value) => value.toMap())),
      'domain': domain,
      'groupByEmail': groupByEmail,
      'iamMember': iamMember,
      'role': role,
      'routines': pulumi.Input.mapInputValue<List<GetDatasetAccessRoutine>, List<Map<String, dynamic>>>(routines, (value) => pulumi.Input.encodeList<GetDatasetAccessRoutine, Map<String, dynamic>>(value, (value) => value.toMap())),
      'specialGroup': specialGroup,
      'userByEmail': userByEmail,
      'views': pulumi.Input.mapInputValue<List<GetDatasetAccessView>, List<Map<String, dynamic>>>(views, (value) => pulumi.Input.encodeList<GetDatasetAccessView, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetDatasetAccess.fromMap(Map<String, dynamic> map) {
    return GetDatasetAccess(
      conditions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDatasetAccessCondition>(map['conditions']!, (value) => GetDatasetAccessCondition.fromMap((value as Map).cast<String, dynamic>()))),
      datasets: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDatasetAccessDataset>(map['datasets']!, (value) => GetDatasetAccessDataset.fromMap((value as Map).cast<String, dynamic>()))),
      domain: pulumi.Input.fromValue(map['domain'] as String),
      groupByEmail: pulumi.Input.fromValue(map['groupByEmail'] as String),
      iamMember: pulumi.Input.fromValue(map['iamMember'] as String),
      role: pulumi.Input.fromValue(map['role'] as String),
      routines: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDatasetAccessRoutine>(map['routines']!, (value) => GetDatasetAccessRoutine.fromMap((value as Map).cast<String, dynamic>()))),
      specialGroup: pulumi.Input.fromValue(map['specialGroup'] as String),
      userByEmail: pulumi.Input.fromValue(map['userByEmail'] as String),
      views: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDatasetAccessView>(map['views']!, (value) => GetDatasetAccessView.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
