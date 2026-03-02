// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// POSIX Group definition to represent a group in a POSIX compliant system.
class PosixGroup {
  /// GID of the POSIX group.
  final pulumi.Input<String>? gid;
  /// Name of the POSIX group.
  final pulumi.Input<String>? name;
  /// System identifier for which group name and gid apply to. If not specified it will default to empty value.
  final pulumi.Input<String>? systemId;

  /// Creates a new [PosixGroup].
  /// [gid] GID of the POSIX group.
  /// [name] Name of the POSIX group.
  /// [systemId] System identifier for which group name and gid apply to. If not specified it will default to empty value.
  PosixGroup({
    this.gid,
    this.name,
    this.systemId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gid': ?gid,
      'name': ?name,
      'systemId': ?systemId,
    };
  }

  factory PosixGroup.fromMap(Map<String, dynamic> map) {
    return PosixGroup(
      gid: map['gid'] == null ? null : (map['gid'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      systemId: map['systemId'] == null ? null : (map['systemId'] as String).input(),
    );
  }
}

