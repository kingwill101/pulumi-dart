// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkersScriptMigrationsRenamedClass {
  final pulumi.Input<String?>? from;
  final pulumi.Input<String?>? to;

  /// Creates a new [WorkersScriptMigrationsRenamedClass].
  /// [from] Optional.
  /// [to] Optional.
  const WorkersScriptMigrationsRenamedClass({
    this.from,
    this.to,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'from': ?from,
      'to': ?to,
    };
  }

  factory WorkersScriptMigrationsRenamedClass.fromMap(Map<String, dynamic> map) {
    return WorkersScriptMigrationsRenamedClass(
      from: (() { final guardedValue = map['from']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      to: (() { final guardedValue = map['to']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
