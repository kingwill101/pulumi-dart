// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetContentScanningExpressionsResult {
  /// defines the unique ID for this custom scan expression.
  final pulumi.Input<String> id;
  /// Defines the ruleset expression to use in matching content objects.
  final pulumi.Input<String> payload;

  /// Creates a new [GetContentScanningExpressionsResult].
  /// [id] defines the unique ID for this custom scan expression.
  /// [payload] Defines the ruleset expression to use in matching content objects.
  const GetContentScanningExpressionsResult({
    required this.id,
    required this.payload,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'payload': payload,
    };
  }

  factory GetContentScanningExpressionsResult.fromMap(Map<String, dynamic> map) {
    return GetContentScanningExpressionsResult(
      id: pulumi.Input.fromValue(map['id'] as String),
      payload: pulumi.Input.fromValue(map['payload'] as String),
    );
  }
}
