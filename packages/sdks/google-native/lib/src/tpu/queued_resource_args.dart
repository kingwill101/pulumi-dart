// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'guaranteed.dart';
import 'queueing_policy.dart';
import 'tpu.dart';

/// {@template pulumi_tpu_v2alpha1_queued_resource_args_doc}
/// The set of arguments for QueuedResource.
/// {@endtemplate}
/// {@macro pulumi_tpu_v2alpha1_queued_resource_args_doc}
class QueuedResourceArgs {
  /// The BestEffort tier.
  final pulumi.Input<Map<String, dynamic>>? bestEffort;
  /// The Guaranteed tier.
  final pulumi.Input<Guaranteed>? guaranteed;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;
  /// The unqualified resource name. Should follow the `^[A-Za-z0-9_.~+%-]+$` regex format.
  final pulumi.Input<String>? queuedResourceId;
  /// The queueing policy of the QueuedRequest.
  final pulumi.Input<QueueingPolicy>? queueingPolicy;
  /// Idempotent request UUID.
  final pulumi.Input<String>? requestId;
  /// Name of the reservation in which the resource should be provisioned. Format: projects/{project}/locations/{zone}/reservations/{reservation}
  final pulumi.Input<String>? reservationName;
  /// Optional. The Spot tier.
  final pulumi.Input<Map<String, dynamic>>? spot;
  /// Defines a TPU resource.
  final pulumi.Input<Tpu>? tpu;

  /// Creates a new [QueuedResourceArgs].
  /// [bestEffort] The BestEffort tier.
  /// [guaranteed] The Guaranteed tier.
  /// [location] Optional.
  /// [project] Optional.
  /// [queuedResourceId] The unqualified resource name. Should follow the `^[A-Za-z0-9_.~+%-]+$` regex format.
  /// [queueingPolicy] The queueing policy of the QueuedRequest.
  /// [requestId] Idempotent request UUID.
  /// [reservationName] Name of the reservation in which the resource should be provisioned. Format: projects/{project}/locations/{zone}/reservations/{reservation}
  /// [spot] Optional. The Spot tier.
  /// [tpu] Defines a TPU resource.
  QueuedResourceArgs({
    this.bestEffort,
    this.guaranteed,
    this.location,
    this.project,
    this.queuedResourceId,
    this.queueingPolicy,
    this.requestId,
    this.reservationName,
    this.spot,
    this.tpu,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bestEffort': ?bestEffort,
      'guaranteed': ?pulumi.Input.mapOptionalInputValue<Guaranteed, Map<String, dynamic>>(guaranteed, (value) => value.toMap()),
      'location': ?location,
      'project': ?project,
      'queuedResourceId': ?queuedResourceId,
      'queueingPolicy': ?pulumi.Input.mapOptionalInputValue<QueueingPolicy, Map<String, dynamic>>(queueingPolicy, (value) => value.toMap()),
      'requestId': ?requestId,
      'reservationName': ?reservationName,
      'spot': ?spot,
      'tpu': ?pulumi.Input.mapOptionalInputValue<Tpu, Map<String, dynamic>>(tpu, (value) => value.toMap()),
    };
  }

  factory QueuedResourceArgs.fromMap(Map<String, dynamic> map) {
    return QueuedResourceArgs(
      bestEffort: (() { final guardedValue = map['bestEffort']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      guaranteed: (() { final guardedValue = map['guaranteed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Guaranteed.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queuedResourceId: (() { final guardedValue = map['queuedResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queueingPolicy: (() { final guardedValue = map['queueingPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(QueueingPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      requestId: (() { final guardedValue = map['requestId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reservationName: (() { final guardedValue = map['reservationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      spot: (() { final guardedValue = map['spot']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      tpu: (() { final guardedValue = map['tpu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Tpu.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

