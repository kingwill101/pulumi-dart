// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backup_plan_associations_association.dart';

/// Result data returned by getBackupPlanAssociations.
class GetBackupPlanAssociationsResult {
  /// A list of the backup plan associations found.
  final List<GetBackupPlanAssociationsAssociation>? associations;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? location;
  /// The ID of the project in which the resource belongs.
  final String? project;
  final String? resourceType;

  /// Creates a new [GetBackupPlanAssociationsResult].
  /// [associations] A list of the backup plan associations found.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Optional.
  /// [project] The ID of the project in which the resource belongs.
  /// [resourceType] Optional.
  const GetBackupPlanAssociationsResult({
    this.associations,
    this.id,
    this.location,
    this.project,
    this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associations': ?(() { final guardedValue = associations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetBackupPlanAssociationsAssociation, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'location': ?location,
      'project': ?project,
      'resourceType': ?resourceType,
    };
  }

  factory GetBackupPlanAssociationsResult.fromMap(Map<String, dynamic> map) {
    return GetBackupPlanAssociationsResult(
      associations: (() { final guardedValue = map['associations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetBackupPlanAssociationsAssociation>(guardedValue, (value) => GetBackupPlanAssociationsAssociation.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceType: (() { final guardedValue = map['resourceType']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
