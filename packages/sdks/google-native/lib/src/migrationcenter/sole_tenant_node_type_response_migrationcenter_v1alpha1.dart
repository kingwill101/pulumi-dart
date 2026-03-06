// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A Sole Tenant node type.
class SoleTenantNodeTypeResponseMigrationcenterV1alpha1 {
  /// Name of the Sole Tenant node. Consult https://cloud.google.com/compute/docs/nodes/sole-tenant-nodes
  final pulumi.Input<String> nodeName;

  /// Creates a new [SoleTenantNodeTypeResponseMigrationcenterV1alpha1].
  /// [nodeName] Name of the Sole Tenant node. Consult https://cloud.google.com/compute/docs/nodes/sole-tenant-nodes
  const SoleTenantNodeTypeResponseMigrationcenterV1alpha1({
    required this.nodeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeName': nodeName,
    };
  }

  factory SoleTenantNodeTypeResponseMigrationcenterV1alpha1.fromMap(Map<String, dynamic> map) {
    return SoleTenantNodeTypeResponseMigrationcenterV1alpha1(
      nodeName: pulumi.Input.fromValue(map['nodeName'] as String),
    );
  }
}

