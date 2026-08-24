// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkerScriptMigrationsTransferredClass {
  final pulumi.Input<String?>? from;
  final pulumi.Input<String?>? fromScript;
  final pulumi.Input<String?>? to;

  /// Creates a new [WorkerScriptMigrationsTransferredClass].
  /// [from] Optional.
  /// [fromScript] Optional.
  /// [to] Optional.
  const WorkerScriptMigrationsTransferredClass({
    this.from,
    this.fromScript,
    this.to,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'from': ?from,
      'fromScript': ?fromScript,
      'to': ?to,
    };
  }

  factory WorkerScriptMigrationsTransferredClass.fromMap(Map<String, dynamic> map) {
    return WorkerScriptMigrationsTransferredClass(
      from: (() { final guardedValue = map['from']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fromScript: (() { final guardedValue = map['fromScript']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      to: (() { final guardedValue = map['to']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
