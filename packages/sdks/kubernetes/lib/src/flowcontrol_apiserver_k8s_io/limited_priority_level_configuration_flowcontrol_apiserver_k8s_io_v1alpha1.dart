// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'limit_response_flowcontrol_apiserver_k8s_io_v1alpha1.dart';

/// LimitedPriorityLevelConfiguration specifies how to handle requests that are subject to limits. It addresses two issues:
/// * How are requests for this priority level limited?
/// * What should be done with requests that exceed the limit?
class LimitedPriorityLevelConfigurationFlowcontrolApiserverK8sIoV1alpha1 {
  /// `assuredConcurrencyShares` (ACS) configures the execution limit, which is a limit on the number of requests of this priority level that may be exeucting at a given time.  ACS must be a positive number. The server's concurrency limit (SCL) is divided among the concurrency-controlled priority levels in proportion to their assured concurrency shares. This produces the assured concurrency value (ACV) --- the number of requests that may be executing at a time --- for each such priority level:
  ///
  /// ACV(l) = ceil( SCL * ACS(l) / ( sum[priority levels k] ACS(k) ) )
  ///
  /// bigger numbers of ACS mean more reserved concurrent requests (at the expense of every other PL). This field has a default value of 30.
  final pulumi.Input<int?>? assuredConcurrencyShares;
  /// `limitResponse` indicates what to do with requests that can not be executed right now
  final pulumi.Input<LimitResponseFlowcontrolApiserverK8sIoV1alpha1?>? limitResponse;

  /// Creates a new [LimitedPriorityLevelConfigurationFlowcontrolApiserverK8sIoV1alpha1].
  /// [assuredConcurrencyShares] `assuredConcurrencyShares` (ACS) configures the execution limit, which is a limit on the number of requests of this priority level that may be exeucting at a given time.  ACS must be a positive number. The server's concurrency limit (SCL) is divided among the concurrency-controlled priority levels in proportion to their assured concurrency shares. This produces the assured concurrency value (ACV) --- the number of requests that may be executing at a time --- for each such priority level:
  /// [limitResponse] `limitResponse` indicates what to do with requests that can not be executed right now
  const LimitedPriorityLevelConfigurationFlowcontrolApiserverK8sIoV1alpha1({
    this.assuredConcurrencyShares,
    this.limitResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assuredConcurrencyShares': ?assuredConcurrencyShares,
      'limitResponse': ?pulumi.Input.mapOptionalInputValue<LimitResponseFlowcontrolApiserverK8sIoV1alpha1, Map<String, dynamic>>(limitResponse, (value) => value.toMap()),
    };
  }

  factory LimitedPriorityLevelConfigurationFlowcontrolApiserverK8sIoV1alpha1.fromMap(Map<String, dynamic> map) {
    return LimitedPriorityLevelConfigurationFlowcontrolApiserverK8sIoV1alpha1(
      assuredConcurrencyShares: (() { final guardedValue = map['assuredConcurrencyShares']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      limitResponse: (() { final guardedValue = map['limitResponse']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LimitResponseFlowcontrolApiserverK8sIoV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
