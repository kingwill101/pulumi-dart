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
  JitApproverDefinition({
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
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      id: (map['id'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

