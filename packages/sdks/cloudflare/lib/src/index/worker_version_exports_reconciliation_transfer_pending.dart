// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkerVersionExportsReconciliationTransferPending {
  /// The target-side class name awaiting transfer.
  final pulumi.Input<String?>? class_;
  /// The source script the namespace will be transferred from.
  final pulumi.Input<String?>? from;

  /// Creates a new [WorkerVersionExportsReconciliationTransferPending].
  /// [class_] The target-side class name awaiting transfer.
  /// [from] The source script the namespace will be transferred from.
  const WorkerVersionExportsReconciliationTransferPending({
    this.class_,
    this.from,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'class': ?class_,
      'from': ?from,
    };
  }

  factory WorkerVersionExportsReconciliationTransferPending.fromMap(Map<String, dynamic> map) {
    return WorkerVersionExportsReconciliationTransferPending(
      class_: (() { final guardedValue = map['class']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      from: (() { final guardedValue = map['from']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
