// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ospolicy_inventory_filter_response_osconfig_v1alpha.dart';
import 'ospolicy_osfilter_response.dart';
import 'ospolicy_resource_response_osconfig_v1alpha.dart';

/// Resource groups provide a mechanism to group OS policy resources. Resource groups enable OS policy authors to create a single OS policy to be applied to VMs running different operating Systems. When the OS policy is applied to a target VM, the appropriate resource group within the OS policy is selected based on the `OSFilter` specified within the resource group.
class OSPolicyResourceGroupResponseOsconfigV1alpha {
  /// List of inventory filters for the resource group. The resources in this resource group are applied to the target VM if it satisfies at least one of the following inventory filters. For example, to apply this resource group to VMs running either `RHEL` or `CentOS` operating systems, specify 2 items for the list with following values: inventory_filters[0].os_short_name='rhel' and inventory_filters[1].os_short_name='centos' If the list is empty, this resource group will be applied to the target VM unconditionally.
  final pulumi.Input<List<OSPolicyInventoryFilterResponseOsconfigV1alpha>> inventoryFilters;
  /// Deprecated. Use the `inventory_filters` field instead. Used to specify the OS filter for a resource group
  final pulumi.Input<OSPolicyOSFilterResponse> osFilter;
  /// List of resources configured for this resource group. The resources are executed in the exact order specified here.
  final pulumi.Input<List<OSPolicyResourceResponseOsconfigV1alpha>> resources;

  /// Creates a new [OSPolicyResourceGroupResponseOsconfigV1alpha].
  /// [inventoryFilters] List of inventory filters for the resource group. The resources in this resource group are applied to the target VM if it satisfies at least one of the following inventory filters. For example, to apply this resource group to VMs running either `RHEL` or `CentOS` operating systems, specify 2 items for the list with following values: inventory_filters[0].os_short_name='rhel' and inventory_filters[1].os_short_name='centos' If the list is empty, this resource group will be applied to the target VM unconditionally.
  /// [osFilter] Deprecated. Use the `inventory_filters` field instead. Used to specify the OS filter for a resource group
  /// [resources] List of resources configured for this resource group. The resources are executed in the exact order specified here.
  OSPolicyResourceGroupResponseOsconfigV1alpha({
    required this.inventoryFilters,
    required this.osFilter,
    required this.resources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inventoryFilters': pulumi.Input.mapInputValue<List<OSPolicyInventoryFilterResponseOsconfigV1alpha>, List<Map<String, dynamic>>>(inventoryFilters, (value) => pulumi.Input.encodeList<OSPolicyInventoryFilterResponseOsconfigV1alpha, Map<String, dynamic>>(value, (value) => value.toMap())),
      'osFilter': pulumi.Input.mapInputValue<OSPolicyOSFilterResponse, Map<String, dynamic>>(osFilter, (value) => value.toMap()),
      'resources': pulumi.Input.mapInputValue<List<OSPolicyResourceResponseOsconfigV1alpha>, List<Map<String, dynamic>>>(resources, (value) => pulumi.Input.encodeList<OSPolicyResourceResponseOsconfigV1alpha, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory OSPolicyResourceGroupResponseOsconfigV1alpha.fromMap(Map<String, dynamic> map) {
    return OSPolicyResourceGroupResponseOsconfigV1alpha(
      inventoryFilters: pulumi.Input.fromValue(pulumi.Input.decodeList<OSPolicyInventoryFilterResponseOsconfigV1alpha>(map['inventoryFilters']!, (value) => OSPolicyInventoryFilterResponseOsconfigV1alpha.fromMap((value as Map).cast<String, dynamic>()))),
      osFilter: pulumi.Input.fromValue(OSPolicyOSFilterResponse.fromMap((map['osFilter']! as Map).cast<String, dynamic>())),
      resources: pulumi.Input.fromValue(pulumi.Input.decodeList<OSPolicyResourceResponseOsconfigV1alpha>(map['resources']!, (value) => OSPolicyResourceResponseOsconfigV1alpha.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

