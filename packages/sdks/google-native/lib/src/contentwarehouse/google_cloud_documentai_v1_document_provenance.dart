// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_documentai_v1_document_provenance_parent.dart';
import 'google_cloud_documentai_v1_document_provenance_type.dart';

/// Structure to identify provenance relationships between annotations in different revisions.
class GoogleCloudDocumentaiV1DocumentProvenance {
  /// The Id of this operation. Needs to be unique within the scope of the revision.
  final pulumi.Input<int>? id;
  /// References to the original elements that are replaced.
  final pulumi.Input<List<GoogleCloudDocumentaiV1DocumentProvenanceParent>>? parents;
  /// The index of the revision that produced this element.
  final pulumi.Input<int>? revision;
  /// The type of provenance operation.
  final pulumi.Input<GoogleCloudDocumentaiV1DocumentProvenanceType>? type;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentProvenance].
  /// [id] The Id of this operation. Needs to be unique within the scope of the revision.
  /// [parents] References to the original elements that are replaced.
  /// [revision] The index of the revision that produced this element.
  /// [type] The type of provenance operation.
  const GoogleCloudDocumentaiV1DocumentProvenance({
    this.id,
    this.parents,
    this.revision,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'parents': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDocumentaiV1DocumentProvenanceParent>, List<Map<String, dynamic>>>(parents, (value) => pulumi.Input.encodeList<GoogleCloudDocumentaiV1DocumentProvenanceParent, Map<String, dynamic>>(value, (value) => value.toMap())),
      'revision': ?revision,
      'type': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDocumentaiV1DocumentProvenanceType, String>(type, (value) => value.wireValue),
    };
  }

  factory GoogleCloudDocumentaiV1DocumentProvenance.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentProvenance(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      parents: (() { final guardedValue = map['parents']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDocumentaiV1DocumentProvenanceParent>(guardedValue, (value) => GoogleCloudDocumentaiV1DocumentProvenanceParent.fromMap((value as Map).cast<String, dynamic>()))); })(),
      revision: (() { final guardedValue = map['revision']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDocumentaiV1DocumentProvenanceType.fromValue(guardedValue as String)); })(),
    );
  }
}
