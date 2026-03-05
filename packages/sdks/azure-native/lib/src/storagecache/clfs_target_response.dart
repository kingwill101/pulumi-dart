// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties pertaining to the ClfsTarget
class ClfsTargetResponse {
  /// Resource ID of storage container.
  final pulumi.Input<String>? target;

  /// Creates a new [ClfsTargetResponse].
  /// [target] Resource ID of storage container.
  ClfsTargetResponse({
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'target': ?target,
    };
  }

  factory ClfsTargetResponse.fromMap(Map<String, dynamic> map) {
    return ClfsTargetResponse(
      target: (() { final guardedValue = map['target']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

