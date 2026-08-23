// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gce_instance_response_workstations_v1beta.dart';

/// Runtime host for a workstation.
class HostResponseWorkstationsV1beta {
  /// Specifies a Compute Engine instance as the host.
  final pulumi.Input<GceInstanceResponseWorkstationsV1beta> gceInstance;

  /// Creates a new [HostResponseWorkstationsV1beta].
  /// [gceInstance] Specifies a Compute Engine instance as the host.
  const HostResponseWorkstationsV1beta({
    required this.gceInstance,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gceInstance': pulumi.Input.mapInputValue<GceInstanceResponseWorkstationsV1beta, Map<String, dynamic>>(gceInstance, (value) => value.toMap()),
    };
  }

  factory HostResponseWorkstationsV1beta.fromMap(Map<String, dynamic> map) {
    return HostResponseWorkstationsV1beta(
      gceInstance: pulumi.Input.fromValue(GceInstanceResponseWorkstationsV1beta.fromMap((map['gceInstance']! as Map).cast<String, dynamic>())),
    );
  }
}
