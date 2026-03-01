// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_state_info_update_info.dart';

class ClusterStateInfo {
  /// A nested object resource.
  /// Structure is documented below.
  final ClusterStateInfoUpdateInfo? updateInfo;

  /// Creates a new [ClusterStateInfo].
  /// [updateInfo] A nested object resource.
  ClusterStateInfo({
    this.updateInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'updateInfo': ?updateInfo == null ? null : updateInfo!.toMap(),
    };
  }

  factory ClusterStateInfo.fromMap(Map<String, dynamic> map) {
    return ClusterStateInfo(
      updateInfo: map['updateInfo'] == null ? null : ClusterStateInfoUpdateInfo.fromMap((map['updateInfo'] as Map).cast<String, dynamic>()),
    );
  }
}

