// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPagesProjectDeploymentConfigsPreviewDurableObjectNamespaces {
  /// ID of the Durable Object namespace.
  final pulumi.Input<String> namespaceId;

  /// Creates a new [GetPagesProjectDeploymentConfigsPreviewDurableObjectNamespaces].
  /// [namespaceId] ID of the Durable Object namespace.
  const GetPagesProjectDeploymentConfigsPreviewDurableObjectNamespaces({
    required this.namespaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespaceId': namespaceId,
    };
  }

  factory GetPagesProjectDeploymentConfigsPreviewDurableObjectNamespaces.fromMap(Map<String, dynamic> map) {
    return GetPagesProjectDeploymentConfigsPreviewDurableObjectNamespaces(
      namespaceId: pulumi.Input.fromValue(map['namespaceId'] as String),
    );
  }
}
