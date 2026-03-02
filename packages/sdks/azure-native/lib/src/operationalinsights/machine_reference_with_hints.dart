// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A machine reference with a hint of the machine's name and operating system.
class MachineReferenceWithHints {
  /// Resource URI.
  final pulumi.Input<String> id;
  /// Specifies the sub-class of the reference.
  /// Expected value is 'ref:machinewithhints'.
  final pulumi.Input<String> kind;

  /// Creates a new [MachineReferenceWithHints].
  /// [id] Resource URI.
  /// [kind] Specifies the sub-class of the reference.
  MachineReferenceWithHints({
    required this.id,
    required this.kind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'kind': kind,
    };
  }

  factory MachineReferenceWithHints.fromMap(Map<String, dynamic> map) {
    return MachineReferenceWithHints(
      id: (map['id'] as String).input(),
      kind: (map['kind'] as String).input(),
    );
  }
}

