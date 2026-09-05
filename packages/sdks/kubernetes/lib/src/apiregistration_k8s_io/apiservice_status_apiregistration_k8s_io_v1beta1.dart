// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'apiservice_condition_apiregistration_k8s_io_v1beta1.dart';

/// APIServiceStatus contains derived information about an API server
class APIServiceStatusApiregistrationK8sIoV1beta1 {
  /// Current service state of apiService.
  final pulumi.Input<List<APIServiceConditionApiregistrationK8sIoV1beta1>?>? conditions;

  /// Creates a new [APIServiceStatusApiregistrationK8sIoV1beta1].
  /// [conditions] Current service state of apiService.
  const APIServiceStatusApiregistrationK8sIoV1beta1({
    this.conditions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<APIServiceConditionApiregistrationK8sIoV1beta1>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<APIServiceConditionApiregistrationK8sIoV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory APIServiceStatusApiregistrationK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return APIServiceStatusApiregistrationK8sIoV1beta1(
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<APIServiceConditionApiregistrationK8sIoV1beta1>(guardedValue, (value) => APIServiceConditionApiregistrationK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
