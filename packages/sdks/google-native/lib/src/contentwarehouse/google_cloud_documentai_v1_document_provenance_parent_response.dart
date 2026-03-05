// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The parent element the current element is based on. Used for referencing/aligning, removal and replacement operations.
class GoogleCloudDocumentaiV1DocumentProvenanceParentResponse {
  /// The index of the parent item in the corresponding item list (eg. list of entities, properties within entities, etc.) in the parent revision.
  final pulumi.Input<int> index;
  /// The index of the index into current revision's parent_ids list.
  final pulumi.Input<int> revision;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentProvenanceParentResponse].
  /// [index] The index of the parent item in the corresponding item list (eg. list of entities, properties within entities, etc.) in the parent revision.
  /// [revision] The index of the index into current revision's parent_ids list.
  GoogleCloudDocumentaiV1DocumentProvenanceParentResponse({
    required this.index,
    required this.revision,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'index': index,
      'revision': revision,
    };
  }

  factory GoogleCloudDocumentaiV1DocumentProvenanceParentResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentProvenanceParentResponse(
      index: pulumi.Input.fromValue(map['index'] as int),
      revision: pulumi.Input.fromValue(map['revision'] as int),
    );
  }
}

