// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_custom_job_job_spec_worker_pool_spec_machine_spec_reservation_affinity.dart';

class AiCustomJobJobSpecWorkerPoolSpecMachineSpec {
  /// The number of accelerators to attach to the machine.
  final pulumi.Input<int?>? acceleratorCount;
  /// The type of accelerator(s) that may be attached to the machine.
  final pulumi.Input<String?>? acceleratorType;
  /// The type of the machine.
  final pulumi.Input<String?>? machineType;
  /// Configuration for using robust to failure reservation.
  /// Structure is documented below.
  final pulumi.Input<AiCustomJobJobSpecWorkerPoolSpecMachineSpecReservationAffinity?>? reservationAffinity;
  /// The topology of the TPUs.
  final pulumi.Input<String?>? tpuTopology;

  /// Creates a new [AiCustomJobJobSpecWorkerPoolSpecMachineSpec].
  /// [acceleratorCount] The number of accelerators to attach to the machine.
  /// [acceleratorType] The type of accelerator(s) that may be attached to the machine.
  /// [machineType] The type of the machine.
  /// [reservationAffinity] Configuration for using robust to failure reservation.
  /// [tpuTopology] The topology of the TPUs.
  const AiCustomJobJobSpecWorkerPoolSpecMachineSpec({
    this.acceleratorCount,
    this.acceleratorType,
    this.machineType,
    this.reservationAffinity,
    this.tpuTopology,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorCount': ?acceleratorCount,
      'acceleratorType': ?acceleratorType,
      'machineType': ?machineType,
      'reservationAffinity': ?pulumi.Input.mapOptionalInputValue<AiCustomJobJobSpecWorkerPoolSpecMachineSpecReservationAffinity, Map<String, dynamic>>(reservationAffinity, (value) => value.toMap()),
      'tpuTopology': ?tpuTopology,
    };
  }

  factory AiCustomJobJobSpecWorkerPoolSpecMachineSpec.fromMap(Map<String, dynamic> map) {
    return AiCustomJobJobSpecWorkerPoolSpecMachineSpec(
      acceleratorCount: (() { final guardedValue = map['acceleratorCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      acceleratorType: (() { final guardedValue = map['acceleratorType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      machineType: (() { final guardedValue = map['machineType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reservationAffinity: (() { final guardedValue = map['reservationAffinity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiCustomJobJobSpecWorkerPoolSpecMachineSpecReservationAffinity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tpuTopology: (() { final guardedValue = map['tpuTopology']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
