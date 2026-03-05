// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_documentai_v1_bounding_poly.dart';
import 'google_cloud_documentai_v1_document_page_layout_orientation.dart';
import 'google_cloud_documentai_v1_document_text_anchor.dart';

/// Visual element describing a layout unit on a page.
class GoogleCloudDocumentaiV1DocumentPageLayout {
  /// The bounding polygon for the Layout.
  final pulumi.Input<GoogleCloudDocumentaiV1BoundingPoly>? boundingPoly;
  /// Confidence of the current Layout within context of the object this layout is for. e.g. confidence can be for a single token, a table, a visual element, etc. depending on context. Range `[0, 1]`.
  final pulumi.Input<double>? confidence;
  /// Detected orientation for the Layout.
  final pulumi.Input<GoogleCloudDocumentaiV1DocumentPageLayoutOrientation>? orientation;
  /// Text anchor indexing into the Document.text.
  final pulumi.Input<GoogleCloudDocumentaiV1DocumentTextAnchor>? textAnchor;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentPageLayout].
  /// [boundingPoly] The bounding polygon for the Layout.
  /// [confidence] Confidence of the current Layout within context of the object this layout is for. e.g. confidence can be for a single token, a table, a visual element, etc. depending on context. Range `[0, 1]`.
  /// [orientation] Detected orientation for the Layout.
  /// [textAnchor] Text anchor indexing into the Document.text.
  GoogleCloudDocumentaiV1DocumentPageLayout({
    this.boundingPoly,
    this.confidence,
    this.orientation,
    this.textAnchor,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'boundingPoly': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDocumentaiV1BoundingPoly, Map<String, dynamic>>(boundingPoly, (value) => value.toMap()),
      'confidence': ?confidence,
      'orientation': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDocumentaiV1DocumentPageLayoutOrientation, String>(orientation, (value) => value.wireValue),
      'textAnchor': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDocumentaiV1DocumentTextAnchor, Map<String, dynamic>>(textAnchor, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDocumentaiV1DocumentPageLayout.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentPageLayout(
      boundingPoly: (() { final guardedValue = map['boundingPoly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDocumentaiV1BoundingPoly.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      confidence: (() { final guardedValue = map['confidence']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      orientation: (() { final guardedValue = map['orientation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDocumentaiV1DocumentPageLayoutOrientation.fromValue(guardedValue as String)); })(),
      textAnchor: (() { final guardedValue = map['textAnchor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDocumentaiV1DocumentTextAnchor.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

