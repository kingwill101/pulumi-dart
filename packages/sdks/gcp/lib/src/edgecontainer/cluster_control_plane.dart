// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_control_plane_local.dart';
import 'cluster_control_plane_remote.dart';

class ClusterControlPlane {
  /// Local control plane configuration.
  /// Structure is documented below.
  final pulumi.Input<ClusterControlPlaneLocal>? local;
  /// Remote control plane configuration.
  /// Structure is documented below.
  final pulumi.Input<ClusterControlPlaneRemote>? remote;

  /// Creates a new [ClusterControlPlane].
  /// [local] Local control plane configuration.
  /// [remote] Remote control plane configuration.
  const ClusterControlPlane({
    this.local,
    this.remote,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'local': ?pulumi.Input.mapOptionalInputValue<ClusterControlPlaneLocal, Map<String, dynamic>>(local, (value) => value.toMap()),
      'remote': ?pulumi.Input.mapOptionalInputValue<ClusterControlPlaneRemote, Map<String, dynamic>>(remote, (value) => value.toMap()),
    };
  }

  factory ClusterControlPlane.fromMap(Map<String, dynamic> map) {
    return ClusterControlPlane(
      local: (() { final guardedValue = map['local']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterControlPlaneLocal.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      remote: (() { final guardedValue = map['remote']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterControlPlaneRemote.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
