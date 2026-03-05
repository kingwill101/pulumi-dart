// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_documentai_v1_bounding_poly_response.dart';

/// Represents a weak reference to a page element within a document.
class GoogleCloudDocumentaiV1DocumentPageAnchorPageRefResponse {
  /// Optional. Identifies the bounding polygon of a layout element on the page.
  final pulumi.Input<GoogleCloudDocumentaiV1BoundingPolyResponse> boundingPoly;
  /// Optional. Confidence of detected page element, if applicable. Range `[0, 1]`.
  final pulumi.Input<double> confidence;
  /// Optional. Deprecated. Use PageRef.bounding_poly instead.
  final pulumi.Input<String> layoutId;
  /// Optional. The type of the layout element that is being referenced if any.
  final pulumi.Input<String> layoutType;
  /// Index into the Document.pages element, for example using `Document.pages` to locate the related page element. This field is skipped when its value is the default `0`. See https://developers.google.com/protocol-buffers/docs/proto3#json.
  final pulumi.Input<String> page;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentPageAnchorPageRefResponse].
  /// [boundingPoly] Optional. Identifies the bounding polygon of a layout element on the page.
  /// [confidence] Optional. Confidence of detected page element, if applicable. Range `[0, 1]`.
  /// [layoutId] Optional. Deprecated. Use PageRef.bounding_poly instead.
  /// [layoutType] Optional. The type of the layout element that is being referenced if any.
  /// [page] Index into the Document.pages element, for example using `Document.pages` to locate the related page element. This field is skipped when its value is the default `0`. See https://developers.google.com/protocol-buffers/docs/proto3#json.
  GoogleCloudDocumentaiV1DocumentPageAnchorPageRefResponse({
    required this.boundingPoly,
    required this.confidence,
    required this.layoutId,
    required this.layoutType,
    required this.page,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'boundingPoly': pulumi.Input.mapInputValue<GoogleCloudDocumentaiV1BoundingPolyResponse, Map<String, dynamic>>(boundingPoly, (value) => value.toMap()),
      'confidence': confidence,
      'layoutId': layoutId,
      'layoutType': layoutType,
      'page': page,
    };
  }

  factory GoogleCloudDocumentaiV1DocumentPageAnchorPageRefResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentPageAnchorPageRefResponse(
      boundingPoly: pulumi.Input.fromValue(GoogleCloudDocumentaiV1BoundingPolyResponse.fromMap((map['boundingPoly']! as Map).cast<String, dynamic>())),
      confidence: pulumi.Input.fromValue(map['confidence'] as double),
      layoutId: pulumi.Input.fromValue(map['layoutId'] as String),
      layoutType: pulumi.Input.fromValue(map['layoutType'] as String),
      page: pulumi.Input.fromValue(map['page'] as String),
    );
  }
}

