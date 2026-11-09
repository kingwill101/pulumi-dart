// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkerVersionExportsReconciliationTransferred {
  /// The source class name that was transferred.
  final pulumi.Input<String?>? class_;
  /// The transfer phase. Currently always `committed`.
  final pulumi.Input<String?>? phase;
  /// The destination script that now owns the namespace.
  final pulumi.Input<String?>? to;

  /// Creates a new [WorkerVersionExportsReconciliationTransferred].
  /// [class_] The source class name that was transferred.
  /// [phase] The transfer phase. Currently always `committed`.
  /// [to] The destination script that now owns the namespace.
  const WorkerVersionExportsReconciliationTransferred({
    this.class_,
    this.phase,
    this.to,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'class': ?class_,
      'phase': ?phase,
      'to': ?to,
    };
  }

  factory WorkerVersionExportsReconciliationTransferred.fromMap(Map<String, dynamic> map) {
    return WorkerVersionExportsReconciliationTransferred(
      class_: (() { final guardedValue = map['class']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      phase: (() { final guardedValue = map['phase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      to: (() { final guardedValue = map['to']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
