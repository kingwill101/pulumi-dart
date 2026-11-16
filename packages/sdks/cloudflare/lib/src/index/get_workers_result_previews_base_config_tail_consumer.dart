// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkersResultPreviewsBaseConfigTailConsumer {
  /// Name of the consumer Worker.
  final pulumi.Input<String> name;

  /// Creates a new [GetWorkersResultPreviewsBaseConfigTailConsumer].
  /// [name] Name of the consumer Worker.
  const GetWorkersResultPreviewsBaseConfigTailConsumer({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory GetWorkersResultPreviewsBaseConfigTailConsumer.fromMap(Map<String, dynamic> map) {
    return GetWorkersResultPreviewsBaseConfigTailConsumer(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
