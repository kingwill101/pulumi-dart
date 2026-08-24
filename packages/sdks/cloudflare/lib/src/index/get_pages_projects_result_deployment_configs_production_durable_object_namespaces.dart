// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPagesProjectsResultDeploymentConfigsProductionDurableObjectNamespaces {
  /// ID of the Durable Object namespace.
  final pulumi.Input<String> namespaceId;

  /// Creates a new [GetPagesProjectsResultDeploymentConfigsProductionDurableObjectNamespaces].
  /// [namespaceId] ID of the Durable Object namespace.
  const GetPagesProjectsResultDeploymentConfigsProductionDurableObjectNamespaces({
    required this.namespaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespaceId': namespaceId,
    };
  }

  factory GetPagesProjectsResultDeploymentConfigsProductionDurableObjectNamespaces.fromMap(Map<String, dynamic> map) {
    return GetPagesProjectsResultDeploymentConfigsProductionDurableObjectNamespaces(
      namespaceId: pulumi.Input.fromValue(map['namespaceId'] as String),
    );
  }
}
