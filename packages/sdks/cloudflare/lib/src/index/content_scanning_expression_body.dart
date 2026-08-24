// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ContentScanningExpressionBody {
  /// Defines the ruleset expression to use in matching content objects.
  final pulumi.Input<String> payload;

  /// Creates a new [ContentScanningExpressionBody].
  /// [payload] Defines the ruleset expression to use in matching content objects.
  const ContentScanningExpressionBody({
    required this.payload,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'payload': payload,
    };
  }

  factory ContentScanningExpressionBody.fromMap(Map<String, dynamic> map) {
    return ContentScanningExpressionBody(
      payload: pulumi.Input.fromValue(map['payload'] as String),
    );
  }
}
