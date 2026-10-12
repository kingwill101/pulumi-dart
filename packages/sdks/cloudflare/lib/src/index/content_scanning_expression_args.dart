// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'content_scanning_expression_body.dart';

/// {@template pulumi_index_content_scanning_expression_content_scanning_expression_args_doc}
/// The set of arguments for ContentScanningExpression.
/// {@endtemplate}
/// {@macro pulumi_index_content_scanning_expression_content_scanning_expression_args_doc}
class ContentScanningExpressionArgs {
  final pulumi.Input<List<ContentScanningExpressionBody>> bodies;
  /// Defines the custom content extraction expression used to reach content objects in the request.
  final pulumi.Input<String?>? payload;
  /// Defines an identifier.
  final pulumi.Input<String> zoneId;

  /// Creates a new [ContentScanningExpressionArgs].
  /// [bodies] Required.
  /// [payload] Defines the custom content extraction expression used to reach content objects in the request.
  /// [zoneId] Defines an identifier.
  const ContentScanningExpressionArgs({
    required this.bodies,
    this.payload,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bodies': pulumi.Input.mapInputValue<List<ContentScanningExpressionBody>, List<Map<String, dynamic>>>(bodies, (value) => pulumi.Input.encodeList<ContentScanningExpressionBody, Map<String, dynamic>>(value, (value) => value.toMap())),
      'payload': ?payload,
      'zoneId': zoneId,
    };
  }

  factory ContentScanningExpressionArgs.fromMap(Map<String, dynamic> map) {
    return ContentScanningExpressionArgs(
      bodies: pulumi.Input.fromValue(pulumi.Input.decodeList<ContentScanningExpressionBody>(map['bodies']!, (value) => ContentScanningExpressionBody.fromMap((value as Map).cast<String, dynamic>()))),
      payload: (() { final guardedValue = map['payload']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
