// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gce_instance_workstations_v1beta.dart';

/// Runtime host for a workstation.
class HostWorkstationsV1beta {
  /// Specifies a Compute Engine instance as the host.
  final pulumi.Input<GceInstanceWorkstationsV1beta>? gceInstance;

  /// Creates a new [HostWorkstationsV1beta].
  /// [gceInstance] Specifies a Compute Engine instance as the host.
  HostWorkstationsV1beta({
    this.gceInstance,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gceInstance': ?pulumi.Input.mapOptionalInputValue<GceInstanceWorkstationsV1beta, Map<String, dynamic>>(gceInstance, (value) => value.toMap()),
    };
  }

  factory HostWorkstationsV1beta.fromMap(Map<String, dynamic> map) {
    return HostWorkstationsV1beta(
      gceInstance: map['gceInstance'] == null ? null : (GceInstanceWorkstationsV1beta.fromMap((map['gceInstance']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

