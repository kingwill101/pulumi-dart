// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// JIT approver definition.
class JitApproverDefinition {
  /// The approver display name.
  final pulumi.Input<String>? displayName;
  /// The approver service principal Id.
  final pulumi.Input<String> id;
  /// The approver type.
  final pulumi.Input<String>? type;

  /// Creates a new [JitApproverDefinition].
  /// [displayName] The approver display name.
  /// [id] The approver service principal Id.
  /// [type] The approver type.
  const JitApproverDefinition({
    this.displayName,
    required this.id,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'id': id,
      'type': ?type,
    };
  }

  factory JitApproverDefinition.fromMap(Map<String, dynamic> map) {
    return JitApproverDefinition(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: pulumi.Input.fromValue(map['id'] as String),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

