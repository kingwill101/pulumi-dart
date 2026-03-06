// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ospolicy_assignment_instance_filter_inventory_response.dart';
import 'ospolicy_assignment_label_set_response.dart';

/// Filters to select target VMs for an assignment. If more than one filter criteria is specified below, a VM will be selected if and only if it satisfies all of them.
class OSPolicyAssignmentInstanceFilterResponse {
  /// Target all VMs in the project. If true, no other criteria is permitted.
  final pulumi.Input<bool> all;
  /// List of label sets used for VM exclusion. If the list has more than one label set, the VM is excluded if any of the label sets are applicable for the VM.
  final pulumi.Input<List<OSPolicyAssignmentLabelSetResponse>> exclusionLabels;
  /// List of label sets used for VM inclusion. If the list has more than one `LabelSet`, the VM is included if any of the label sets are applicable for the VM.
  final pulumi.Input<List<OSPolicyAssignmentLabelSetResponse>> inclusionLabels;
  /// List of inventories to select VMs. A VM is selected if its inventory data matches at least one of the following inventories.
  final pulumi.Input<List<OSPolicyAssignmentInstanceFilterInventoryResponse>> inventories;

  /// Creates a new [OSPolicyAssignmentInstanceFilterResponse].
  /// [all] Target all VMs in the project. If true, no other criteria is permitted.
  /// [exclusionLabels] List of label sets used for VM exclusion. If the list has more than one label set, the VM is excluded if any of the label sets are applicable for the VM.
  /// [inclusionLabels] List of label sets used for VM inclusion. If the list has more than one `LabelSet`, the VM is included if any of the label sets are applicable for the VM.
  /// [inventories] List of inventories to select VMs. A VM is selected if its inventory data matches at least one of the following inventories.
  const OSPolicyAssignmentInstanceFilterResponse({
    required this.all,
    required this.exclusionLabels,
    required this.inclusionLabels,
    required this.inventories,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'all': all,
      'exclusionLabels': pulumi.Input.mapInputValue<List<OSPolicyAssignmentLabelSetResponse>, List<Map<String, dynamic>>>(exclusionLabels, (value) => pulumi.Input.encodeList<OSPolicyAssignmentLabelSetResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'inclusionLabels': pulumi.Input.mapInputValue<List<OSPolicyAssignmentLabelSetResponse>, List<Map<String, dynamic>>>(inclusionLabels, (value) => pulumi.Input.encodeList<OSPolicyAssignmentLabelSetResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'inventories': pulumi.Input.mapInputValue<List<OSPolicyAssignmentInstanceFilterInventoryResponse>, List<Map<String, dynamic>>>(inventories, (value) => pulumi.Input.encodeList<OSPolicyAssignmentInstanceFilterInventoryResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory OSPolicyAssignmentInstanceFilterResponse.fromMap(Map<String, dynamic> map) {
    return OSPolicyAssignmentInstanceFilterResponse(
      all: pulumi.Input.fromValue(map['all'] as bool),
      exclusionLabels: pulumi.Input.fromValue(pulumi.Input.decodeList<OSPolicyAssignmentLabelSetResponse>(map['exclusionLabels']!, (value) => OSPolicyAssignmentLabelSetResponse.fromMap((value as Map).cast<String, dynamic>()))),
      inclusionLabels: pulumi.Input.fromValue(pulumi.Input.decodeList<OSPolicyAssignmentLabelSetResponse>(map['inclusionLabels']!, (value) => OSPolicyAssignmentLabelSetResponse.fromMap((value as Map).cast<String, dynamic>()))),
      inventories: pulumi.Input.fromValue(pulumi.Input.decodeList<OSPolicyAssignmentInstanceFilterInventoryResponse>(map['inventories']!, (value) => OSPolicyAssignmentInstanceFilterInventoryResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

