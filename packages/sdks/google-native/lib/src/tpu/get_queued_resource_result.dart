// ignore_for_file: unused_element, unnecessary_cast

import 'guaranteed_response.dart';
import 'queued_resource_state_response.dart';
import 'queueing_policy_response.dart';
import 'tpu_response.dart';

/// Result data returned by getQueuedResource.
class GetQueuedResourceResult {
  /// The BestEffort tier.
  final Map<String, dynamic>? bestEffort;
  /// The time when the QueuedResource was created.
  final String? createTime;
  /// The Guaranteed tier.
  final GuaranteedResponse? guaranteed;
  /// Immutable. The name of the QueuedResource.
  final String? name;
  /// The queueing policy of the QueuedRequest.
  final QueueingPolicyResponse? queueingPolicy;
  /// Name of the reservation in which the resource should be provisioned. Format: projects/{project}/locations/{zone}/reservations/{reservation}
  final String? reservationName;
  /// Optional. The Spot tier.
  final Map<String, dynamic>? spot;
  /// State of the QueuedResource request.
  final QueuedResourceStateResponse? state;
  /// Defines a TPU resource.
  final TpuResponse? tpu;

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
  const GetQueuedResourceResult({
    this.bestEffort,
    this.createTime,
    this.guaranteed,
    this.name,
    this.queueingPolicy,
    this.reservationName,
    this.spot,
    this.state,
    this.tpu,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bestEffort': ?bestEffort,
      'createTime': ?createTime,
      'guaranteed': ?guaranteed?.toMap(),
      'name': ?name,
      'queueingPolicy': ?queueingPolicy?.toMap(),
      'reservationName': ?reservationName,
      'spot': ?spot,
      'state': ?state?.toMap(),
      'tpu': ?tpu?.toMap(),
    };
  }

  factory GetQueuedResourceResult.fromMap(Map<String, dynamic> map) {
    return GetQueuedResourceResult(
      bestEffort: (() { final guardedValue = map['bestEffort']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, dynamic>(); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      guaranteed: (() { final guardedValue = map['guaranteed']; if (guardedValue == null) return null; return GuaranteedResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      queueingPolicy: (() { final guardedValue = map['queueingPolicy']; if (guardedValue == null) return null; return QueueingPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      reservationName: (() { final guardedValue = map['reservationName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      spot: (() { final guardedValue = map['spot']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, dynamic>(); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return QueuedResourceStateResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tpu: (() { final guardedValue = map['tpu']; if (guardedValue == null) return null; return TpuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
