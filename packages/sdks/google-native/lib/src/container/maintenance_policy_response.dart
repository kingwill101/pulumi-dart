// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'maintenance_window_response.dart';

/// MaintenancePolicy defines the maintenance policy to be used for the cluster.
class MaintenancePolicyResponse {
  /// A hash identifying the version of this policy, so that updates to fields of the policy won't accidentally undo intermediate changes (and so that users of the API unaware of some fields won't accidentally remove other fields). Make a `get()` request to the cluster to get the current resource version and include it with requests to set the policy.
  final pulumi.Input<String> resourceVersion;
  /// Specifies the maintenance window in which maintenance may be performed.
  final pulumi.Input<MaintenanceWindowResponse> window;

  /// Creates a new [MaintenancePolicyResponse].
  /// [resourceVersion] A hash identifying the version of this policy, so that updates to fields of the policy won't accidentally undo intermediate changes (and so that users of the API unaware of some fields won't accidentally remove other fields). Make a `get()` request to the cluster to get the current resource version and include it with requests to set the policy.
  /// [window] Specifies the maintenance window in which maintenance may be performed.
  MaintenancePolicyResponse({
    required this.resourceVersion,
    required this.window,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceVersion': resourceVersion,
      'window': pulumi.Input.mapInputValue<MaintenanceWindowResponse, Map<String, dynamic>>(window, (value) => value.toMap()),
    };
  }

  factory MaintenancePolicyResponse.fromMap(Map<String, dynamic> map) {
    return MaintenancePolicyResponse(
      resourceVersion: (map['resourceVersion'] as String).input(),
      window: (MaintenanceWindowResponse.fromMap((map['window'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

