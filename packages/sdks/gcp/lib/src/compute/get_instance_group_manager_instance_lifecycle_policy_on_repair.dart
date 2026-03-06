// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceGroupManagerInstanceLifecyclePolicyOnRepair {
  /// Specifies whether the MIG can change a VM's zone during a repair. If "YES", MIG can select a different zone for the VM during a repair. Else if "NO", MIG cannot change a VM's zone during a repair. The default value of allow_changing_zone is "NO".
  final pulumi.Input<String> allowChangingZone;

  /// Creates a new [GetInstanceGroupManagerInstanceLifecyclePolicyOnRepair].
  /// [allowChangingZone] Specifies whether the MIG can change a VM's zone during a repair. If "YES", MIG can select a different zone for the VM during a repair. Else if "NO", MIG cannot change a VM's zone during a repair. The default value of allow_changing_zone is "NO".
  const GetInstanceGroupManagerInstanceLifecyclePolicyOnRepair({
    required this.allowChangingZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowChangingZone': allowChangingZone,
    };
  }

  factory GetInstanceGroupManagerInstanceLifecyclePolicyOnRepair.fromMap(Map<String, dynamic> map) {
    return GetInstanceGroupManagerInstanceLifecyclePolicyOnRepair(
      allowChangingZone: pulumi.Input.fromValue(map['allowChangingZone'] as String),
    );
  }
}

