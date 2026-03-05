// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SqlContainerConflictResolutionPolicy {
  /// The conflict resolution path in the case of `LastWriterWins` mode.
  final pulumi.Input<String>? conflictResolutionPath;
  /// The procedure to resolve conflicts in the case of `Custom` mode.
  final pulumi.Input<String>? conflictResolutionProcedure;
  /// Indicates the conflict resolution mode. Possible values include: `LastWriterWins`, `Custom`.
  final pulumi.Input<String> mode;

  /// Creates a new [SqlContainerConflictResolutionPolicy].
  /// [conflictResolutionPath] The conflict resolution path in the case of `LastWriterWins` mode.
  /// [conflictResolutionProcedure] The procedure to resolve conflicts in the case of `Custom` mode.
  /// [mode] Indicates the conflict resolution mode. Possible values include: `LastWriterWins`, `Custom`.
  SqlContainerConflictResolutionPolicy({
    this.conflictResolutionPath,
    this.conflictResolutionProcedure,
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conflictResolutionPath': ?conflictResolutionPath,
      'conflictResolutionProcedure': ?conflictResolutionProcedure,
      'mode': mode,
    };
  }

  factory SqlContainerConflictResolutionPolicy.fromMap(Map<String, dynamic> map) {
    return SqlContainerConflictResolutionPolicy(
      conflictResolutionPath: (() { final guardedValue = map['conflictResolutionPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      conflictResolutionProcedure: (() { final guardedValue = map['conflictResolutionProcedure']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}

