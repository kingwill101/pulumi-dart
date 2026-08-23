// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'os_policy_assignment_os_policy_resource_group_inventory_filter.dart';
import 'os_policy_assignment_os_policy_resource_group_resource.dart';

class OsPolicyAssignmentOsPolicyResourceGroup {
  /// List of inventory filters for the resource
  /// group. The resources in this resource group are applied to the target VM if
  /// it satisfies at least one of the following inventory filters. For example,
  /// to apply this resource group to VMs running either `RHEL` or `CentOS`
  /// operating systems, specify 2 items for the list with following values:
  /// inventory_filters[0].os_short_name='rhel' and
  /// inventory_filters[1].os_short_name='centos' If the list is empty, this
  /// resource group will be applied to the target VM unconditionally. Structure
  /// is documented below.
  final pulumi.Input<List<OsPolicyAssignmentOsPolicyResourceGroupInventoryFilter>>? inventoryFilters;
  /// List of resources configured for this resource
  /// group. The resources are executed in the exact order specified here.
  /// Structure is documented below.
  final pulumi.Input<List<OsPolicyAssignmentOsPolicyResourceGroupResource>> resources;

  /// Creates a new [OsPolicyAssignmentOsPolicyResourceGroup].
  /// [inventoryFilters] List of inventory filters for the resource
  /// [resources] List of resources configured for this resource
  const OsPolicyAssignmentOsPolicyResourceGroup({
    this.inventoryFilters,
    required this.resources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inventoryFilters': ?pulumi.Input.mapOptionalInputValue<List<OsPolicyAssignmentOsPolicyResourceGroupInventoryFilter>, List<Map<String, dynamic>>>(inventoryFilters, (value) => pulumi.Input.encodeList<OsPolicyAssignmentOsPolicyResourceGroupInventoryFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resources': pulumi.Input.mapInputValue<List<OsPolicyAssignmentOsPolicyResourceGroupResource>, List<Map<String, dynamic>>>(resources, (value) => pulumi.Input.encodeList<OsPolicyAssignmentOsPolicyResourceGroupResource, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory OsPolicyAssignmentOsPolicyResourceGroup.fromMap(Map<String, dynamic> map) {
    return OsPolicyAssignmentOsPolicyResourceGroup(
      inventoryFilters: (() { final guardedValue = map['inventoryFilters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OsPolicyAssignmentOsPolicyResourceGroupInventoryFilter>(guardedValue, (value) => OsPolicyAssignmentOsPolicyResourceGroupInventoryFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resources: pulumi.Input.fromValue(pulumi.Input.decodeList<OsPolicyAssignmentOsPolicyResourceGroupResource>(map['resources']!, (value) => OsPolicyAssignmentOsPolicyResourceGroupResource.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
