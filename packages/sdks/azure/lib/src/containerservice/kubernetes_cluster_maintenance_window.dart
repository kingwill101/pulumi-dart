// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kubernetes_cluster_maintenance_window_allowed.dart';
import 'kubernetes_cluster_maintenance_window_not_allowed.dart';

class KubernetesClusterMaintenanceWindow {
  /// One or more `allowed` blocks as defined below.
  final pulumi.Input<List<KubernetesClusterMaintenanceWindowAllowed>>? alloweds;
  /// One or more `not_allowed` block as defined below.
  final pulumi.Input<List<KubernetesClusterMaintenanceWindowNotAllowed>>? notAlloweds;

  /// Creates a new [KubernetesClusterMaintenanceWindow].
  /// [alloweds] One or more `allowed` blocks as defined below.
  /// [notAlloweds] One or more `not_allowed` block as defined below.
  KubernetesClusterMaintenanceWindow({
    this.alloweds,
    this.notAlloweds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alloweds': ?pulumi.Input.mapOptionalInputValue<List<KubernetesClusterMaintenanceWindowAllowed>, List<Map<String, dynamic>>>(alloweds, (value) => pulumi.Input.encodeList<KubernetesClusterMaintenanceWindowAllowed, Map<String, dynamic>>(value, (value) => value.toMap())),
      'notAlloweds': ?pulumi.Input.mapOptionalInputValue<List<KubernetesClusterMaintenanceWindowNotAllowed>, List<Map<String, dynamic>>>(notAlloweds, (value) => pulumi.Input.encodeList<KubernetesClusterMaintenanceWindowNotAllowed, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory KubernetesClusterMaintenanceWindow.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterMaintenanceWindow(
      alloweds: map['alloweds'] == null ? null : (pulumi.Input.decodeList<KubernetesClusterMaintenanceWindowAllowed>(map['alloweds']!, (value) => KubernetesClusterMaintenanceWindowAllowed.fromMap((value as Map).cast<String, dynamic>()))).input(),
      notAlloweds: map['notAlloweds'] == null ? null : (pulumi.Input.decodeList<KubernetesClusterMaintenanceWindowNotAllowed>(map['notAlloweds']!, (value) => KubernetesClusterMaintenanceWindowNotAllowed.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

