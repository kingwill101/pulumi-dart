// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkerVersionExportsReconciliationWarning {
  /// The class name the warning is about.
  final pulumi.Input<String?>? class_;
  /// Human-readable explanation of the warning.
  final pulumi.Input<String?>? message;
  /// The provisioned namespace the warning relates to, when applicable.
  final pulumi.Input<String?>? namespaceId;
  /// Stable, machine-readable tag identifying which reconciliation scenario produced an error, warning, or info entry. Clients may branch on this value instead of parsing `message`.
  final pulumi.Input<String?>? scenario;

  /// Creates a new [WorkerVersionExportsReconciliationWarning].
  /// [class_] The class name the warning is about.
  /// [message] Human-readable explanation of the warning.
  /// [namespaceId] The provisioned namespace the warning relates to, when applicable.
  /// [scenario] Stable, machine-readable tag identifying which reconciliation scenario produced an error, warning, or info entry. Clients may branch on this value instead of parsing `message`.
  const WorkerVersionExportsReconciliationWarning({
    this.class_,
    this.message,
    this.namespaceId,
    this.scenario,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'class': ?class_,
      'message': ?message,
      'namespaceId': ?namespaceId,
      'scenario': ?scenario,
    };
  }

  factory WorkerVersionExportsReconciliationWarning.fromMap(Map<String, dynamic> map) {
    return WorkerVersionExportsReconciliationWarning(
      class_: (() { final guardedValue = map['class']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespaceId: (() { final guardedValue = map['namespaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scenario: (() { final guardedValue = map['scenario']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
