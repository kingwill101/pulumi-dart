// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatabasePostgresqlV2PendingUpdate {
  /// The time when a mandatory update needs to be applied.
  final pulumi.Input<String>? deadline;
  /// A description of the update.
  final pulumi.Input<String>? description;
  /// The date and time a maintenance update will be applied.
  final pulumi.Input<String>? plannedFor;

  /// Creates a new [DatabasePostgresqlV2PendingUpdate].
  /// [deadline] The time when a mandatory update needs to be applied.
  /// [description] A description of the update.
  /// [plannedFor] The date and time a maintenance update will be applied.
  DatabasePostgresqlV2PendingUpdate({
    this.deadline,
    this.description,
    this.plannedFor,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deadline': ?deadline,
      'description': ?description,
      'plannedFor': ?plannedFor,
    };
  }

  factory DatabasePostgresqlV2PendingUpdate.fromMap(Map<String, dynamic> map) {
    return DatabasePostgresqlV2PendingUpdate(
      deadline: (() { final guardedValue = map['deadline']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      plannedFor: (() { final guardedValue = map['plannedFor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

