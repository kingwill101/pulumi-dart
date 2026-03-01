// ignore_for_file: unused_element, unnecessary_cast


/// POSIX Group definition to represent a group in a POSIX compliant system.
class PosixGroupResponse {
  /// GID of the POSIX group.
  final String gid;
  /// Name of the POSIX group.
  final String name;
  /// System identifier for which group name and gid apply to. If not specified it will default to empty value.
  final String systemId;

  /// Creates a new [PosixGroupResponse].
  /// [gid] GID of the POSIX group.
  /// [name] Name of the POSIX group.
  /// [systemId] System identifier for which group name and gid apply to. If not specified it will default to empty value.
  PosixGroupResponse({
    required this.gid,
    required this.name,
    required this.systemId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gid': gid,
      'name': name,
      'systemId': systemId,
    };
  }

  factory PosixGroupResponse.fromMap(Map<String, dynamic> map) {
    return PosixGroupResponse(
      gid: map['gid'] as String,
      name: map['name'] as String,
      systemId: map['systemId'] as String,
    );
  }
}

