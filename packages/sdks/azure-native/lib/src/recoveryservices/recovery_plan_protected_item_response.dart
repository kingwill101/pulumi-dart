// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Recovery plan protected item.
class RecoveryPlanProtectedItemResponse {
  /// The ARM Id of the recovery plan protected item.
  final pulumi.Input<String>? id;

  /// The virtual machine Id.
  final pulumi.Input<String>? virtualMachineId;

  /// Creates a new [RecoveryPlanProtectedItemResponse].
  /// [id] The ARM Id of the recovery plan protected item.
  /// [virtualMachineId] The virtual machine Id.
  RecoveryPlanProtectedItemResponse({this.id, this.virtualMachineId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': ?id, 'virtualMachineId': ?virtualMachineId};
  }

  factory RecoveryPlanProtectedItemResponse.fromMap(Map<String, dynamic> map) {
    return RecoveryPlanProtectedItemResponse(
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      virtualMachineId: (() {
        final guardedValue = map['virtualMachineId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
