// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_selection_response.dart';
import 'instance_selection_result_response.dart';

/// Instance flexibility Policy allowing a mixture of VM shapes and provisioning models.
class InstanceFlexibilityPolicyResponse {
  /// Optional. List of instance selection options that the group will use when creating new VMs.
  final pulumi.Input<List<InstanceSelectionResponse>> instanceSelectionList;
  /// A list of instance selection results in the group.
  final pulumi.Input<List<InstanceSelectionResultResponse>> instanceSelectionResults;

  /// Creates a new [InstanceFlexibilityPolicyResponse].
  /// [instanceSelectionList] Optional. List of instance selection options that the group will use when creating new VMs.
  /// [instanceSelectionResults] A list of instance selection results in the group.
  const InstanceFlexibilityPolicyResponse({
    required this.instanceSelectionList,
    required this.instanceSelectionResults,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceSelectionList': pulumi.Input.mapInputValue<List<InstanceSelectionResponse>, List<Map<String, dynamic>>>(instanceSelectionList, (value) => pulumi.Input.encodeList<InstanceSelectionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'instanceSelectionResults': pulumi.Input.mapInputValue<List<InstanceSelectionResultResponse>, List<Map<String, dynamic>>>(instanceSelectionResults, (value) => pulumi.Input.encodeList<InstanceSelectionResultResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory InstanceFlexibilityPolicyResponse.fromMap(Map<String, dynamic> map) {
    return InstanceFlexibilityPolicyResponse(
      instanceSelectionList: pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceSelectionResponse>(map['instanceSelectionList']!, (value) => InstanceSelectionResponse.fromMap((value as Map).cast<String, dynamic>()))),
      instanceSelectionResults: pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceSelectionResultResponse>(map['instanceSelectionResults']!, (value) => InstanceSelectionResultResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
