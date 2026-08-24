// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkerVersionMigrationsStepRenamedClass {
  final pulumi.Input<String?>? from;
  final pulumi.Input<String?>? to;

  /// Creates a new [WorkerVersionMigrationsStepRenamedClass].
  /// [from] Optional.
  /// [to] Optional.
  const WorkerVersionMigrationsStepRenamedClass({
    this.from,
    this.to,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'from': ?from,
      'to': ?to,
    };
  }

  factory WorkerVersionMigrationsStepRenamedClass.fromMap(Map<String, dynamic> map) {
    return WorkerVersionMigrationsStepRenamedClass(
      from: (() { final guardedValue = map['from']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      to: (() { final guardedValue = map['to']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
