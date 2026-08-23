// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The teardown task that is next in line to be executed. We support only sequential execution of teardown tasks (i.e. no branching).
class EnterpriseCrmEventbusProtoNextTeardownTask {
  /// Name of the next teardown task.
  final pulumi.Input<String> name;

  /// Creates a new [EnterpriseCrmEventbusProtoNextTeardownTask].
  /// [name] Name of the next teardown task.
  const EnterpriseCrmEventbusProtoNextTeardownTask({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory EnterpriseCrmEventbusProtoNextTeardownTask.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoNextTeardownTask(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
