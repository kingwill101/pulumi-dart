// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegistryImageBuildUlimit {
  /// soft limit
  final pulumi.Input<int> hard;
  /// type of ulimit, e.g. `nofile`
  final pulumi.Input<String> name;
  /// hard limit
  final pulumi.Input<int> soft;

  /// Creates a new [RegistryImageBuildUlimit].
  /// [hard] soft limit
  /// [name] type of ulimit, e.g. `nofile`
  /// [soft] hard limit
  const RegistryImageBuildUlimit({
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
      hard: pulumi.Input.fromValue(map['hard'] as int),
      name: pulumi.Input.fromValue(map['name'] as String),
      soft: pulumi.Input.fromValue(map['soft'] as int),
    );
  }
}
