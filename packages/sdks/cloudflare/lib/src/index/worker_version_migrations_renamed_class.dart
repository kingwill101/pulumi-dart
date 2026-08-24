// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkerVersionMigrationsRenamedClass {
  final pulumi.Input<String?>? from;
  final pulumi.Input<String?>? to;

  /// Creates a new [WorkerVersionMigrationsRenamedClass].
  /// [from] Optional.
  /// [to] Optional.
  const WorkerVersionMigrationsRenamedClass({
    this.from,
    this.to,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'from': ?from,
      'to': ?to,
    };
  }

  factory WorkerVersionMigrationsRenamedClass.fromMap(Map<String, dynamic> map) {
    return WorkerVersionMigrationsRenamedClass(
      from: (() { final guardedValue = map['from']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      to: (() { final guardedValue = map['to']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
