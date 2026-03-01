// ignore_for_file: unused_element, unnecessary_cast


/// A Sole Tenant node type.
class SoleTenantNodeType {
  /// Name of the Sole Tenant node. Consult https://cloud.google.com/compute/docs/nodes/sole-tenant-nodes
  final String? nodeName;

  /// Creates a new [SoleTenantNodeType].
  /// [nodeName] Name of the Sole Tenant node. Consult https://cloud.google.com/compute/docs/nodes/sole-tenant-nodes
  SoleTenantNodeType({
    this.nodeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeName': ?nodeName,
    };
  }

  factory SoleTenantNodeType.fromMap(Map<String, dynamic> map) {
    return SoleTenantNodeType(
      nodeName: map['nodeName'] == null ? null : map['nodeName'] as String,
    );
  }
}

