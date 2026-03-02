// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Datastore partition ID. A partition ID identifies a grouping of entities. The grouping is always by project and namespace, however the namespace ID may be empty. A partition ID contains several dimensions: project ID and namespace ID.
class GooglePrivacyDlpV2PartitionId {
  /// If not empty, the ID of the namespace to which the entities belong.
  final pulumi.Input<String>? namespaceId;
  /// The ID of the project to which the entities belong.
  final pulumi.Input<String>? project;

  /// Creates a new [GooglePrivacyDlpV2PartitionId].
  /// [namespaceId] If not empty, the ID of the namespace to which the entities belong.
  /// [project] The ID of the project to which the entities belong.
  GooglePrivacyDlpV2PartitionId({
    this.namespaceId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespaceId': ?namespaceId,
      'project': ?project,
    };
  }

  factory GooglePrivacyDlpV2PartitionId.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2PartitionId(
      namespaceId: map['namespaceId'] == null ? null : (map['namespaceId']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

