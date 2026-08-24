// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPagesProjectsResultDeploymentConfigsPreviewKvNamespaces {
  /// ID of the KV namespace.
  final pulumi.Input<String> namespaceId;

  /// Creates a new [GetPagesProjectsResultDeploymentConfigsPreviewKvNamespaces].
  /// [namespaceId] ID of the KV namespace.
  const GetPagesProjectsResultDeploymentConfigsPreviewKvNamespaces({
    required this.namespaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespaceId': namespaceId,
    };
  }

  factory GetPagesProjectsResultDeploymentConfigsPreviewKvNamespaces.fromMap(Map<String, dynamic> map) {
    return GetPagesProjectsResultDeploymentConfigsPreviewKvNamespaces(
      namespaceId: pulumi.Input.fromValue(map['namespaceId'] as String),
    );
  }
}
