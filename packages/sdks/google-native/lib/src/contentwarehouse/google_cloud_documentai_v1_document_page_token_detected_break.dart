// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_documentai_v1_document_page_token_detected_break_type.dart';

/// Detected break at the end of a Token.
class GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak {
  /// Detected break type.
  final pulumi.Input<GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreakType>? type;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak].
  /// [type] Detected break type.
  GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreakType, String>(type, (value) => value.value),
    };
  }

  factory GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak(
      type: map['type'] == null ? null : (GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreakType.fromValue(map['type']! as String)).input(),
    );
  }
}

