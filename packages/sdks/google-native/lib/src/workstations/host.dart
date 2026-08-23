// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gce_instance.dart';

/// Runtime host for a workstation.
class Host {
  /// Specifies a Compute Engine instance as the host.
  final pulumi.Input<GceInstance>? gceInstance;

  /// Creates a new [Host].
  /// [gceInstance] Specifies a Compute Engine instance as the host.
  const Host({
    this.gceInstance,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gceInstance': ?pulumi.Input.mapOptionalInputValue<GceInstance, Map<String, dynamic>>(gceInstance, (value) => value.toMap()),
    };
  }

  factory Host.fromMap(Map<String, dynamic> map) {
    return Host(
      gceInstance: (() { final guardedValue = map['gceInstance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GceInstance.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
