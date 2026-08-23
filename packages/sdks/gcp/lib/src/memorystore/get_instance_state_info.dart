// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_state_info_update_info.dart';

class GetInstanceStateInfo {
  /// Represents information about instance with state UPDATING.
  final pulumi.Input<List<GetInstanceStateInfoUpdateInfo>> updateInfos;

  /// Creates a new [GetInstanceStateInfo].
  /// [updateInfos] Represents information about instance with state UPDATING.
  const GetInstanceStateInfo({
    required this.updateInfos,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'updateInfos': pulumi.Input.mapInputValue<List<GetInstanceStateInfoUpdateInfo>, List<Map<String, dynamic>>>(updateInfos, (value) => pulumi.Input.encodeList<GetInstanceStateInfoUpdateInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetInstanceStateInfo.fromMap(Map<String, dynamic> map) {
    return GetInstanceStateInfo(
      updateInfos: pulumi.Input.fromValue(pulumi.Input.decodeList<GetInstanceStateInfoUpdateInfo>(map['updateInfos']!, (value) => GetInstanceStateInfoUpdateInfo.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
