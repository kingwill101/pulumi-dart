// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for Binary Authorization.
class BinaryAuthorizationResponse {
  /// Mode of operation for binauthz policy evaluation. If unspecified, defaults to DISABLED.
  final pulumi.Input<String> evaluationMode;

  /// Creates a new [BinaryAuthorizationResponse].
  /// [evaluationMode] Mode of operation for binauthz policy evaluation. If unspecified, defaults to DISABLED.
  const BinaryAuthorizationResponse({
    required this.evaluationMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'evaluationMode': evaluationMode,
    };
  }

  factory BinaryAuthorizationResponse.fromMap(Map<String, dynamic> map) {
    return BinaryAuthorizationResponse(
      evaluationMode: pulumi.Input.fromValue(map['evaluationMode'] as String),
    );
  }
}

