// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPagesProjectDeploymentConfigsProductionDurableObjectNamespaces {
  /// ID of the Durable Object namespace.
  final pulumi.Input<String> namespaceId;

  /// Creates a new [GetPagesProjectDeploymentConfigsProductionDurableObjectNamespaces].
  /// [namespaceId] ID of the Durable Object namespace.
  const GetPagesProjectDeploymentConfigsProductionDurableObjectNamespaces({
    required this.namespaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespaceId': namespaceId,
    };
  }

  factory GetPagesProjectDeploymentConfigsProductionDurableObjectNamespaces.fromMap(Map<String, dynamic> map) {
    return GetPagesProjectDeploymentConfigsProductionDurableObjectNamespaces(
      namespaceId: pulumi.Input.fromValue(map['namespaceId'] as String),
    );
  }
}
