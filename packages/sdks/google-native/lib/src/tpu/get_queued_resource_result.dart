// ignore_for_file: unused_element, unnecessary_cast

import 'guaranteed_response.dart';
import 'queued_resource_state_response.dart';
import 'queueing_policy_response.dart';
import 'tpu_response.dart';

/// Result data returned by getQueuedResource.
class GetQueuedResourceResult {
  /// The BestEffort tier.
  final Map<String, dynamic> bestEffort;
  /// The time when the QueuedResource was created.
  final String createTime;
  /// The Guaranteed tier.
  final GuaranteedResponse guaranteed;
  /// Immutable. The name of the QueuedResource.
  final String name;
  /// The queueing policy of the QueuedRequest.
  final QueueingPolicyResponse queueingPolicy;
  /// Name of the reservation in which the resource should be provisioned. Format: projects/{project}/locations/{zone}/reservations/{reservation}
  final String reservationName;
  /// Optional. The Spot tier.
  final Map<String, dynamic> spot;
  /// State of the QueuedResource request.
  final QueuedResourceStateResponse state;
  /// Defines a TPU resource.
  final TpuResponse tpu;

  /// Creates a new [GetQueuedResourceResult].
  /// [bestEffort] The BestEffort tier.
  /// [createTime] The time when the QueuedResource was created.
  /// [guaranteed] The Guaranteed tier.
  /// [name] Immutable. The name of the QueuedResource.
  /// [queueingPolicy] The queueing policy of the QueuedRequest.
  /// [reservationName] Name of the reservation in which the resource should be provisioned. Format: projects/{project}/locations/{zone}/reservations/{reservation}
  /// [spot] Optional. The Spot tier.
  /// [state] State of the QueuedResource request.
  /// [tpu] Defines a TPU resource.
  GetQueuedResourceResult({
    required this.bestEffort,
    required this.createTime,
    required this.guaranteed,
    required this.name,
    required this.queueingPolicy,
    required this.reservationName,
    required this.spot,
    required this.state,
    required this.tpu,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bestEffort': bestEffort,
      'createTime': createTime,
      'guaranteed': guaranteed.toMap(),
      'name': name,
      'queueingPolicy': queueingPolicy.toMap(),
      'reservationName': reservationName,
      'spot': spot,
      'state': state.toMap(),
      'tpu': tpu.toMap(),
    };
  }

  factory GetQueuedResourceResult.fromMap(Map<String, dynamic> map) {
    return GetQueuedResourceResult(
      bestEffort: (map['bestEffort'] as Map).cast<String, dynamic>(),
      createTime: map['createTime'] as String,
      guaranteed: GuaranteedResponse.fromMap((map['guaranteed'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      queueingPolicy: QueueingPolicyResponse.fromMap((map['queueingPolicy'] as Map).cast<String, dynamic>()),
      reservationName: map['reservationName'] as String,
      spot: (map['spot'] as Map).cast<String, dynamic>(),
      state: QueuedResourceStateResponse.fromMap((map['state'] as Map).cast<String, dynamic>()),
      tpu: TpuResponse.fromMap((map['tpu'] as Map).cast<String, dynamic>()),
    );
  }
}

