// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkerVersionMigrationsRenamedClass {
  final pulumi.Input<String> from;
  final pulumi.Input<String> to;

  /// Creates a new [GetWorkerVersionMigrationsRenamedClass].
  /// [from] Required.
  /// [to] Required.
  const GetWorkerVersionMigrationsRenamedClass({
    required this.from,
    required this.to,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'from': from,
      'to': to,
    };
  }

  factory GetWorkerVersionMigrationsRenamedClass.fromMap(Map<String, dynamic> map) {
    return GetWorkerVersionMigrationsRenamedClass(
      from: pulumi.Input.fromValue(map['from'] as String),
      to: pulumi.Input.fromValue(map['to'] as String),
    );
  }
}
