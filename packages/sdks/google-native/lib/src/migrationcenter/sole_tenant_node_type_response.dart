// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A Sole Tenant node type.
class SoleTenantNodeTypeResponse {
  /// Name of the Sole Tenant node. Consult https://cloud.google.com/compute/docs/nodes/sole-tenant-nodes
  final pulumi.Input<String> nodeName;

  /// Creates a new [SoleTenantNodeTypeResponse].
  /// [nodeName] Name of the Sole Tenant node. Consult https://cloud.google.com/compute/docs/nodes/sole-tenant-nodes
  SoleTenantNodeTypeResponse({
    required this.nodeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeName': nodeName,
    };
  }

  factory SoleTenantNodeTypeResponse.fromMap(Map<String, dynamic> map) {
    return SoleTenantNodeTypeResponse(
      nodeName: (map['nodeName'] as String).input(),
    );
  }
}

