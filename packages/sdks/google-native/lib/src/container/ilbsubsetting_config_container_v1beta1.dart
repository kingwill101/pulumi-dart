// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ILBSubsettingConfig contains the desired config of L4 Internal LoadBalancer subsetting on this cluster.
class ILBSubsettingConfigContainerV1beta1 {
  /// Enables l4 ILB subsetting for this cluster
  final pulumi.Input<bool>? enabled;

  /// Creates a new [ILBSubsettingConfigContainerV1beta1].
  /// [enabled] Enables l4 ILB subsetting for this cluster
  ILBSubsettingConfigContainerV1beta1({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ILBSubsettingConfigContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return ILBSubsettingConfigContainerV1beta1(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

