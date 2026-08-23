// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MaterialResponse {
  final pulumi.Input<Map<String, String>> digest;
  final pulumi.Input<String> uri;

  /// Creates a new [MaterialResponse].
  /// [digest] Required.
  /// [uri] Required.
  const MaterialResponse({
    required this.digest,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'digest': digest,
      'uri': uri,
    };
  }

  factory MaterialResponse.fromMap(Map<String, dynamic> map) {
    return MaterialResponse(
      digest: pulumi.Input.fromValue((map['digest'] as Map).cast<String, String>()),
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}
