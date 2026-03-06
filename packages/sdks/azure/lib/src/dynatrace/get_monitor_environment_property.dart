// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_monitor_environment_property_environment_info.dart';

class GetMonitorEnvironmentProperty {
  final pulumi.Input<List<GetMonitorEnvironmentPropertyEnvironmentInfo>> environmentInfos;

  /// Creates a new [GetMonitorEnvironmentProperty].
  /// [environmentInfos] Required.
  const GetMonitorEnvironmentProperty({
    required this.environmentInfos,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentInfos': pulumi.Input.mapInputValue<List<GetMonitorEnvironmentPropertyEnvironmentInfo>, List<Map<String, dynamic>>>(environmentInfos, (value) => pulumi.Input.encodeList<GetMonitorEnvironmentPropertyEnvironmentInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetMonitorEnvironmentProperty.fromMap(Map<String, dynamic> map) {
    return GetMonitorEnvironmentProperty(
      environmentInfos: pulumi.Input.fromValue(pulumi.Input.decodeList<GetMonitorEnvironmentPropertyEnvironmentInfo>(map['environmentInfos']!, (value) => GetMonitorEnvironmentPropertyEnvironmentInfo.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

