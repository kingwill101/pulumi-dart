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
  MachineReferenceWithHintsResponse({
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
      displayNameHint: (map['displayNameHint'] as String).input(),
      id: (map['id'] as String).input(),
      kind: (map['kind'] as String).input(),
      name: (map['name'] as String).input(),
      osFamilyHint: (map['osFamilyHint'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

