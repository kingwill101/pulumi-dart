// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkerVersionsResultMigrationsRenamedClass {
  final pulumi.Input<String> from;
  final pulumi.Input<String> to;

  /// Creates a new [GetWorkerVersionsResultMigrationsRenamedClass].
  /// [from] Required.
  /// [to] Required.
  const GetWorkerVersionsResultMigrationsRenamedClass({
    required this.from,
    required this.to,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'from': from,
      'to': to,
    };
  }

  factory GetWorkerVersionsResultMigrationsRenamedClass.fromMap(Map<String, dynamic> map) {
    return GetWorkerVersionsResultMigrationsRenamedClass(
      from: pulumi.Input.fromValue(map['from'] as String),
      to: pulumi.Input.fromValue(map['to'] as String),
    );
  }
}
