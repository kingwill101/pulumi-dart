// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkerTailConsumer {
  /// Name of the consumer Worker.
  final pulumi.Input<String> name;

  /// Creates a new [GetWorkerTailConsumer].
  /// [name] Name of the consumer Worker.
  const GetWorkerTailConsumer({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory GetWorkerTailConsumer.fromMap(Map<String, dynamic> map) {
    return GetWorkerTailConsumer(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
