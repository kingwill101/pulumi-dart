// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Detected break at the end of a Token.
class GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreakResponse {
  /// Detected break type.
  final pulumi.Input<String> type;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreakResponse].
  /// [type] Detected break type.
  GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreakResponse({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreakResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreakResponse(
      type: (map['type'] as String).input(),
    );
  }
}

