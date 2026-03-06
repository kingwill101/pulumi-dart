// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A machine reference with a hint of the machine's name and operating system.
class MachineReferenceWithHintsResponse {
  /// Last known display name.
  final pulumi.Input<String> displayNameHint;
  /// Resource URI.
  final pulumi.Input<String> id;
  /// Specifies the sub-class of the reference.
  /// Expected value is 'ref:machinewithhints'.
  final pulumi.Input<String> kind;
  /// Resource name.
  final pulumi.Input<String> name;
  /// Last known operating system family.
  final pulumi.Input<String> osFamilyHint;
  /// Resource type qualifier.
  final pulumi.Input<String> type;

  /// Creates a new [MachineReferenceWithHintsResponse].
  /// [displayNameHint] Last known display name.
  /// [id] Resource URI.
  /// [kind] Specifies the sub-class of the reference.
  /// [name] Resource name.
  /// [osFamilyHint] Last known operating system family.
  /// [type] Resource type qualifier.
  const MachineReferenceWithHintsResponse({
    required this.displayNameHint,
    required this.id,
    required this.kind,
    required this.name,
    required this.osFamilyHint,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayNameHint': displayNameHint,
      'id': id,
      'kind': kind,
      'name': name,
      'osFamilyHint': osFamilyHint,
      'type': type,
    };
  }

  factory MachineReferenceWithHintsResponse.fromMap(Map<String, dynamic> map) {
    return MachineReferenceWithHintsResponse(
      displayNameHint: pulumi.Input.fromValue(map['displayNameHint'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      osFamilyHint: pulumi.Input.fromValue(map['osFamilyHint'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

