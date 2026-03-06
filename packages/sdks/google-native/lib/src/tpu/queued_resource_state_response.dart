// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'failed_data_response.dart';

/// QueuedResourceState defines the details of the QueuedResource request.
class QueuedResourceStateResponse {
  /// Further data for the accepted state.
  final pulumi.Input<Map<String, dynamic>> acceptedData;
  /// Further data for the active state.
  final pulumi.Input<Map<String, dynamic>> activeData;
  /// Further data for the creating state.
  final pulumi.Input<Map<String, dynamic>> creatingData;
  /// Further data for the deleting state.
  final pulumi.Input<Map<String, dynamic>> deletingData;
  /// Further data for the failed state.
  final pulumi.Input<FailedDataResponse> failedData;
  /// Further data for the provisioning state.
  final pulumi.Input<Map<String, dynamic>> provisioningData;
  /// State of the QueuedResource request.
  final pulumi.Input<String> state;
  /// The initiator of the QueuedResources's current state.
  final pulumi.Input<String> stateInitiator;
  /// Further data for the suspended state.
  final pulumi.Input<Map<String, dynamic>> suspendedData;
  /// Further data for the suspending state.
  final pulumi.Input<Map<String, dynamic>> suspendingData;

  /// Creates a new [QueuedResourceStateResponse].
  /// [acceptedData] Further data for the accepted state.
  /// [activeData] Further data for the active state.
  /// [creatingData] Further data for the creating state.
  /// [deletingData] Further data for the deleting state.
  /// [failedData] Further data for the failed state.
  /// [provisioningData] Further data for the provisioning state.
  /// [state] State of the QueuedResource request.
  /// [stateInitiator] The initiator of the QueuedResources's current state.
  /// [suspendedData] Further data for the suspended state.
  /// [suspendingData] Further data for the suspending state.
  const QueuedResourceStateResponse({
    required this.acceptedData,
    required this.activeData,
    required this.creatingData,
    required this.deletingData,
    required this.failedData,
    required this.provisioningData,
    required this.state,
    required this.stateInitiator,
    required this.suspendedData,
    required this.suspendingData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptedData': acceptedData,
      'activeData': activeData,
      'creatingData': creatingData,
      'deletingData': deletingData,
      'failedData': pulumi.Input.mapInputValue<FailedDataResponse, Map<String, dynamic>>(failedData, (value) => value.toMap()),
      'provisioningData': provisioningData,
      'state': state,
      'stateInitiator': stateInitiator,
      'suspendedData': suspendedData,
      'suspendingData': suspendingData,
    };
  }

  factory QueuedResourceStateResponse.fromMap(Map<String, dynamic> map) {
    return QueuedResourceStateResponse(
      acceptedData: pulumi.Input.fromValue((map['acceptedData']! as Map).cast<String, dynamic>()),
      activeData: pulumi.Input.fromValue((map['activeData']! as Map).cast<String, dynamic>()),
      creatingData: pulumi.Input.fromValue((map['creatingData']! as Map).cast<String, dynamic>()),
      deletingData: pulumi.Input.fromValue((map['deletingData']! as Map).cast<String, dynamic>()),
      failedData: pulumi.Input.fromValue(FailedDataResponse.fromMap((map['failedData']! as Map).cast<String, dynamic>())),
      provisioningData: pulumi.Input.fromValue((map['provisioningData']! as Map).cast<String, dynamic>()),
      state: pulumi.Input.fromValue(map['state'] as String),
      stateInitiator: pulumi.Input.fromValue(map['stateInitiator'] as String),
      suspendedData: pulumi.Input.fromValue((map['suspendedData']! as Map).cast<String, dynamic>()),
      suspendingData: pulumi.Input.fromValue((map['suspendingData']! as Map).cast<String, dynamic>()),
    );
  }
}

