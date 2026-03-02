// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'else_condition.dart';
import 'if_condition.dart';

/// The storage task action represents conditional statements and operations to be performed on target objects.
class StorageTaskAction {
  /// The else block of storage task operation
  final pulumi.Input<ElseCondition>? else_;
  /// The if block of storage task operation
  final pulumi.Input<IfCondition> if_;

  /// Creates a new [StorageTaskAction].
  /// [else_] The else block of storage task operation
  /// [if_] The if block of storage task operation
  StorageTaskAction({
    this.else_,
    required this.if_,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'else': ?pulumi.Input.mapOptionalInputValue<ElseCondition, Map<String, dynamic>>(else_, (value) => value.toMap()),
      'if': pulumi.Input.mapInputValue<IfCondition, Map<String, dynamic>>(if_, (value) => value.toMap()),
    };
  }

  factory StorageTaskAction.fromMap(Map<String, dynamic> map) {
    return StorageTaskAction(
      else_: map['else'] == null ? null : (ElseCondition.fromMap((map['else'] as Map).cast<String, dynamic>())).input(),
      if_: (IfCondition.fromMap((map['if'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

