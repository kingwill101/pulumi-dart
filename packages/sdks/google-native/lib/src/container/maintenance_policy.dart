// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'maintenance_window.dart';

/// MaintenancePolicy defines the maintenance policy to be used for the cluster.
class MaintenancePolicy {
  /// A hash identifying the version of this policy, so that updates to fields of the policy won't accidentally undo intermediate changes (and so that users of the API unaware of some fields won't accidentally remove other fields). Make a `get()` request to the cluster to get the current resource version and include it with requests to set the policy.
  final pulumi.Input<String>? resourceVersion;
  /// Specifies the maintenance window in which maintenance may be performed.
  final pulumi.Input<MaintenanceWindow>? window;

  /// Creates a new [MaintenancePolicy].
  /// [resourceVersion] A hash identifying the version of this policy, so that updates to fields of the policy won't accidentally undo intermediate changes (and so that users of the API unaware of some fields won't accidentally remove other fields). Make a `get()` request to the cluster to get the current resource version and include it with requests to set the policy.
  /// [window] Specifies the maintenance window in which maintenance may be performed.
  const MaintenancePolicy({
    this.resourceVersion,
    this.window,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceVersion': ?resourceVersion,
      'window': ?pulumi.Input.mapOptionalInputValue<MaintenanceWindow, Map<String, dynamic>>(window, (value) => value.toMap()),
    };
  }

  factory MaintenancePolicy.fromMap(Map<String, dynamic> map) {
    return MaintenancePolicy(
      resourceVersion: (() { final guardedValue = map['resourceVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      window: (() { final guardedValue = map['window']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MaintenanceWindow.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
