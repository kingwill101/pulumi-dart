// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'else_condition_response.dart';
import 'if_condition_response.dart';

/// The storage task action represents conditional statements and operations to be performed on target objects.
class StorageTaskActionResponse {
  /// The else block of storage task operation
  final pulumi.Input<ElseConditionResponse>? else_;
  /// The if block of storage task operation
  final pulumi.Input<IfConditionResponse> if_;

  /// Creates a new [StorageTaskActionResponse].
  /// [else_] The else block of storage task operation
  /// [if_] The if block of storage task operation
  const StorageTaskActionResponse({
    this.else_,
    required this.if_,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'else': ?pulumi.Input.mapOptionalInputValue<ElseConditionResponse, Map<String, dynamic>>(else_, (value) => value.toMap()),
      'if': pulumi.Input.mapInputValue<IfConditionResponse, Map<String, dynamic>>(if_, (value) => value.toMap()),
    };
  }

  factory StorageTaskActionResponse.fromMap(Map<String, dynamic> map) {
    return StorageTaskActionResponse(
      else_: (() { final guardedValue = map['else']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ElseConditionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      if_: pulumi.Input.fromValue(IfConditionResponse.fromMap((map['if']! as Map).cast<String, dynamic>())),
    );
  }
}

