// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_access_scope_allowed_data_access_label.dart';
import 'data_access_scope_denied_data_access_label.dart';

/// {@template pulumi_chronicle_data_access_scope_data_access_scope_args_doc}
/// The set of arguments for DataAccessScope.
/// {@endtemplate}
/// {@macro pulumi_chronicle_data_access_scope_data_access_scope_args_doc}
class DataAccessScopeArgs {
  /// Optional. Whether or not the scope allows all labels, allow_all and
  /// allowed_data_access_labels are mutually exclusive and one of them must be
  /// present. denied_data_access_labels can still be used along with allow_all.
  /// When combined with denied_data_access_labels, access will be granted to all
  /// data that doesn't have labels mentioned in denied_data_access_labels. E.g.:
  /// A customer with scope with denied labels A and B and allow_all will be able
  /// to see all data except data labeled with A and data labeled with B and data
  /// with labels A and B.
  final pulumi.Input<bool>? allowAll;
  /// The allowed labels for the scope. There has to be at
  /// least one label allowed for the scope to be valid.
  /// The logical operator for evaluation of the allowed labels is OR.
  /// Either allow_all or allowed_data_access_labels needs to be provided.
  /// E.g.: A customer with scope with allowed labels A and B will be able
  /// to see data with labeled with A or B or (A and B).
  /// Structure is documented below.
  final pulumi.Input<List<DataAccessScopeAllowedDataAccessLabel>>? allowedDataAccessLabels;
  /// Required. The user provided scope id which will become the last part of the name
  /// of the scope resource.
  /// Needs to be compliant with https://google.aip.dev/122
  final pulumi.Input<String> dataAccessScopeId;
  /// Optional. The denied labels for the scope.
  /// The logical operator for evaluation of the denied labels is AND.
  /// E.g.: A customer with scope with denied labels A and B won't be able
  /// to see data labeled with A and data labeled with B
  /// and data with labels A and B.
  /// Structure is documented below.
  final pulumi.Input<List<DataAccessScopeDeniedDataAccessLabel>>? deniedDataAccessLabels;
  /// Optional. A description of the data access scope for a human reader.
  final pulumi.Input<String>? description;
  /// The unique identifier for the Chronicle instance, which is the same as the customer ID.
  final pulumi.Input<String> instance;
  /// The location of the resource. This is the geographical region where the Chronicle instance resides, such as "us" or "europe-west2".
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [DataAccessScopeArgs].
  /// [allowAll] Optional. Whether or not the scope allows all labels, allow_all and
  /// [allowedDataAccessLabels] The allowed labels for the scope. There has to be at
  /// [dataAccessScopeId] Required. The user provided scope id which will become the last part of the name
  /// [deniedDataAccessLabels] Optional. The denied labels for the scope.
  /// [description] Optional. A description of the data access scope for a human reader.
  /// [instance] The unique identifier for the Chronicle instance, which is the same as the customer ID.
  /// [location] The location of the resource. This is the geographical region where the Chronicle instance resides, such as "us" or "europe-west2".
  /// [project] The ID of the project in which the resource belongs.
  DataAccessScopeArgs({
    this.allowAll,
    this.allowedDataAccessLabels,
    required this.dataAccessScopeId,
    this.deniedDataAccessLabels,
    this.description,
    required this.instance,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowAll': ?allowAll,
      'allowedDataAccessLabels': ?pulumi.Input.mapOptionalInputValue<List<DataAccessScopeAllowedDataAccessLabel>, List<Map<String, dynamic>>>(allowedDataAccessLabels, (value) => pulumi.Input.encodeList<DataAccessScopeAllowedDataAccessLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dataAccessScopeId': dataAccessScopeId,
      'deniedDataAccessLabels': ?pulumi.Input.mapOptionalInputValue<List<DataAccessScopeDeniedDataAccessLabel>, List<Map<String, dynamic>>>(deniedDataAccessLabels, (value) => pulumi.Input.encodeList<DataAccessScopeDeniedDataAccessLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'instance': instance,
      'location': location,
      'project': ?project,
    };
  }

  factory DataAccessScopeArgs.fromMap(Map<String, dynamic> map) {
    return DataAccessScopeArgs(
      allowAll: map['allowAll'] == null ? null : (map['allowAll'] as bool).input(),
      allowedDataAccessLabels: map['allowedDataAccessLabels'] == null ? null : (pulumi.Input.decodeList<DataAccessScopeAllowedDataAccessLabel>(map['allowedDataAccessLabels'], (value) => DataAccessScopeAllowedDataAccessLabel.fromMap((value as Map).cast<String, dynamic>()))).input(),
      dataAccessScopeId: (map['dataAccessScopeId'] as String).input(),
      deniedDataAccessLabels: map['deniedDataAccessLabels'] == null ? null : (pulumi.Input.decodeList<DataAccessScopeDeniedDataAccessLabel>(map['deniedDataAccessLabels'], (value) => DataAccessScopeDeniedDataAccessLabel.fromMap((value as Map).cast<String, dynamic>()))).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      instance: (map['instance'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

