// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BareMetalAdminClusterMaintenanceConfig {
  /// All IPv4 address from these ranges will be placed into maintenance mode.
  /// Nodes in maintenance mode will be cordoned and drained. When both of these
  /// are true, the "baremetal.cluster.gke.io/maintenance" annotation will be set
  /// on the node resource.
  final pulumi.Input<List<String>> maintenanceAddressCidrBlocks;

  /// Creates a new [BareMetalAdminClusterMaintenanceConfig].
  /// [maintenanceAddressCidrBlocks] All IPv4 address from these ranges will be placed into maintenance mode.
  BareMetalAdminClusterMaintenanceConfig({
    required this.maintenanceAddressCidrBlocks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maintenanceAddressCidrBlocks': maintenanceAddressCidrBlocks,
    };
  }

  factory BareMetalAdminClusterMaintenanceConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminClusterMaintenanceConfig(
      maintenanceAddressCidrBlocks: pulumi.Input.fromValue((map['maintenanceAddressCidrBlocks'] as List).cast<String>()),
    );
  }
}

