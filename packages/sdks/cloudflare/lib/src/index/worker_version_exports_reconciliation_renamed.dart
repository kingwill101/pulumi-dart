// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkerVersionExportsReconciliationRenamed {
  /// The original (source) class name.
  final pulumi.Input<String?>? from;
  /// The new class name (`renamedTo`).
  final pulumi.Input<String?>? to;

  /// Creates a new [WorkerVersionExportsReconciliationRenamed].
  /// [from] The original (source) class name.
  /// [to] The new class name (`renamedTo`).
  const WorkerVersionExportsReconciliationRenamed({
    this.from,
    this.to,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'from': ?from,
      'to': ?to,
    };
  }

  factory WorkerVersionExportsReconciliationRenamed.fromMap(Map<String, dynamic> map) {
    return WorkerVersionExportsReconciliationRenamed(
      from: (() { final guardedValue = map['from']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      to: (() { final guardedValue = map['to']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
