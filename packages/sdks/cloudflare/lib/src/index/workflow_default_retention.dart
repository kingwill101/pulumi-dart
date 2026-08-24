// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkflowDefaultRetention {
  /// Specifies the duration in milliseconds or as a string like '5 minutes'.
  final pulumi.Input<dynamic>? errorRetention;
  /// Specifies the duration in milliseconds or as a string like '5 minutes'.
  final pulumi.Input<dynamic>? successRetention;

  /// Creates a new [WorkflowDefaultRetention].
  /// [errorRetention] Specifies the duration in milliseconds or as a string like '5 minutes'.
  /// [successRetention] Specifies the duration in milliseconds or as a string like '5 minutes'.
  const WorkflowDefaultRetention({
    this.errorRetention,
    this.successRetention,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorRetention': ?errorRetention,
      'successRetention': ?successRetention,
    };
  }

  factory WorkflowDefaultRetention.fromMap(Map<String, dynamic> map) {
    return WorkflowDefaultRetention(
      errorRetention: (() { final guardedValue = map['errorRetention']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      successRetention: (() { final guardedValue = map['successRetention']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
