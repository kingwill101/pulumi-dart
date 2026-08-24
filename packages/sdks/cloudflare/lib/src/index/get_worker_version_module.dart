// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkerVersionModule {
  /// The base64-encoded module content.
  final pulumi.Input<String> contentBase64;
  /// The content type of the module.
  final pulumi.Input<String> contentType;
  /// The name of the module.
  final pulumi.Input<String> name;

  /// Creates a new [GetWorkerVersionModule].
  /// [contentBase64] The base64-encoded module content.
  /// [contentType] The content type of the module.
  /// [name] The name of the module.
  const GetWorkerVersionModule({
    required this.contentBase64,
    required this.contentType,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentBase64': contentBase64,
      'contentType': contentType,
      'name': name,
    };
  }

  factory GetWorkerVersionModule.fromMap(Map<String, dynamic> map) {
    return GetWorkerVersionModule(
      contentBase64: pulumi.Input.fromValue(map['contentBase64'] as String),
      contentType: pulumi.Input.fromValue(map['contentType'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
