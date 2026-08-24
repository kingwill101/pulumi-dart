// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkersScriptMigrationsStepRenamedClass {
  final pulumi.Input<String?>? from;
  final pulumi.Input<String?>? to;

  /// Creates a new [WorkersScriptMigrationsStepRenamedClass].
  /// [from] Optional.
  /// [to] Optional.
  const WorkersScriptMigrationsStepRenamedClass({
    this.from,
    this.to,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'from': ?from,
      'to': ?to,
    };
  }

  factory WorkersScriptMigrationsStepRenamedClass.fromMap(Map<String, dynamic> map) {
    return WorkersScriptMigrationsStepRenamedClass(
      from: (() { final guardedValue = map['from']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      to: (() { final guardedValue = map['to']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
