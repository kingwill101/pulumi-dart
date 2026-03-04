// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceFromMachineImageSchedulingOnInstanceStopAction {
  /// If true, the contents of any attached Local SSD disks will be discarded.
  final pulumi.Input<bool>? discardLocalSsd;

  /// Creates a new [InstanceFromMachineImageSchedulingOnInstanceStopAction].
  /// [discardLocalSsd] If true, the contents of any attached Local SSD disks will be discarded.
  InstanceFromMachineImageSchedulingOnInstanceStopAction({
    this.discardLocalSsd,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'discardLocalSsd': ?discardLocalSsd};
  }

  factory InstanceFromMachineImageSchedulingOnInstanceStopAction.fromMap(
    Map<String, dynamic> map,
  ) {
    return InstanceFromMachineImageSchedulingOnInstanceStopAction(
      discardLocalSsd: (() {
        final guardedValue = map['discardLocalSsd'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
