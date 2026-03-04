// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GremlinGraphConflictResolutionPolicy {
  /// The conflict resolution path in the case of LastWriterWins mode.
  final pulumi.Input<String>? conflictResolutionPath;

  /// The procedure to resolve conflicts in the case of custom mode.
  final pulumi.Input<String>? conflictResolutionProcedure;

  /// Indicates the conflict resolution mode. Possible values include: `LastWriterWins`, `Custom`.
  final pulumi.Input<String> mode;

  /// Creates a new [GremlinGraphConflictResolutionPolicy].
  /// [conflictResolutionPath] The conflict resolution path in the case of LastWriterWins mode.
  /// [conflictResolutionProcedure] The procedure to resolve conflicts in the case of custom mode.
  /// [mode] Indicates the conflict resolution mode. Possible values include: `LastWriterWins`, `Custom`.
  GremlinGraphConflictResolutionPolicy({
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

  factory GremlinGraphConflictResolutionPolicy.fromMap(
    Map<String, dynamic> map,
  ) {
    return GremlinGraphConflictResolutionPolicy(
      conflictResolutionPath: (() {
        final guardedValue = map['conflictResolutionPath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      conflictResolutionProcedure: (() {
        final guardedValue = map['conflictResolutionProcedure'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}
