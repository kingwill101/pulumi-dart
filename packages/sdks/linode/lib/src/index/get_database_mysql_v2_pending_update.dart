// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDatabaseMysqlV2PendingUpdate {
  /// The time when a mandatory update needs to be applied.
  final pulumi.Input<String> deadline;

  /// A description of the update.
  final pulumi.Input<String> description;

  /// The date and time a maintenance update will be applied.
  final pulumi.Input<String> plannedFor;

  /// Creates a new [GetDatabaseMysqlV2PendingUpdate].
  /// [deadline] The time when a mandatory update needs to be applied.
  /// [description] A description of the update.
  /// [plannedFor] The date and time a maintenance update will be applied.
  GetDatabaseMysqlV2PendingUpdate({
    required this.deadline,
    required this.description,
    required this.plannedFor,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deadline': deadline,
      'description': description,
      'plannedFor': plannedFor,
    };
  }

  factory GetDatabaseMysqlV2PendingUpdate.fromMap(Map<String, dynamic> map) {
    return GetDatabaseMysqlV2PendingUpdate(
      deadline: pulumi.Input.fromValue(map['deadline'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      plannedFor: pulumi.Input.fromValue(map['plannedFor'] as String),
    );
  }
}
