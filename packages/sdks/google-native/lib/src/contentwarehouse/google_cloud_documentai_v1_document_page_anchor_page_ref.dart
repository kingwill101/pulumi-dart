// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_documentai_v1_bounding_poly.dart';
import 'google_cloud_documentai_v1_document_page_anchor_page_ref_layout_type.dart';

/// Represents a weak reference to a page element within a document.
class GoogleCloudDocumentaiV1DocumentPageAnchorPageRef {
  /// Optional. Identifies the bounding polygon of a layout element on the page.
  final pulumi.Input<GoogleCloudDocumentaiV1BoundingPoly>? boundingPoly;
  /// Optional. Confidence of detected page element, if applicable. Range `[0, 1]`.
  final pulumi.Input<double>? confidence;
  /// Optional. Deprecated. Use PageRef.bounding_poly instead.
  final pulumi.Input<String>? layoutId;
  /// Optional. The type of the layout element that is being referenced if any.
  final pulumi.Input<GoogleCloudDocumentaiV1DocumentPageAnchorPageRefLayoutType>? layoutType;
  /// Index into the Document.pages element, for example using `Document.pages` to locate the related page element. This field is skipped when its value is the default `0`. See https://developers.google.com/protocol-buffers/docs/proto3#json.
  final pulumi.Input<String> page;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentPageAnchorPageRef].
  /// [boundingPoly] Optional. Identifies the bounding polygon of a layout element on the page.
  /// [confidence] Optional. Confidence of detected page element, if applicable. Range `[0, 1]`.
  /// [layoutId] Optional. Deprecated. Use PageRef.bounding_poly instead.
  /// [layoutType] Optional. The type of the layout element that is being referenced if any.
  /// [page] Index into the Document.pages element, for example using `Document.pages` to locate the related page element. This field is skipped when its value is the default `0`. See https://developers.google.com/protocol-buffers/docs/proto3#json.
  GoogleCloudDocumentaiV1DocumentPageAnchorPageRef({
    this.boundingPoly,
    this.confidence,
    this.layoutId,
    this.layoutType,
    required this.page,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'boundingPoly': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDocumentaiV1BoundingPoly, Map<String, dynamic>>(boundingPoly, (value) => value.toMap()),
      'confidence': ?confidence,
      'layoutId': ?layoutId,
      'layoutType': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDocumentaiV1DocumentPageAnchorPageRefLayoutType, String>(layoutType, (value) => value.value),
      'page': page,
    };
  }

  factory GoogleCloudDocumentaiV1DocumentPageAnchorPageRef.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentPageAnchorPageRef(
      boundingPoly: map['boundingPoly'] == null ? null : (GoogleCloudDocumentaiV1BoundingPoly.fromMap((map['boundingPoly'] as Map).cast<String, dynamic>())).input(),
      confidence: map['confidence'] == null ? null : (map['confidence'] as double).input(),
      layoutId: map['layoutId'] == null ? null : (map['layoutId'] as String).input(),
      layoutType: map['layoutType'] == null ? null : (GoogleCloudDocumentaiV1DocumentPageAnchorPageRefLayoutType.fromValue(map['layoutType'] as String)).input(),
      page: (map['page'] as String).input(),
    );
  }
}

