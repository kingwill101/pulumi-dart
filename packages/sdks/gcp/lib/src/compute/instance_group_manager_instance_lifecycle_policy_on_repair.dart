// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceGroupManagerInstanceLifecyclePolicyOnRepair {
  /// , Specifies whether the MIG can change a VM's zone during a repair. If "YES", MIG can select a different zone for the VM during a repair. Else if "NO", MIG cannot change a VM's zone during a repair. The default value of allow_changing_zone is "NO".
  ///
  /// - - -
  final pulumi.Input<String>? allowChangingZone;

  /// Creates a new [InstanceGroupManagerInstanceLifecyclePolicyOnRepair].
  /// [allowChangingZone] , Specifies whether the MIG can change a VM's zone during a repair. If "YES", MIG can select a different zone for the VM during a repair. Else if "NO", MIG cannot change a VM's zone during a repair. The default value of allow_changing_zone is "NO".
  const InstanceGroupManagerInstanceLifecyclePolicyOnRepair({
    this.allowChangingZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowChangingZone': ?allowChangingZone,
    };
  }

  factory InstanceGroupManagerInstanceLifecyclePolicyOnRepair.fromMap(Map<String, dynamic> map) {
    return InstanceGroupManagerInstanceLifecyclePolicyOnRepair(
      allowChangingZone: (() { final guardedValue = map['allowChangingZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

