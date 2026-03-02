// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'apiservice_condition_patch_apiregistration_k8s_io_v1beta1.dart';

/// APIServiceStatus contains derived information about an API server
class APIServiceStatusPatchApiregistrationK8sIoV1beta1 {
  /// Current service state of apiService.
  final pulumi.Input<List<APIServiceConditionPatchApiregistrationK8sIoV1beta1>>? conditions;

  /// Creates a new [APIServiceStatusPatchApiregistrationK8sIoV1beta1].
  /// [conditions] Current service state of apiService.
  APIServiceStatusPatchApiregistrationK8sIoV1beta1({
    this.conditions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<APIServiceConditionPatchApiregistrationK8sIoV1beta1>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<APIServiceConditionPatchApiregistrationK8sIoV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory APIServiceStatusPatchApiregistrationK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return APIServiceStatusPatchApiregistrationK8sIoV1beta1(
      conditions: map['conditions'] == null ? null : (pulumi.Input.decodeList<APIServiceConditionPatchApiregistrationK8sIoV1beta1>(map['conditions']!, (value) => APIServiceConditionPatchApiregistrationK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

