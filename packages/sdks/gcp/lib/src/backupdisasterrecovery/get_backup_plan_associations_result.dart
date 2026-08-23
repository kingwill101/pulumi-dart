// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backup_plan_associations_association.dart';

/// Result data returned by getBackupPlanAssociations.
class GetBackupPlanAssociationsResult {
  /// A list of the backup plan associations found.
  final List<GetBackupPlanAssociationsAssociation> associations;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String location;
  /// The ID of the project in which the resource belongs.
  final String project;
  final String? resourceType;

  /// Creates a new [GetBackupPlanAssociationsResult].
  /// [associations] A list of the backup plan associations found.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Required.
  /// [project] The ID of the project in which the resource belongs.
  /// [resourceType] Optional.
  const GetBackupPlanAssociationsResult({
    required this.associations,
    required this.id,
    required this.location,
    required this.project,
    this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associations': pulumi.Input.encodeList<GetBackupPlanAssociationsAssociation, Map<String, dynamic>>(associations, (value) => value.toMap()),
      'id': id,
      'location': location,
      'project': project,
      'resourceType': ?resourceType,
    };
  }

  factory GetBackupPlanAssociationsResult.fromMap(Map<String, dynamic> map) {
    return GetBackupPlanAssociationsResult(
      associations: pulumi.Input.decodeList<GetBackupPlanAssociationsAssociation>(map['associations']!, (value) => GetBackupPlanAssociationsAssociation.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      location: map['location'] as String,
      project: map['project'] as String,
      resourceType: (() { final guardedValue = map['resourceType']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
