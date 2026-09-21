// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'content_scanning_expression_body.dart';

/// Input properties used for looking up and filtering ContentScanningExpression resources.
class ContentScanningExpressionState {
  final pulumi.Input<List<ContentScanningExpressionBody>?>? bodies;
  /// Defines the custom content extraction expression used to reach content objects in the request.
  final pulumi.Input<String?>? payload;
  /// Defines an identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [ContentScanningExpressionState].
  /// [bodies] Optional.
  /// [payload] Defines the custom content extraction expression used to reach content objects in the request.
  /// [zoneId] Defines an identifier.
  const ContentScanningExpressionState({
    this.bodies,
    this.payload,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bodies': ?pulumi.Input.mapOptionalInputValue<List<ContentScanningExpressionBody>, List<Map<String, dynamic>>>(bodies, (value) => pulumi.Input.encodeList<ContentScanningExpressionBody, Map<String, dynamic>>(value, (value) => value.toMap())),
      'payload': ?payload,
      'zoneId': ?zoneId,
    };
  }

  factory ContentScanningExpressionState.fromMap(Map<String, dynamic> map) {
    return ContentScanningExpressionState(
      bodies: (() { final guardedValue = map['bodies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ContentScanningExpressionBody>(guardedValue, (value) => ContentScanningExpressionBody.fromMap((value as Map).cast<String, dynamic>()))); })(),
      payload: (() { final guardedValue = map['payload']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
