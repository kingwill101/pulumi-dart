// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetContentScanningExpressionsResult {
  /// Defines the unique ID for this Content Scanning custom expression.
  final pulumi.Input<String> id;
  /// Defines the custom content extraction expression used to reach content objects in the request.
  final pulumi.Input<String> payload;

  /// Creates a new [GetContentScanningExpressionsResult].
  /// [id] Defines the unique ID for this Content Scanning custom expression.
  /// [payload] Defines the custom content extraction expression used to reach content objects in the request.
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
