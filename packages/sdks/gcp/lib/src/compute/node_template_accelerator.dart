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
  NodeTemplateAccelerator({
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
      acceleratorCount: map['acceleratorCount'] == null ? null : (map['acceleratorCount'] as int).input(),
      acceleratorType: map['acceleratorType'] == null ? null : (map['acceleratorType'] as String).input(),
    );
  }
}

