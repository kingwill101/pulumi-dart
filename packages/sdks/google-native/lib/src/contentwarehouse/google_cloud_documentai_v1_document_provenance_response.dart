// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_documentai_v1_document_provenance_parent_response.dart';

/// Structure to identify provenance relationships between annotations in different revisions.
class GoogleCloudDocumentaiV1DocumentProvenanceResponse {
  /// References to the original elements that are replaced.
  final pulumi.Input<List<GoogleCloudDocumentaiV1DocumentProvenanceParentResponse>> parents;
  /// The index of the revision that produced this element.
  final pulumi.Input<int> revision;
  /// The type of provenance operation.
  final pulumi.Input<String> type;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentProvenanceResponse].
  /// [parents] References to the original elements that are replaced.
  /// [revision] The index of the revision that produced this element.
  /// [type] The type of provenance operation.
  GoogleCloudDocumentaiV1DocumentProvenanceResponse({
    required this.parents,
    required this.revision,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parents': pulumi.Input.mapInputValue<List<GoogleCloudDocumentaiV1DocumentProvenanceParentResponse>, List<Map<String, dynamic>>>(parents, (value) => pulumi.Input.encodeList<GoogleCloudDocumentaiV1DocumentProvenanceParentResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'revision': revision,
      'type': type,
    };
  }

  factory GoogleCloudDocumentaiV1DocumentProvenanceResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentProvenanceResponse(
      parents: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDocumentaiV1DocumentProvenanceParentResponse>(map['parents']!, (value) => GoogleCloudDocumentaiV1DocumentProvenanceParentResponse.fromMap((value as Map).cast<String, dynamic>()))),
      revision: pulumi.Input.fromValue(map['revision'] as int),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

