// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A Sole Tenant node type.
class SoleTenantNodeTypeMigrationcenterV1alpha1 {
  /// Name of the Sole Tenant node. Consult https://cloud.google.com/compute/docs/nodes/sole-tenant-nodes
  final pulumi.Input<String>? nodeName;

  /// Creates a new [SoleTenantNodeTypeMigrationcenterV1alpha1].
  /// [nodeName] Name of the Sole Tenant node. Consult https://cloud.google.com/compute/docs/nodes/sole-tenant-nodes
  SoleTenantNodeTypeMigrationcenterV1alpha1({
    this.nodeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeName': ?nodeName,
    };
  }

  factory SoleTenantNodeTypeMigrationcenterV1alpha1.fromMap(Map<String, dynamic> map) {
    return SoleTenantNodeTypeMigrationcenterV1alpha1(
      nodeName: (() { final guardedValue = map['nodeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

