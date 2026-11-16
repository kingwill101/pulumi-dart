// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RemoteImageBuildUlimit {
  /// soft limit
  final pulumi.Input<int> hard;
  /// type of ulimit, e.g. `nofile`
  final pulumi.Input<String> name;
  /// hard limit
  final pulumi.Input<int> soft;

  /// Creates a new [RemoteImageBuildUlimit].
  /// [hard] soft limit
  /// [name] type of ulimit, e.g. `nofile`
  /// [soft] hard limit
  const RemoteImageBuildUlimit({
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

  factory RemoteImageBuildUlimit.fromMap(Map<String, dynamic> map) {
    return RemoteImageBuildUlimit(
      hard: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['hard'])),
      name: pulumi.Input.fromValue(map['name'] as String),
      soft: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['soft'])),
    );
  }
}
