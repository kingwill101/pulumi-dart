// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegionInstanceGroupManagerInstanceLifecyclePolicyOnRepair {
  /// , Specifies whether the MIG can change a VM's zone during a repair. If "YES", MIG can select a different zone for the VM during a repair. Else if "NO", MIG cannot change a VM's zone during a repair. The default value of allowChangingZone is "NO".
  ///
  /// - - -
  /// &lt;a name="nestedInstanceFlexibilityPolicy"&gt;&lt;/a&gt;The `instanceFlexibilityPolicy` block supports:
  final pulumi.Input<String?>? allowChangingZone;

  /// Creates a new [RegionInstanceGroupManagerInstanceLifecyclePolicyOnRepair].
  /// [allowChangingZone] , Specifies whether the MIG can change a VM's zone during a repair. If "YES", MIG can select a different zone for the VM during a repair. Else if "NO", MIG cannot change a VM's zone during a repair. The default value of allowChangingZone is "NO".
  const RegionInstanceGroupManagerInstanceLifecyclePolicyOnRepair({
    this.allowChangingZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowChangingZone': ?allowChangingZone,
    };
  }

  factory RegionInstanceGroupManagerInstanceLifecyclePolicyOnRepair.fromMap(Map<String, dynamic> map) {
    return RegionInstanceGroupManagerInstanceLifecyclePolicyOnRepair(
      allowChangingZone: (() { final guardedValue = map['allowChangingZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
