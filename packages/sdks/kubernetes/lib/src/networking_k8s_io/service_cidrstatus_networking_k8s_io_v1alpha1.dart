// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/condition.dart';

/// ServiceCIDRStatus describes the current state of the ServiceCIDR.
class ServiceCIDRStatusNetworkingK8sIoV1alpha1 {
  /// conditions holds an array of metav1.Condition that describe the state of the ServiceCIDR. Current service state
  final pulumi.Input<List<Condition>>? conditions;

  /// Creates a new [ServiceCIDRStatusNetworkingK8sIoV1alpha1].
  /// [conditions] conditions holds an array of metav1.Condition that describe the state of the ServiceCIDR. Current service state
  ServiceCIDRStatusNetworkingK8sIoV1alpha1({this.conditions});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions':
          ?pulumi.Input.mapOptionalInputValue<
            List<Condition>,
            List<Map<String, dynamic>>
          >(
            conditions,
            (value) => pulumi.Input.encodeList<Condition, Map<String, dynamic>>(
              value,
              (value) => value.toMap(),
            ),
          ),
    };
  }

  factory ServiceCIDRStatusNetworkingK8sIoV1alpha1.fromMap(
    Map<String, dynamic> map,
  ) {
    return ServiceCIDRStatusNetworkingK8sIoV1alpha1(
      conditions: (() {
        final guardedValue = map['conditions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<Condition>(
            guardedValue,
            (value) =>
                Condition.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
    );
  }
}
