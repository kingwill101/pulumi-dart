// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_state_info_update_info.dart';

class ClusterStateInfo {
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<ClusterStateInfoUpdateInfo>? updateInfo;

  /// Creates a new [ClusterStateInfo].
  /// [updateInfo] A nested object resource.
  const ClusterStateInfo({
    this.updateInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'updateInfo': ?pulumi.Input.mapOptionalInputValue<ClusterStateInfoUpdateInfo, Map<String, dynamic>>(updateInfo, (value) => value.toMap()),
    };
  }

  factory ClusterStateInfo.fromMap(Map<String, dynamic> map) {
    return ClusterStateInfo(
      updateInfo: (() { final guardedValue = map['updateInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterStateInfoUpdateInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

