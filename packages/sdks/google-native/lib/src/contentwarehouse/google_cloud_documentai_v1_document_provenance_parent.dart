// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The parent element the current element is based on. Used for referencing/aligning, removal and replacement operations.
class GoogleCloudDocumentaiV1DocumentProvenanceParent {
  /// The id of the parent provenance.
  final pulumi.Input<int>? id;
  /// The index of the parent item in the corresponding item list (eg. list of entities, properties within entities, etc.) in the parent revision.
  final pulumi.Input<int>? index;
  /// The index of the index into current revision's parent_ids list.
  final pulumi.Input<int>? revision;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentProvenanceParent].
  /// [id] The id of the parent provenance.
  /// [index] The index of the parent item in the corresponding item list (eg. list of entities, properties within entities, etc.) in the parent revision.
  /// [revision] The index of the index into current revision's parent_ids list.
  GoogleCloudDocumentaiV1DocumentProvenanceParent({
    this.id,
    this.index,
    this.revision,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'index': ?index,
      'revision': ?revision,
    };
  }

  factory GoogleCloudDocumentaiV1DocumentProvenanceParent.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentProvenanceParent(
      id: map['id'] == null ? null : (map['id'] as int).input(),
      index: map['index'] == null ? null : (map['index'] as int).input(),
      revision: map['revision'] == null ? null : (map['revision'] as int).input(),
    );
  }
}

