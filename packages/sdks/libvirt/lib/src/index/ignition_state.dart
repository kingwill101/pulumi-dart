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
  IgnitionState({this.content, this.name, this.path, this.size});

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
      content: (() {
        final guardedValue = map['content'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      path: (() {
        final guardedValue = map['path'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      size: (() {
        final guardedValue = map['size'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
    );
  }
}
