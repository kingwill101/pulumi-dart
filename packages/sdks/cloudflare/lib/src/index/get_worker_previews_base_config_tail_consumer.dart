// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkerPreviewsBaseConfigTailConsumer {
  /// Name of the consumer Worker.
  final pulumi.Input<String> name;

  /// Creates a new [GetWorkerPreviewsBaseConfigTailConsumer].
  /// [name] Name of the consumer Worker.
  const GetWorkerPreviewsBaseConfigTailConsumer({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory GetWorkerPreviewsBaseConfigTailConsumer.fromMap(Map<String, dynamic> map) {
    return GetWorkerPreviewsBaseConfigTailConsumer(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
