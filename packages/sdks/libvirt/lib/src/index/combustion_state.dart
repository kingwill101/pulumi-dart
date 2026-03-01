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
  CombustionState({
    pulumi.Output<String>? content,
    pulumi.Output<String>? name,
    pulumi.Output<String>? path,
    pulumi.Output<double>? size,
  }) :
      content = pulumi.Input.asOptionalInput<String>(content),
      name = pulumi.Input.asOptionalInput<String>(name),
      path = pulumi.Input.asOptionalInput<String>(path),
      size = pulumi.Input.asOptionalInput<double>(size);

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
      content: map['content'] == null ? null : pulumi.Output.create<String>(map['content'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      path: map['path'] == null ? null : pulumi.Output.create<String>(map['path'] as String),
      size: map['size'] == null ? null : pulumi.Output.create<double>(map['size'] as double),
    );
  }
}

