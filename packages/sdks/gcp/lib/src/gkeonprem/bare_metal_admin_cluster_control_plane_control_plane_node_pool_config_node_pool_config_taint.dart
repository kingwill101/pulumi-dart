// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigTaint {
  /// Available taint effects.
  final pulumi.Input<String>? effect;
  /// (Optional)
  final pulumi.Input<String>? key;
  /// (Optional)
  final pulumi.Input<String>? value;

  /// Creates a new [BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigTaint].
  /// [effect] Available taint effects.
  /// [key] (Optional)
  /// [value] (Optional)
  const BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigTaint({
    this.effect,
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'effect': ?effect,
      'key': ?key,
      'value': ?value,
    };
  }

  factory BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigTaint.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigTaint(
      effect: (() { final guardedValue = map['effect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
