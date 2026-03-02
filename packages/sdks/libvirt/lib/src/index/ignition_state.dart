// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Ignition resources.
class IgnitionState {
  /// Ignition configuration content (JSON)
  final pulumi.Input<String>? content;
  /// Name for this ignition resource
  final pulumi.Input<String>? name;
  /// Full path to the generated ignition file
  final pulumi.Input<String>? path;
  /// Size of the file in bytes
  final pulumi.Input<double>? size;

  /// Creates a new [IgnitionState].
  /// [content] Ignition configuration content (JSON)
  /// [name] Name for this ignition resource
  /// [path] Full path to the generated ignition file
  /// [size] Size of the file in bytes
  IgnitionState({
    this.content,
    this.name,
    this.path,
    this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': ?content,
      'name': ?name,
      'path': ?path,
      'size': ?size,
    };
  }

  factory IgnitionState.fromMap(Map<String, dynamic> map) {
    return IgnitionState(
      content: map['content'] == null ? null : (map['content']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      path: map['path'] == null ? null : (map['path']! as String).input(),
      size: map['size'] == null ? null : (map['size']! as double).input(),
    );
  }
}

