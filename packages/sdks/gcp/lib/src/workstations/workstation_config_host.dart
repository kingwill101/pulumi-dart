// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workstation_config_host_gce_instance.dart';

class WorkstationConfigHost {
  /// A runtime using a Compute Engine instance.
  /// Structure is documented below.
  final pulumi.Input<WorkstationConfigHostGceInstance?>? gceInstance;

  /// Creates a new [WorkstationConfigHost].
  /// [gceInstance] A runtime using a Compute Engine instance.
  const WorkstationConfigHost({
    this.gceInstance,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gceInstance': ?pulumi.Input.mapOptionalInputValue<WorkstationConfigHostGceInstance, Map<String, dynamic>>(gceInstance, (value) => value.toMap()),
    };
  }

  factory WorkstationConfigHost.fromMap(Map<String, dynamic> map) {
    return WorkstationConfigHost(
      gceInstance: (() { final guardedValue = map['gceInstance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkstationConfigHostGceInstance.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
