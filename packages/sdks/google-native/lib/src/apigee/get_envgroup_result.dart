// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getEnvgroup.
class GetEnvgroupResult {
  /// The time at which the environment group was created as milliseconds since epoch.
  final String? createdAt;
  /// Host names for this environment group.
  final List<String>? hostnames;
  /// The time at which the environment group was last updated as milliseconds since epoch.
  final String? lastModifiedAt;
  /// ID of the environment group.
  final String? name;
  /// State of the environment group. Values other than ACTIVE means the resource is not ready to use.
  final String? state;

  /// Creates a new [GetEnvgroupResult].
  /// [createdAt] The time at which the environment group was created as milliseconds since epoch.
  /// [hostnames] Host names for this environment group.
  /// [lastModifiedAt] The time at which the environment group was last updated as milliseconds since epoch.
  /// [name] ID of the environment group.
  /// [state] State of the environment group. Values other than ACTIVE means the resource is not ready to use.
  const GetEnvgroupResult({
    this.createdAt,
    this.hostnames,
    this.lastModifiedAt,
    this.name,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': ?createdAt,
      'hostnames': ?hostnames,
      'lastModifiedAt': ?lastModifiedAt,
      'name': ?name,
      'state': ?state,
    };
  }

  factory GetEnvgroupResult.fromMap(Map<String, dynamic> map) {
    return GetEnvgroupResult(
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hostnames: (() { final guardedValue = map['hostnames']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      lastModifiedAt: (() { final guardedValue = map['lastModifiedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
