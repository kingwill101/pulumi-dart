// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'os_policy_assignment_instance_filter_exclusion_label.dart';
import 'os_policy_assignment_instance_filter_inclusion_label.dart';
import 'os_policy_assignment_instance_filter_inventory.dart';

class OsPolicyAssignmentInstanceFilter {
  /// Target all VMs in the project. If true, no other criteria
  /// is permitted.
  final pulumi.Input<bool>? all;
  /// List of label sets used for VM exclusion. If
  /// the list has more than one label set, the VM is excluded if any of the label
  /// sets are applicable for the VM. Structure is
  /// documented below.
  final pulumi.Input<List<OsPolicyAssignmentInstanceFilterExclusionLabel>>? exclusionLabels;
  /// List of label sets used for VM inclusion. If
  /// the list has more than one `LabelSet`, the VM is included if any of the
  /// label sets are applicable for the VM. Structure is
  /// documented below.
  final pulumi.Input<List<OsPolicyAssignmentInstanceFilterInclusionLabel>>? inclusionLabels;
  /// List of inventories to select VMs. A VM is
  /// selected if its inventory data matches at least one of the following
  /// inventories. Structure is documented below.
  final pulumi.Input<List<OsPolicyAssignmentInstanceFilterInventory>>? inventories;

  /// Creates a new [OsPolicyAssignmentInstanceFilter].
  /// [all] Target all VMs in the project. If true, no other criteria
  /// [exclusionLabels] List of label sets used for VM exclusion. If
  /// [inclusionLabels] List of label sets used for VM inclusion. If
  /// [inventories] List of inventories to select VMs. A VM is
  OsPolicyAssignmentInstanceFilter({
    this.all,
    this.exclusionLabels,
    this.inclusionLabels,
    this.inventories,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'all': ?all,
      'exclusionLabels': ?pulumi.Input.mapOptionalInputValue<List<OsPolicyAssignmentInstanceFilterExclusionLabel>, List<Map<String, dynamic>>>(exclusionLabels, (value) => pulumi.Input.encodeList<OsPolicyAssignmentInstanceFilterExclusionLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'inclusionLabels': ?pulumi.Input.mapOptionalInputValue<List<OsPolicyAssignmentInstanceFilterInclusionLabel>, List<Map<String, dynamic>>>(inclusionLabels, (value) => pulumi.Input.encodeList<OsPolicyAssignmentInstanceFilterInclusionLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'inventories': ?pulumi.Input.mapOptionalInputValue<List<OsPolicyAssignmentInstanceFilterInventory>, List<Map<String, dynamic>>>(inventories, (value) => pulumi.Input.encodeList<OsPolicyAssignmentInstanceFilterInventory, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory OsPolicyAssignmentInstanceFilter.fromMap(Map<String, dynamic> map) {
    return OsPolicyAssignmentInstanceFilter(
      all: (() { final guardedValue = map['all']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      exclusionLabels: (() { final guardedValue = map['exclusionLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OsPolicyAssignmentInstanceFilterExclusionLabel>(guardedValue, (value) => OsPolicyAssignmentInstanceFilterExclusionLabel.fromMap((value as Map).cast<String, dynamic>()))); })(),
      inclusionLabels: (() { final guardedValue = map['inclusionLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OsPolicyAssignmentInstanceFilterInclusionLabel>(guardedValue, (value) => OsPolicyAssignmentInstanceFilterInclusionLabel.fromMap((value as Map).cast<String, dynamic>()))); })(),
      inventories: (() { final guardedValue = map['inventories']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OsPolicyAssignmentInstanceFilterInventory>(guardedValue, (value) => OsPolicyAssignmentInstanceFilterInventory.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

