// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering IcebergNamespace resources.
class IcebergNamespaceState {
  /// The name of the IcebergCatalog.
  final pulumi.Input<String?>? catalog;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The unique identifier of the namespace.
  final pulumi.Input<String?>? namespaceId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// User-defined properties for the namespace.
  final pulumi.Input<Map<String, String>?>? properties;

  /// Creates a new [IcebergNamespaceState].
  /// [catalog] The name of the IcebergCatalog.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [namespaceId] The unique identifier of the namespace.
  /// [project] The ID of the project in which the resource belongs.
  /// [properties] User-defined properties for the namespace.
  const IcebergNamespaceState({
    this.catalog,
    this.deletionPolicy,
    this.namespaceId,
    this.project,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalog': ?catalog,
      'deletionPolicy': ?deletionPolicy,
      'namespaceId': ?namespaceId,
      'project': ?project,
      'properties': ?properties,
    };
  }

  factory IcebergNamespaceState.fromMap(Map<String, dynamic> map) {
    return IcebergNamespaceState(
      catalog: (() { final guardedValue = map['catalog']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespaceId: (() { final guardedValue = map['namespaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
