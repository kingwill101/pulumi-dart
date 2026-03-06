// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// BareMetalAdminMaintenanceConfig specifies configurations to put bare metal Admin cluster CRs nodes in and out of maintenance.
class BareMetalAdminMaintenanceConfigResponse {
  /// All IPv4 address from these ranges will be placed into maintenance mode. Nodes in maintenance mode will be cordoned and drained. When both of these are true, the "baremetal.cluster.gke.io/maintenance" annotation will be set on the node resource.
  final pulumi.Input<List<String>> maintenanceAddressCidrBlocks;

  /// Creates a new [BareMetalAdminMaintenanceConfigResponse].
  /// [maintenanceAddressCidrBlocks] All IPv4 address from these ranges will be placed into maintenance mode. Nodes in maintenance mode will be cordoned and drained. When both of these are true, the "baremetal.cluster.gke.io/maintenance" annotation will be set on the node resource.
  const BareMetalAdminMaintenanceConfigResponse({
    required this.maintenanceAddressCidrBlocks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maintenanceAddressCidrBlocks': maintenanceAddressCidrBlocks,
    };
  }

  factory BareMetalAdminMaintenanceConfigResponse.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminMaintenanceConfigResponse(
      maintenanceAddressCidrBlocks: pulumi.Input.fromValue((map['maintenanceAddressCidrBlocks'] as List).cast<String>()),
    );
  }
}

