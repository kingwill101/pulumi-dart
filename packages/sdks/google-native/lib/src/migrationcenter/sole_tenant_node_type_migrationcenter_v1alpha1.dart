// ignore_for_file: unused_element, unnecessary_cast


/// A Sole Tenant node type.
class SoleTenantNodeTypeMigrationcenterV1alpha1 {
  /// Name of the Sole Tenant node. Consult https://cloud.google.com/compute/docs/nodes/sole-tenant-nodes
  final String? nodeName;

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
      nodeName: map['nodeName'] == null ? null : map['nodeName'] as String,
    );
  }
}

