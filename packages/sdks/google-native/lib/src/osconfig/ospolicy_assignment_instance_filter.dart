// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ospolicy_assignment_instance_filter_inventory.dart';
import 'ospolicy_assignment_label_set.dart';

/// Filters to select target VMs for an assignment. If more than one filter criteria is specified below, a VM will be selected if and only if it satisfies all of them.
class OSPolicyAssignmentInstanceFilter {
  /// Target all VMs in the project. If true, no other criteria is permitted.
  final bool? all;
  /// List of label sets used for VM exclusion. If the list has more than one label set, the VM is excluded if any of the label sets are applicable for the VM.
  final List<OSPolicyAssignmentLabelSet>? exclusionLabels;
  /// List of label sets used for VM inclusion. If the list has more than one `LabelSet`, the VM is included if any of the label sets are applicable for the VM.
  final List<OSPolicyAssignmentLabelSet>? inclusionLabels;
  /// List of inventories to select VMs. A VM is selected if its inventory data matches at least one of the following inventories.
  final List<OSPolicyAssignmentInstanceFilterInventory>? inventories;

  /// Creates a new [OSPolicyAssignmentInstanceFilter].
  /// [all] Target all VMs in the project. If true, no other criteria is permitted.
  /// [exclusionLabels] List of label sets used for VM exclusion. If the list has more than one label set, the VM is excluded if any of the label sets are applicable for the VM.
  /// [inclusionLabels] List of label sets used for VM inclusion. If the list has more than one `LabelSet`, the VM is included if any of the label sets are applicable for the VM.
  /// [inventories] List of inventories to select VMs. A VM is selected if its inventory data matches at least one of the following inventories.
  OSPolicyAssignmentInstanceFilter({
    this.all,
    this.exclusionLabels,
    this.inclusionLabels,
    this.inventories,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'all': ?all,
      'exclusionLabels': ?exclusionLabels == null ? null : pulumi.Input.encodeList<OSPolicyAssignmentLabelSet, Map<String, dynamic>>(exclusionLabels!, (value) => value.toMap()),
      'inclusionLabels': ?inclusionLabels == null ? null : pulumi.Input.encodeList<OSPolicyAssignmentLabelSet, Map<String, dynamic>>(inclusionLabels!, (value) => value.toMap()),
      'inventories': ?inventories == null ? null : pulumi.Input.encodeList<OSPolicyAssignmentInstanceFilterInventory, Map<String, dynamic>>(inventories!, (value) => value.toMap()),
    };
  }

  factory OSPolicyAssignmentInstanceFilter.fromMap(Map<String, dynamic> map) {
    return OSPolicyAssignmentInstanceFilter(
      all: map['all'] == null ? null : map['all'] as bool,
      exclusionLabels: map['exclusionLabels'] == null ? null : pulumi.Input.decodeList<OSPolicyAssignmentLabelSet>(map['exclusionLabels'], (value) => OSPolicyAssignmentLabelSet.fromMap((value as Map).cast<String, dynamic>())),
      inclusionLabels: map['inclusionLabels'] == null ? null : pulumi.Input.decodeList<OSPolicyAssignmentLabelSet>(map['inclusionLabels'], (value) => OSPolicyAssignmentLabelSet.fromMap((value as Map).cast<String, dynamic>())),
      inventories: map['inventories'] == null ? null : pulumi.Input.decodeList<OSPolicyAssignmentInstanceFilterInventory>(map['inventories'], (value) => OSPolicyAssignmentInstanceFilterInventory.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

