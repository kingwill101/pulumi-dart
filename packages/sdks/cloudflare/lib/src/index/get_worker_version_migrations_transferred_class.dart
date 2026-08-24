// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkerVersionMigrationsTransferredClass {
  final pulumi.Input<String> from;
  final pulumi.Input<String> fromScript;
  final pulumi.Input<String> to;

  /// Creates a new [GetWorkerVersionMigrationsTransferredClass].
  /// [from] Required.
  /// [fromScript] Required.
  /// [to] Required.
  const GetWorkerVersionMigrationsTransferredClass({
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

  factory GetWorkerVersionMigrationsTransferredClass.fromMap(Map<String, dynamic> map) {
    return GetWorkerVersionMigrationsTransferredClass(
      from: pulumi.Input.fromValue(map['from'] as String),
      fromScript: pulumi.Input.fromValue(map['fromScript'] as String),
      to: pulumi.Input.fromValue(map['to'] as String),
    );
  }
}
