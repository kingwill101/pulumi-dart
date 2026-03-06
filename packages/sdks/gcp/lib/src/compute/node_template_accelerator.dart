// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodeTemplateAccelerator {
  /// The number of the guest accelerator cards exposed to this
  /// node template.
  final pulumi.Input<int>? acceleratorCount;
  /// Full or partial URL of the accelerator type resource to expose
  /// to this node template.
  final pulumi.Input<String>? acceleratorType;

  /// Creates a new [NodeTemplateAccelerator].
  /// [acceleratorCount] The number of the guest accelerator cards exposed to this
  /// [acceleratorType] Full or partial URL of the accelerator type resource to expose
  const NodeTemplateAccelerator({
    this.acceleratorCount,
    this.acceleratorType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorCount': ?acceleratorCount,
      'acceleratorType': ?acceleratorType,
    };
  }

  factory NodeTemplateAccelerator.fromMap(Map<String, dynamic> map) {
    return NodeTemplateAccelerator(
      acceleratorCount: (() { final guardedValue = map['acceleratorCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      acceleratorType: (() { final guardedValue = map['acceleratorType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

