// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_state_info_update_info.dart';

class InstanceStateInfo {
  /// (Output)
  /// Represents information about instance with state UPDATING.
  /// Structure is documented below.
  final pulumi.Input<List<InstanceStateInfoUpdateInfo>>? updateInfos;

  /// Creates a new [InstanceStateInfo].
  /// [updateInfos] (Output)
  const InstanceStateInfo({
    this.updateInfos,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'updateInfos': ?pulumi.Input.mapOptionalInputValue<List<InstanceStateInfoUpdateInfo>, List<Map<String, dynamic>>>(updateInfos, (value) => pulumi.Input.encodeList<InstanceStateInfoUpdateInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory InstanceStateInfo.fromMap(Map<String, dynamic> map) {
    return InstanceStateInfo(
      updateInfos: (() { final guardedValue = map['updateInfos']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceStateInfoUpdateInfo>(guardedValue, (value) => InstanceStateInfoUpdateInfo.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

