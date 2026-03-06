// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Datastore partition ID. A partition ID identifies a grouping of entities. The grouping is always by project and namespace, however the namespace ID may be empty. A partition ID contains several dimensions: project ID and namespace ID.
class GooglePrivacyDlpV2PartitionIdResponse {
  /// If not empty, the ID of the namespace to which the entities belong.
  final pulumi.Input<String> namespaceId;
  /// The ID of the project to which the entities belong.
  final pulumi.Input<String> project;

  /// Creates a new [GooglePrivacyDlpV2PartitionIdResponse].
  /// [namespaceId] If not empty, the ID of the namespace to which the entities belong.
  /// [project] The ID of the project to which the entities belong.
  const GooglePrivacyDlpV2PartitionIdResponse({
    required this.namespaceId,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespaceId': namespaceId,
      'project': project,
    };
  }

  factory GooglePrivacyDlpV2PartitionIdResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2PartitionIdResponse(
      namespaceId: pulumi.Input.fromValue(map['namespaceId'] as String),
      project: pulumi.Input.fromValue(map['project'] as String),
    );
  }
}

