// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Combustion resources.
class CombustionState {
  /// Combustion script content (shell script)
  final pulumi.Input<String>? content;
  /// Name for this combustion resource
  final pulumi.Input<String>? name;
  /// Full path to the generated combustion script file
  final pulumi.Input<String>? path;
  /// Size of the file in bytes
  final pulumi.Input<double>? size;

  /// Creates a new [CombustionState].
  /// [content] Combustion script content (shell script)
  /// [name] Name for this combustion resource
  /// [path] Full path to the generated combustion script file
  /// [size] Size of the file in bytes
  const CombustionState({
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

  factory CombustionState.fromMap(Map<String, dynamic> map) {
    return CombustionState(
      content: (() { final guardedValue = map['content']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

