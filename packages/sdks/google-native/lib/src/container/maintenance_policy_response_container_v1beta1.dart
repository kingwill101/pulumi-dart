// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'maintenance_window_response_container_v1beta1.dart';

/// MaintenancePolicy defines the maintenance policy to be used for the cluster.
class MaintenancePolicyResponseContainerV1beta1 {
  /// A hash identifying the version of this policy, so that updates to fields of the policy won't accidentally undo intermediate changes (and so that users of the API unaware of some fields won't accidentally remove other fields). Make a `get()` request to the cluster to get the current resource version and include it with requests to set the policy.
  final pulumi.Input<String> resourceVersion;
  /// Specifies the maintenance window in which maintenance may be performed.
  final pulumi.Input<MaintenanceWindowResponseContainerV1beta1> window;

  /// Creates a new [MaintenancePolicyResponseContainerV1beta1].
  /// [resourceVersion] A hash identifying the version of this policy, so that updates to fields of the policy won't accidentally undo intermediate changes (and so that users of the API unaware of some fields won't accidentally remove other fields). Make a `get()` request to the cluster to get the current resource version and include it with requests to set the policy.
  /// [window] Specifies the maintenance window in which maintenance may be performed.
  const MaintenancePolicyResponseContainerV1beta1({
    required this.resourceVersion,
    required this.window,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceVersion': resourceVersion,
      'window': pulumi.Input.mapInputValue<MaintenanceWindowResponseContainerV1beta1, Map<String, dynamic>>(window, (value) => value.toMap()),
    };
  }

  factory MaintenancePolicyResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return MaintenancePolicyResponseContainerV1beta1(
      resourceVersion: pulumi.Input.fromValue(map['resourceVersion'] as String),
      window: pulumi.Input.fromValue(MaintenanceWindowResponseContainerV1beta1.fromMap((map['window']! as Map).cast<String, dynamic>())),
    );
  }
}
