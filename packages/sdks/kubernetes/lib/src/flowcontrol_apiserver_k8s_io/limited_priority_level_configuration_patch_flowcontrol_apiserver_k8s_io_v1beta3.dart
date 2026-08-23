// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'limit_response_patch_flowcontrol_apiserver_k8s_io_v1beta3.dart';

/// LimitedPriorityLevelConfiguration specifies how to handle requests that are subject to limits. It addresses two issues:
/// - How are requests for this priority level limited?
/// - What should be done with requests that exceed the limit?
class LimitedPriorityLevelConfigurationPatchFlowcontrolApiserverK8sIoV1beta3 {
  /// `borrowingLimitPercent`, if present, configures a limit on how many seats this priority level can borrow from other priority levels. The limit is known as this level's BorrowingConcurrencyLimit (BorrowingCL) and is a limit on the total number of seats that this level may borrow at any one time. This field holds the ratio of that limit to the level's nominal concurrency limit. When this field is non-nil, it must hold a non-negative integer and the limit is calculated as follows.
  ///
  /// BorrowingCL(i) = round( NominalCL(i) * borrowingLimitPercent(i)/100.0 )
  ///
  /// The value of this field can be more than 100, implying that this priority level can borrow a number of seats that is greater than its own nominal concurrency limit (NominalCL). When this field is left `nil`, the limit is effectively infinite.
  final pulumi.Input<int>? borrowingLimitPercent;
  /// `lendablePercent` prescribes the fraction of the level's NominalCL that can be borrowed by other priority levels. The value of this field must be between 0 and 100, inclusive, and it defaults to 0. The number of seats that other levels can borrow from this level, known as this level's LendableConcurrencyLimit (LendableCL), is defined as follows.
  ///
  /// LendableCL(i) = round( NominalCL(i) * lendablePercent(i)/100.0 )
  final pulumi.Input<int>? lendablePercent;
  /// `limitResponse` indicates what to do with requests that can not be executed right now
  final pulumi.Input<LimitResponsePatchFlowcontrolApiserverK8sIoV1beta3>? limitResponse;
  /// `nominalConcurrencyShares` (NCS) contributes to the computation of the NominalConcurrencyLimit (NominalCL) of this level. This is the number of execution seats available at this priority level. This is used both for requests dispatched from this priority level as well as requests dispatched from other priority levels borrowing seats from this level. The server's concurrency limit (ServerCL) is divided among the Limited priority levels in proportion to their NCS values:
  ///
  /// NominalCL(i)  = ceil( ServerCL * NCS(i) / sum_ncs ) sum_ncs = sum[limited priority level k] NCS(k)
  ///
  /// Bigger numbers mean a larger nominal concurrency limit, at the expense of every other Limited priority level. This field has a default value of 30.
  final pulumi.Input<int>? nominalConcurrencyShares;

  /// Creates a new [LimitedPriorityLevelConfigurationPatchFlowcontrolApiserverK8sIoV1beta3].
  /// [borrowingLimitPercent] `borrowingLimitPercent`, if present, configures a limit on how many seats this priority level can borrow from other priority levels. The limit is known as this level's BorrowingConcurrencyLimit (BorrowingCL) and is a limit on the total number of seats that this level may borrow at any one time. This field holds the ratio of that limit to the level's nominal concurrency limit. When this field is non-nil, it must hold a non-negative integer and the limit is calculated as follows.
  /// [lendablePercent] `lendablePercent` prescribes the fraction of the level's NominalCL that can be borrowed by other priority levels. The value of this field must be between 0 and 100, inclusive, and it defaults to 0. The number of seats that other levels can borrow from this level, known as this level's LendableConcurrencyLimit (LendableCL), is defined as follows.
  /// [limitResponse] `limitResponse` indicates what to do with requests that can not be executed right now
  /// [nominalConcurrencyShares] `nominalConcurrencyShares` (NCS) contributes to the computation of the NominalConcurrencyLimit (NominalCL) of this level. This is the number of execution seats available at this priority level. This is used both for requests dispatched from this priority level as well as requests dispatched from other priority levels borrowing seats from this level. The server's concurrency limit (ServerCL) is divided among the Limited priority levels in proportion to their NCS values:
  const LimitedPriorityLevelConfigurationPatchFlowcontrolApiserverK8sIoV1beta3({
    this.borrowingLimitPercent,
    this.lendablePercent,
    this.limitResponse,
    this.nominalConcurrencyShares,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'borrowingLimitPercent': ?borrowingLimitPercent,
      'lendablePercent': ?lendablePercent,
      'limitResponse': ?pulumi.Input.mapOptionalInputValue<LimitResponsePatchFlowcontrolApiserverK8sIoV1beta3, Map<String, dynamic>>(limitResponse, (value) => value.toMap()),
      'nominalConcurrencyShares': ?nominalConcurrencyShares,
    };
  }

  factory LimitedPriorityLevelConfigurationPatchFlowcontrolApiserverK8sIoV1beta3.fromMap(Map<String, dynamic> map) {
    return LimitedPriorityLevelConfigurationPatchFlowcontrolApiserverK8sIoV1beta3(
      borrowingLimitPercent: (() { final guardedValue = map['borrowingLimitPercent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      lendablePercent: (() { final guardedValue = map['lendablePercent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      limitResponse: (() { final guardedValue = map['limitResponse']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LimitResponsePatchFlowcontrolApiserverK8sIoV1beta3.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      nominalConcurrencyShares: (() { final guardedValue = map['nominalConcurrencyShares']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
