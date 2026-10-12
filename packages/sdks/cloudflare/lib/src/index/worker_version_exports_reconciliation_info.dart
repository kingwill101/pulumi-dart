// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkerVersionExportsReconciliationInfo {
  /// The class name the info entry is about.
  final pulumi.Input<String?>? class_;
  /// Human-readable explanation.
  final pulumi.Input<String?>? message;
  /// The provisioned namespace the entry relates to, when applicable.
  final pulumi.Input<String?>? namespaceId;
  /// Other Workers in the account that still bind to the affected class. Advisory: while non-empty the tombstone is not yet safe to remove — redeploy these Workers with bindings re-pointed first.
  final pulumi.Input<List<String>?>? referencingScripts;
  /// Stable, machine-readable tag identifying which reconciliation scenario produced an error, warning, or info entry. Clients may branch on this value instead of parsing `message`.
  final pulumi.Input<String?>? scenario;

  /// Creates a new [WorkerVersionExportsReconciliationInfo].
  /// [class_] The class name the info entry is about.
  /// [message] Human-readable explanation.
  /// [namespaceId] The provisioned namespace the entry relates to, when applicable.
  /// [referencingScripts] Other Workers in the account that still bind to the affected class. Advisory: while non-empty the tombstone is not yet safe to remove — redeploy these Workers with bindings re-pointed first.
  /// [scenario] Stable, machine-readable tag identifying which reconciliation scenario produced an error, warning, or info entry. Clients may branch on this value instead of parsing `message`.
  const WorkerVersionExportsReconciliationInfo({
    this.class_,
    this.message,
    this.namespaceId,
    this.referencingScripts,
    this.scenario,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'class': ?class_,
      'message': ?message,
      'namespaceId': ?namespaceId,
      'referencingScripts': ?referencingScripts,
      'scenario': ?scenario,
    };
  }

  factory WorkerVersionExportsReconciliationInfo.fromMap(Map<String, dynamic> map) {
    return WorkerVersionExportsReconciliationInfo(
      class_: (() { final guardedValue = map['class']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespaceId: (() { final guardedValue = map['namespaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      referencingScripts: (() { final guardedValue = map['referencingScripts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      scenario: (() { final guardedValue = map['scenario']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
