// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkerPreviewsBaseConfigTailConsumer {
  /// Name of the consumer Worker.
  final pulumi.Input<String> name;

  /// Creates a new [WorkerPreviewsBaseConfigTailConsumer].
  /// [name] Name of the consumer Worker.
  const WorkerPreviewsBaseConfigTailConsumer({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory WorkerPreviewsBaseConfigTailConsumer.fromMap(Map<String, dynamic> map) {
    return WorkerPreviewsBaseConfigTailConsumer(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
