// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDedicatedInferenceTokensToken {
  /// The date and time when the token was created.
  final pulumi.Input<String> createdAt;
  /// The unique ID of the token.
  final pulumi.Input<String> id;
  /// The name of the token.
  final pulumi.Input<String> name;

  /// Creates a new [GetDedicatedInferenceTokensToken].
  /// [createdAt] The date and time when the token was created.
  /// [id] The unique ID of the token.
  /// [name] The name of the token.
  const GetDedicatedInferenceTokensToken({
    required this.createdAt,
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'id': id,
      'name': name,
    };
  }

  factory GetDedicatedInferenceTokensToken.fromMap(Map<String, dynamic> map) {
    return GetDedicatedInferenceTokensToken(
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
