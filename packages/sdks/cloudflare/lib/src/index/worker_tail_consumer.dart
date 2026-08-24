// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkerTailConsumer {
  /// Name of the consumer Worker.
  final pulumi.Input<String> name;

  /// Creates a new [WorkerTailConsumer].
  /// [name] Name of the consumer Worker.
  const WorkerTailConsumer({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory WorkerTailConsumer.fromMap(Map<String, dynamic> map) {
    return WorkerTailConsumer(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
