// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_documentai_v1_bounding_poly_response.dart';
import 'google_cloud_documentai_v1_document_text_anchor_response.dart';

/// Visual element describing a layout unit on a page.
class GoogleCloudDocumentaiV1DocumentPageLayoutResponse {
  /// The bounding polygon for the Layout.
  final pulumi.Input<GoogleCloudDocumentaiV1BoundingPolyResponse> boundingPoly;
  /// Confidence of the current Layout within context of the object this layout is for. e.g. confidence can be for a single token, a table, a visual element, etc. depending on context. Range `[0, 1]`.
  final pulumi.Input<double> confidence;
  /// Detected orientation for the Layout.
  final pulumi.Input<String> orientation;
  /// Text anchor indexing into the Document.text.
  final pulumi.Input<GoogleCloudDocumentaiV1DocumentTextAnchorResponse> textAnchor;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentPageLayoutResponse].
  /// [boundingPoly] The bounding polygon for the Layout.
  /// [confidence] Confidence of the current Layout within context of the object this layout is for. e.g. confidence can be for a single token, a table, a visual element, etc. depending on context. Range `[0, 1]`.
  /// [orientation] Detected orientation for the Layout.
  /// [textAnchor] Text anchor indexing into the Document.text.
  GoogleCloudDocumentaiV1DocumentPageLayoutResponse({
    required this.boundingPoly,
    required this.confidence,
    required this.orientation,
    required this.textAnchor,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'boundingPoly': pulumi.Input.mapInputValue<GoogleCloudDocumentaiV1BoundingPolyResponse, Map<String, dynamic>>(boundingPoly, (value) => value.toMap()),
      'confidence': confidence,
      'orientation': orientation,
      'textAnchor': pulumi.Input.mapInputValue<GoogleCloudDocumentaiV1DocumentTextAnchorResponse, Map<String, dynamic>>(textAnchor, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDocumentaiV1DocumentPageLayoutResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentPageLayoutResponse(
      boundingPoly: pulumi.Input.fromValue(GoogleCloudDocumentaiV1BoundingPolyResponse.fromMap((map['boundingPoly']! as Map).cast<String, dynamic>())),
      confidence: pulumi.Input.fromValue(map['confidence'] as double),
      orientation: pulumi.Input.fromValue(map['orientation'] as String),
      textAnchor: pulumi.Input.fromValue(GoogleCloudDocumentaiV1DocumentTextAnchorResponse.fromMap((map['textAnchor']! as Map).cast<String, dynamic>())),
    );
  }
}

