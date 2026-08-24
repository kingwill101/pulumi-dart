// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkersResultTailConsumer {
  /// Name of the consumer Worker.
  final pulumi.Input<String> name;

  /// Creates a new [GetWorkersResultTailConsumer].
  /// [name] Name of the consumer Worker.
  const GetWorkersResultTailConsumer({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory GetWorkersResultTailConsumer.fromMap(Map<String, dynamic> map) {
    return GetWorkersResultTailConsumer(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
