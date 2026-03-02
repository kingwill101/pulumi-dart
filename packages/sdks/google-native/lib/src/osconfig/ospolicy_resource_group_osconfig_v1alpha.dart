// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ospolicy_inventory_filter_osconfig_v1alpha.dart';
import 'ospolicy_osfilter.dart';
import 'ospolicy_resource_osconfig_v1alpha.dart';

/// Resource groups provide a mechanism to group OS policy resources. Resource groups enable OS policy authors to create a single OS policy to be applied to VMs running different operating Systems. When the OS policy is applied to a target VM, the appropriate resource group within the OS policy is selected based on the `OSFilter` specified within the resource group.
class OSPolicyResourceGroupOsconfigV1alpha {
  /// List of inventory filters for the resource group. The resources in this resource group are applied to the target VM if it satisfies at least one of the following inventory filters. For example, to apply this resource group to VMs running either `RHEL` or `CentOS` operating systems, specify 2 items for the list with following values: inventory_filters[0].os_short_name='rhel' and inventory_filters[1].os_short_name='centos' If the list is empty, this resource group will be applied to the target VM unconditionally.
  final pulumi.Input<List<OSPolicyInventoryFilterOsconfigV1alpha>>? inventoryFilters;
  /// Deprecated. Use the `inventory_filters` field instead. Used to specify the OS filter for a resource group
  final pulumi.Input<OSPolicyOSFilter>? osFilter;
  /// List of resources configured for this resource group. The resources are executed in the exact order specified here.
  final pulumi.Input<List<OSPolicyResourceOsconfigV1alpha>> resources;

  /// Creates a new [OSPolicyResourceGroupOsconfigV1alpha].
  /// [inventoryFilters] List of inventory filters for the resource group. The resources in this resource group are applied to the target VM if it satisfies at least one of the following inventory filters. For example, to apply this resource group to VMs running either `RHEL` or `CentOS` operating systems, specify 2 items for the list with following values: inventory_filters[0].os_short_name='rhel' and inventory_filters[1].os_short_name='centos' If the list is empty, this resource group will be applied to the target VM unconditionally.
  /// [osFilter] Deprecated. Use the `inventory_filters` field instead. Used to specify the OS filter for a resource group
  /// [resources] List of resources configured for this resource group. The resources are executed in the exact order specified here.
  OSPolicyResourceGroupOsconfigV1alpha({
    this.inventoryFilters,
    this.osFilter,
    required this.resources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inventoryFilters': ?pulumi.Input.mapOptionalInputValue<List<OSPolicyInventoryFilterOsconfigV1alpha>, List<Map<String, dynamic>>>(inventoryFilters, (value) => pulumi.Input.encodeList<OSPolicyInventoryFilterOsconfigV1alpha, Map<String, dynamic>>(value, (value) => value.toMap())),
      'osFilter': ?pulumi.Input.mapOptionalInputValue<OSPolicyOSFilter, Map<String, dynamic>>(osFilter, (value) => value.toMap()),
      'resources': pulumi.Input.mapInputValue<List<OSPolicyResourceOsconfigV1alpha>, List<Map<String, dynamic>>>(resources, (value) => pulumi.Input.encodeList<OSPolicyResourceOsconfigV1alpha, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory OSPolicyResourceGroupOsconfigV1alpha.fromMap(Map<String, dynamic> map) {
    return OSPolicyResourceGroupOsconfigV1alpha(
      inventoryFilters: map['inventoryFilters'] == null ? null : (pulumi.Input.decodeList<OSPolicyInventoryFilterOsconfigV1alpha>(map['inventoryFilters'], (value) => OSPolicyInventoryFilterOsconfigV1alpha.fromMap((value as Map).cast<String, dynamic>()))).input(),
      osFilter: map['osFilter'] == null ? null : (OSPolicyOSFilter.fromMap((map['osFilter'] as Map).cast<String, dynamic>())).input(),
      resources: (pulumi.Input.decodeList<OSPolicyResourceOsconfigV1alpha>(map['resources'], (value) => OSPolicyResourceOsconfigV1alpha.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

