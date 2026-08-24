// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkerVersionMigrationsStepTransferredClass {
  final pulumi.Input<String> from;
  final pulumi.Input<String> fromScript;
  final pulumi.Input<String> to;

  /// Creates a new [GetWorkerVersionMigrationsStepTransferredClass].
  /// [from] Required.
  /// [fromScript] Required.
  /// [to] Required.
  const GetWorkerVersionMigrationsStepTransferredClass({
    required this.from,
    required this.fromScript,
    required this.to,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'from': from,
      'fromScript': fromScript,
      'to': to,
    };
  }

  factory GetWorkerVersionMigrationsStepTransferredClass.fromMap(Map<String, dynamic> map) {
    return GetWorkerVersionMigrationsStepTransferredClass(
      from: pulumi.Input.fromValue(map['from'] as String),
      fromScript: pulumi.Input.fromValue(map['fromScript'] as String),
      to: pulumi.Input.fromValue(map['to'] as String),
    );
  }
}
