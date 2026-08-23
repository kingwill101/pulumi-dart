// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ospolicy_assignment_instance_filter_inventory.dart';
import 'ospolicy_assignment_label_set.dart';

/// Filters to select target VMs for an assignment. If more than one filter criteria is specified below, a VM will be selected if and only if it satisfies all of them.
class OSPolicyAssignmentInstanceFilter {
  /// Target all VMs in the project. If true, no other criteria is permitted.
  final pulumi.Input<bool>? all;
  /// List of label sets used for VM exclusion. If the list has more than one label set, the VM is excluded if any of the label sets are applicable for the VM.
  final pulumi.Input<List<OSPolicyAssignmentLabelSet>>? exclusionLabels;
  /// List of label sets used for VM inclusion. If the list has more than one `LabelSet`, the VM is included if any of the label sets are applicable for the VM.
  final pulumi.Input<List<OSPolicyAssignmentLabelSet>>? inclusionLabels;
  /// List of inventories to select VMs. A VM is selected if its inventory data matches at least one of the following inventories.
  final pulumi.Input<List<OSPolicyAssignmentInstanceFilterInventory>>? inventories;

  /// Creates a new [OSPolicyAssignmentInstanceFilter].
  /// [all] Target all VMs in the project. If true, no other criteria is permitted.
  /// [exclusionLabels] List of label sets used for VM exclusion. If the list has more than one label set, the VM is excluded if any of the label sets are applicable for the VM.
  /// [inclusionLabels] List of label sets used for VM inclusion. If the list has more than one `LabelSet`, the VM is included if any of the label sets are applicable for the VM.
  /// [inventories] List of inventories to select VMs. A VM is selected if its inventory data matches at least one of the following inventories.
  const OSPolicyAssignmentInstanceFilter({
    this.all,
    this.exclusionLabels,
    this.inclusionLabels,
    this.inventories,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'all': ?all,
      'exclusionLabels': ?pulumi.Input.mapOptionalInputValue<List<OSPolicyAssignmentLabelSet>, List<Map<String, dynamic>>>(exclusionLabels, (value) => pulumi.Input.encodeList<OSPolicyAssignmentLabelSet, Map<String, dynamic>>(value, (value) => value.toMap())),
      'inclusionLabels': ?pulumi.Input.mapOptionalInputValue<List<OSPolicyAssignmentLabelSet>, List<Map<String, dynamic>>>(inclusionLabels, (value) => pulumi.Input.encodeList<OSPolicyAssignmentLabelSet, Map<String, dynamic>>(value, (value) => value.toMap())),
      'inventories': ?pulumi.Input.mapOptionalInputValue<List<OSPolicyAssignmentInstanceFilterInventory>, List<Map<String, dynamic>>>(inventories, (value) => pulumi.Input.encodeList<OSPolicyAssignmentInstanceFilterInventory, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory OSPolicyAssignmentInstanceFilter.fromMap(Map<String, dynamic> map) {
    return OSPolicyAssignmentInstanceFilter(
      all: (() { final guardedValue = map['all']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      exclusionLabels: (() { final guardedValue = map['exclusionLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OSPolicyAssignmentLabelSet>(guardedValue, (value) => OSPolicyAssignmentLabelSet.fromMap((value as Map).cast<String, dynamic>()))); })(),
      inclusionLabels: (() { final guardedValue = map['inclusionLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OSPolicyAssignmentLabelSet>(guardedValue, (value) => OSPolicyAssignmentLabelSet.fromMap((value as Map).cast<String, dynamic>()))); })(),
      inventories: (() { final guardedValue = map['inventories']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OSPolicyAssignmentInstanceFilterInventory>(guardedValue, (value) => OSPolicyAssignmentInstanceFilterInventory.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
