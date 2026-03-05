// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_migration_target_type_vmmigration_v1alpha1.dart';

/// {@template pulumi_vmmigration_v1alpha1_group_vmmigration_v1alpha1_args_doc}
/// The set of arguments for Group.
/// {@endtemplate}
/// {@macro pulumi_vmmigration_v1alpha1_group_vmmigration_v1alpha1_args_doc}
class GroupVmmigrationV1alpha1Args {
  /// User-provided description of the group.
  final pulumi.Input<String>? description;
  /// Display name is a user defined name for this group which can be updated.
  final pulumi.Input<String>? displayName;
  /// Required. The group identifier.
  final pulumi.Input<String> groupId;
  final pulumi.Input<String>? location;
  /// Immutable. The target type of this group.
  final pulumi.Input<GroupMigrationTargetTypeVmmigrationV1alpha1>? migrationTargetType;
  final pulumi.Input<String>? project;
  /// A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// Creates a new [GroupVmmigrationV1alpha1Args].
  /// [description] User-provided description of the group.
  /// [displayName] Display name is a user defined name for this group which can be updated.
  /// [groupId] Required. The group identifier.
  /// [location] Optional.
  /// [migrationTargetType] Immutable. The target type of this group.
  /// [project] Optional.
  /// [requestId] A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  GroupVmmigrationV1alpha1Args({
    this.description,
    this.displayName,
    required this.groupId,
    this.location,
    this.migrationTargetType,
    this.project,
    this.requestId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'groupId': groupId,
      'location': ?location,
      'migrationTargetType': ?pulumi.Input.mapOptionalInputValue<GroupMigrationTargetTypeVmmigrationV1alpha1, String>(migrationTargetType, (value) => value.wireValue),
      'project': ?project,
      'requestId': ?requestId,
    };
  }

  factory GroupVmmigrationV1alpha1Args.fromMap(Map<String, dynamic> map) {
    return GroupVmmigrationV1alpha1Args(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      groupId: pulumi.Input.fromValue(map['groupId'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      migrationTargetType: (() { final guardedValue = map['migrationTargetType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GroupMigrationTargetTypeVmmigrationV1alpha1.fromValue(guardedValue as String)); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestId: (() { final guardedValue = map['requestId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

