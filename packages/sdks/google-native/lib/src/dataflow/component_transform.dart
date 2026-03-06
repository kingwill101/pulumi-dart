// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Description of a transform executed as part of an execution stage.
class ComponentTransform {
  /// Dataflow service generated name for this source.
  final pulumi.Input<String>? name;
  /// User name for the original user transform with which this transform is most closely associated.
  final pulumi.Input<String>? originalTransform;
  /// Human-readable name for this transform; may be user or system generated.
  final pulumi.Input<String>? userName;

  /// Creates a new [ComponentTransform].
  /// [name] Dataflow service generated name for this source.
  /// [originalTransform] User name for the original user transform with which this transform is most closely associated.
  /// [userName] Human-readable name for this transform; may be user or system generated.
  const ComponentTransform({
    this.name,
    this.originalTransform,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'originalTransform': ?originalTransform,
      'userName': ?userName,
    };
  }

  factory ComponentTransform.fromMap(Map<String, dynamic> map) {
    return ComponentTransform(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      originalTransform: (() { final guardedValue = map['originalTransform']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userName: (() { final guardedValue = map['userName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

