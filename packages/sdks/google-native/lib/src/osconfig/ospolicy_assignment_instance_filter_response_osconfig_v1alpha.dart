// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ospolicy_assignment_instance_filter_inventory_response_osconfig_v1alpha.dart';
import 'ospolicy_assignment_label_set_response_osconfig_v1alpha.dart';

/// Filters to select target VMs for an assignment. If more than one filter criteria is specified below, a VM will be selected if and only if it satisfies all of them.
class OSPolicyAssignmentInstanceFilterResponseOsconfigV1alpha {
  /// Target all VMs in the project. If true, no other criteria is permitted.
  final pulumi.Input<bool> all;
  /// List of label sets used for VM exclusion. If the list has more than one label set, the VM is excluded if any of the label sets are applicable for the VM.
  final pulumi.Input<List<OSPolicyAssignmentLabelSetResponseOsconfigV1alpha>> exclusionLabels;
  /// List of label sets used for VM inclusion. If the list has more than one `LabelSet`, the VM is included if any of the label sets are applicable for the VM.
  final pulumi.Input<List<OSPolicyAssignmentLabelSetResponseOsconfigV1alpha>> inclusionLabels;
  /// List of inventories to select VMs. A VM is selected if its inventory data matches at least one of the following inventories.
  final pulumi.Input<List<OSPolicyAssignmentInstanceFilterInventoryResponseOsconfigV1alpha>> inventories;
  /// Deprecated. Use the `inventories` field instead. A VM is selected if it's OS short name matches with any of the values provided in this list.
  final pulumi.Input<List<String>> osShortNames;

  /// Creates a new [OSPolicyAssignmentInstanceFilterResponseOsconfigV1alpha].
  /// [all] Target all VMs in the project. If true, no other criteria is permitted.
  /// [exclusionLabels] List of label sets used for VM exclusion. If the list has more than one label set, the VM is excluded if any of the label sets are applicable for the VM.
  /// [inclusionLabels] List of label sets used for VM inclusion. If the list has more than one `LabelSet`, the VM is included if any of the label sets are applicable for the VM.
  /// [inventories] List of inventories to select VMs. A VM is selected if its inventory data matches at least one of the following inventories.
  /// [osShortNames] Deprecated. Use the `inventories` field instead. A VM is selected if it's OS short name matches with any of the values provided in this list.
  OSPolicyAssignmentInstanceFilterResponseOsconfigV1alpha({
    required this.all,
    required this.exclusionLabels,
    required this.inclusionLabels,
    required this.inventories,
    required this.osShortNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'all': all,
      'exclusionLabels': pulumi.Input.mapInputValue<List<OSPolicyAssignmentLabelSetResponseOsconfigV1alpha>, List<Map<String, dynamic>>>(exclusionLabels, (value) => pulumi.Input.encodeList<OSPolicyAssignmentLabelSetResponseOsconfigV1alpha, Map<String, dynamic>>(value, (value) => value.toMap())),
      'inclusionLabels': pulumi.Input.mapInputValue<List<OSPolicyAssignmentLabelSetResponseOsconfigV1alpha>, List<Map<String, dynamic>>>(inclusionLabels, (value) => pulumi.Input.encodeList<OSPolicyAssignmentLabelSetResponseOsconfigV1alpha, Map<String, dynamic>>(value, (value) => value.toMap())),
      'inventories': pulumi.Input.mapInputValue<List<OSPolicyAssignmentInstanceFilterInventoryResponseOsconfigV1alpha>, List<Map<String, dynamic>>>(inventories, (value) => pulumi.Input.encodeList<OSPolicyAssignmentInstanceFilterInventoryResponseOsconfigV1alpha, Map<String, dynamic>>(value, (value) => value.toMap())),
      'osShortNames': osShortNames,
    };
  }

  factory OSPolicyAssignmentInstanceFilterResponseOsconfigV1alpha.fromMap(Map<String, dynamic> map) {
    return OSPolicyAssignmentInstanceFilterResponseOsconfigV1alpha(
      all: (map['all'] as bool).input(),
      exclusionLabels: (pulumi.Input.decodeList<OSPolicyAssignmentLabelSetResponseOsconfigV1alpha>(map['exclusionLabels'], (value) => OSPolicyAssignmentLabelSetResponseOsconfigV1alpha.fromMap((value as Map).cast<String, dynamic>()))).input(),
      inclusionLabels: (pulumi.Input.decodeList<OSPolicyAssignmentLabelSetResponseOsconfigV1alpha>(map['inclusionLabels'], (value) => OSPolicyAssignmentLabelSetResponseOsconfigV1alpha.fromMap((value as Map).cast<String, dynamic>()))).input(),
      inventories: (pulumi.Input.decodeList<OSPolicyAssignmentInstanceFilterInventoryResponseOsconfigV1alpha>(map['inventories'], (value) => OSPolicyAssignmentInstanceFilterInventoryResponseOsconfigV1alpha.fromMap((value as Map).cast<String, dynamic>()))).input(),
      osShortNames: ((map['osShortNames'] as List).cast<String>()).input(),
    );
  }
}

