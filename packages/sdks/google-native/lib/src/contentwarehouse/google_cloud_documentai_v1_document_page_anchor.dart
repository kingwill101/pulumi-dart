// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_documentai_v1_document_page_anchor_page_ref.dart';

/// Referencing the visual context of the entity in the Document.pages. Page anchors can be cross-page, consist of multiple bounding polygons and optionally reference specific layout element types.
class GoogleCloudDocumentaiV1DocumentPageAnchor {
  /// One or more references to visual page elements
  final pulumi.Input<List<GoogleCloudDocumentaiV1DocumentPageAnchorPageRef>>? pageRefs;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentPageAnchor].
  /// [pageRefs] One or more references to visual page elements
  const GoogleCloudDocumentaiV1DocumentPageAnchor({
    this.pageRefs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pageRefs': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDocumentaiV1DocumentPageAnchorPageRef>, List<Map<String, dynamic>>>(pageRefs, (value) => pulumi.Input.encodeList<GoogleCloudDocumentaiV1DocumentPageAnchorPageRef, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GoogleCloudDocumentaiV1DocumentPageAnchor.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentPageAnchor(
      pageRefs: (() { final guardedValue = map['pageRefs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDocumentaiV1DocumentPageAnchorPageRef>(guardedValue, (value) => GoogleCloudDocumentaiV1DocumentPageAnchorPageRef.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
