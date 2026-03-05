// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Image Quality Defects
class GoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect {
  /// Confidence of detected defect. Range `[0, 1]` where `1` indicates strong confidence that the defect exists.
  final pulumi.Input<double>? confidence;
  /// Name of the defect type. Supported values are: - `quality/defect_blurry` - `quality/defect_noisy` - `quality/defect_dark` - `quality/defect_faint` - `quality/defect_text_too_small` - `quality/defect_document_cutoff` - `quality/defect_text_cutoff` - `quality/defect_glare`
  final pulumi.Input<String>? type;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect].
  /// [confidence] Confidence of detected defect. Range `[0, 1]` where `1` indicates strong confidence that the defect exists.
  /// [type] Name of the defect type. Supported values are: - `quality/defect_blurry` - `quality/defect_noisy` - `quality/defect_dark` - `quality/defect_faint` - `quality/defect_text_too_small` - `quality/defect_document_cutoff` - `quality/defect_text_cutoff` - `quality/defect_glare`
  GoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect({
    this.confidence,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'confidence': ?confidence,
      'type': ?type,
    };
  }

  factory GoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect(
      confidence: (() { final guardedValue = map['confidence']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

