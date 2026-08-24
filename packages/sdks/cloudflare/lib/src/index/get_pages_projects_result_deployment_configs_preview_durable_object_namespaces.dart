// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPagesProjectsResultDeploymentConfigsPreviewDurableObjectNamespaces {
  /// ID of the Durable Object namespace.
  final pulumi.Input<String> namespaceId;

  /// Creates a new [GetPagesProjectsResultDeploymentConfigsPreviewDurableObjectNamespaces].
  /// [namespaceId] ID of the Durable Object namespace.
  const GetPagesProjectsResultDeploymentConfigsPreviewDurableObjectNamespaces({
    required this.namespaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespaceId': namespaceId,
    };
  }

  factory GetPagesProjectsResultDeploymentConfigsPreviewDurableObjectNamespaces.fromMap(Map<String, dynamic> map) {
    return GetPagesProjectsResultDeploymentConfigsPreviewDurableObjectNamespaces(
      namespaceId: pulumi.Input.fromValue(map['namespaceId'] as String),
    );
  }
}
