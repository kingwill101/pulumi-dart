// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_control_plane_local.dart';
import 'cluster_control_plane_remote.dart';

class ClusterControlPlane {
  /// Local control plane configuration.
  /// Structure is documented below.
  final ClusterControlPlaneLocal? local;
  /// Remote control plane configuration.
  /// Structure is documented below.
  final ClusterControlPlaneRemote? remote;

  /// Creates a new [ClusterControlPlane].
  /// [local] Local control plane configuration.
  /// [remote] Remote control plane configuration.
  ClusterControlPlane({
    this.local,
    this.remote,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'local': ?local == null ? null : local!.toMap(),
      'remote': ?remote == null ? null : remote!.toMap(),
    };
  }

  factory ClusterControlPlane.fromMap(Map<String, dynamic> map) {
    return ClusterControlPlane(
      local: map['local'] == null ? null : ClusterControlPlaneLocal.fromMap((map['local'] as Map).cast<String, dynamic>()),
      remote: map['remote'] == null ? null : ClusterControlPlaneRemote.fromMap((map['remote'] as Map).cast<String, dynamic>()),
    );
  }
}

