// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_access_entry.dart';
import 'routine_reference.dart';
import 'table_reference.dart';

class DatasetAccessItem {
  /// [Pick one] A grant authorizing all resources of a particular type in a particular dataset access to this dataset. Only views are supported for now. The role field is not required when this field is set. If that dataset is deleted and re-created, its access needs to be granted again via an update operation.
  final pulumi.Input<DatasetAccessEntry>? dataset;
  /// [Pick one] A domain to grant access to. Any users signed in with the domain specified will be granted the specified access. Example: "example.com". Maps to IAM policy member "domain:DOMAIN".
  final pulumi.Input<String>? domain;
  /// [Pick one] An email address of a Google Group to grant access to. Maps to IAM policy member "group:GROUP".
  final pulumi.Input<String>? groupByEmail;
  /// [Pick one] Some other type of member that appears in the IAM Policy but isn't a user, group, domain, or special group.
  final pulumi.Input<String>? iamMember;
  /// [Required] An IAM role ID that should be granted to the user, group, or domain specified in this access entry. The following legacy mappings will be applied: OWNER  roles/bigquery.dataOwner WRITER  roles/bigquery.dataEditor READER  roles/bigquery.dataViewer This field will accept any of the above formats, but will return only the legacy format. For example, if you set this field to "roles/bigquery.dataOwner", it will be returned back as "OWNER".
  final pulumi.Input<String>? role;
  /// [Pick one] A routine from a different dataset to grant access to. Queries executed against that routine will have read access to views/tables/routines in this dataset. Only UDF is supported for now. The role field is not required when this field is set. If that routine is updated by any user, access to the routine needs to be granted again via an update operation.
  final pulumi.Input<RoutineReference>? routine;
  /// [Pick one] A special group to grant access to. Possible values include: projectOwners: Owners of the enclosing project. projectReaders: Readers of the enclosing project. projectWriters: Writers of the enclosing project. allAuthenticatedUsers: All authenticated BigQuery users. Maps to similarly-named IAM members.
  final pulumi.Input<String>? specialGroup;
  /// [Pick one] An email address of a user to grant access to. For example: fred@example.com. Maps to IAM policy member "user:EMAIL" or "serviceAccount:EMAIL".
  final pulumi.Input<String>? userByEmail;
  /// [Pick one] A view from a different dataset to grant access to. Queries executed against that view will have read access to tables in this dataset. The role field is not required when this field is set. If that view is updated by any user, access to the view needs to be granted again via an update operation.
  final pulumi.Input<TableReference>? view;

  /// Creates a new [DatasetAccessItem].
  /// [dataset] [Pick one] A grant authorizing all resources of a particular type in a particular dataset access to this dataset. Only views are supported for now. The role field is not required when this field is set. If that dataset is deleted and re-created, its access needs to be granted again via an update operation.
  /// [domain] [Pick one] A domain to grant access to. Any users signed in with the domain specified will be granted the specified access. Example: "example.com". Maps to IAM policy member "domain:DOMAIN".
  /// [groupByEmail] [Pick one] An email address of a Google Group to grant access to. Maps to IAM policy member "group:GROUP".
  /// [iamMember] [Pick one] Some other type of member that appears in the IAM Policy but isn't a user, group, domain, or special group.
  /// [role] [Required] An IAM role ID that should be granted to the user, group, or domain specified in this access entry. The following legacy mappings will be applied: OWNER  roles/bigquery.dataOwner WRITER  roles/bigquery.dataEditor READER  roles/bigquery.dataViewer This field will accept any of the above formats, but will return only the legacy format. For example, if you set this field to "roles/bigquery.dataOwner", it will be returned back as "OWNER".
  /// [routine] [Pick one] A routine from a different dataset to grant access to. Queries executed against that routine will have read access to views/tables/routines in this dataset. Only UDF is supported for now. The role field is not required when this field is set. If that routine is updated by any user, access to the routine needs to be granted again via an update operation.
  /// [specialGroup] [Pick one] A special group to grant access to. Possible values include: projectOwners: Owners of the enclosing project. projectReaders: Readers of the enclosing project. projectWriters: Writers of the enclosing project. allAuthenticatedUsers: All authenticated BigQuery users. Maps to similarly-named IAM members.
  /// [userByEmail] [Pick one] An email address of a user to grant access to. For example: fred@example.com. Maps to IAM policy member "user:EMAIL" or "serviceAccount:EMAIL".
  /// [view] [Pick one] A view from a different dataset to grant access to. Queries executed against that view will have read access to tables in this dataset. The role field is not required when this field is set. If that view is updated by any user, access to the view needs to be granted again via an update operation.
  const DatasetAccessItem({
    this.dataset,
    this.domain,
    this.groupByEmail,
    this.iamMember,
    this.role,
    this.routine,
    this.specialGroup,
    this.userByEmail,
    this.view,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataset': ?pulumi.Input.mapOptionalInputValue<DatasetAccessEntry, Map<String, dynamic>>(dataset, (value) => value.toMap()),
      'domain': ?domain,
      'groupByEmail': ?groupByEmail,
      'iamMember': ?iamMember,
      'role': ?role,
      'routine': ?pulumi.Input.mapOptionalInputValue<RoutineReference, Map<String, dynamic>>(routine, (value) => value.toMap()),
      'specialGroup': ?specialGroup,
      'userByEmail': ?userByEmail,
      'view': ?pulumi.Input.mapOptionalInputValue<TableReference, Map<String, dynamic>>(view, (value) => value.toMap()),
    };
  }

  factory DatasetAccessItem.fromMap(Map<String, dynamic> map) {
    return DatasetAccessItem(
      dataset: (() { final guardedValue = map['dataset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatasetAccessEntry.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      groupByEmail: (() { final guardedValue = map['groupByEmail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      iamMember: (() { final guardedValue = map['iamMember']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      role: (() { final guardedValue = map['role']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routine: (() { final guardedValue = map['routine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RoutineReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      specialGroup: (() { final guardedValue = map['specialGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userByEmail: (() { final guardedValue = map['userByEmail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      view: (() { final guardedValue = map['view']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TableReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

