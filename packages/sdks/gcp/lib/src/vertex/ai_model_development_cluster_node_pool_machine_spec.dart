// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_model_development_cluster_node_pool_machine_spec_reservation_affinity.dart';

class AiModelDevelopmentClusterNodePoolMachineSpec {
  /// The type of the machine.
  ///
  /// See the [list of machine types supported for
  /// prediction](https://cloud.google.com/vertex-ai/docs/predictions/configure-compute#machine-types)
  ///
  /// See the [list of machine types supported for custom
  /// training](https://cloud.google.com/vertex-ai/docs/training/configure-compute#machine-types).
  ///
  /// For DeployedModel this field is optional, and the default
  /// value is 'n1-standard-2'. For BatchPredictionJob or as part of
  /// WorkerPoolSpec this field is required.
  final pulumi.Input<String> machineType;
  /// A ReservationAffinity can be used to configure a Vertex AI resource (e.g., a
  /// DeployedModel) to draw its Compute Engine resources from a Shared
  /// Reservation, or exclusively from on-demand capacity.
  final pulumi.Input<AiModelDevelopmentClusterNodePoolMachineSpecReservationAffinity?>? reservationAffinity;

  /// Creates a new [AiModelDevelopmentClusterNodePoolMachineSpec].
  /// [machineType] The type of the machine.
  /// [reservationAffinity] A ReservationAffinity can be used to configure a Vertex AI resource (e.g., a
  const AiModelDevelopmentClusterNodePoolMachineSpec({
    required this.machineType,
    this.reservationAffinity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'machineType': machineType,
      'reservationAffinity': ?pulumi.Input.mapOptionalInputValue<AiModelDevelopmentClusterNodePoolMachineSpecReservationAffinity, Map<String, dynamic>>(reservationAffinity, (value) => value.toMap()),
    };
  }

  factory AiModelDevelopmentClusterNodePoolMachineSpec.fromMap(Map<String, dynamic> map) {
    return AiModelDevelopmentClusterNodePoolMachineSpec(
      machineType: pulumi.Input.fromValue(map['machineType'] as String),
      reservationAffinity: (() { final guardedValue = map['reservationAffinity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiModelDevelopmentClusterNodePoolMachineSpecReservationAffinity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
