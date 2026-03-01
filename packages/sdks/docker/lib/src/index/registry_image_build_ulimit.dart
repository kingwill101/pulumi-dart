// ignore_for_file: unused_element, unnecessary_cast


class RegistryImageBuildUlimit {
  /// soft limit
  final int hard;
  /// type of ulimit, e.g. `nofile`
  final String name;
  /// hard limit
  final int soft;

  /// Creates a new [RegistryImageBuildUlimit].
  /// [hard] soft limit
  /// [name] type of ulimit, e.g. `nofile`
  /// [soft] hard limit
  RegistryImageBuildUlimit({
    required this.hard,
    required this.name,
    required this.soft,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hard': hard,
      'name': name,
      'soft': soft,
    };
  }

  factory RegistryImageBuildUlimit.fromMap(Map<String, dynamic> map) {
    return RegistryImageBuildUlimit(
      hard: map['hard'] as int,
      name: map['name'] as String,
      soft: map['soft'] as int,
    );
  }
}

