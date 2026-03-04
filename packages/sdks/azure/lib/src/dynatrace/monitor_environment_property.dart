// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitor_environment_property_environment_info.dart';

class MonitorEnvironmentProperty {
  /// Information about the Dynatrace environment. An `environment_info` block as defined below.
  final pulumi.Input<List<MonitorEnvironmentPropertyEnvironmentInfo>>
  environmentInfos;

  /// Creates a new [MonitorEnvironmentProperty].
  /// [environmentInfos] Information about the Dynatrace environment. An `environment_info` block as defined below.
  MonitorEnvironmentProperty({required this.environmentInfos});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentInfos':
          pulumi.Input.mapInputValue<
            List<MonitorEnvironmentPropertyEnvironmentInfo>,
            List<Map<String, dynamic>>
          >(
            environmentInfos,
            (value) =>
                pulumi.Input.encodeList<
                  MonitorEnvironmentPropertyEnvironmentInfo,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory MonitorEnvironmentProperty.fromMap(Map<String, dynamic> map) {
    return MonitorEnvironmentProperty(
      environmentInfos: pulumi.Input.fromValue(
        pulumi.Input.decodeList<MonitorEnvironmentPropertyEnvironmentInfo>(
          map['environmentInfos']!,
          (value) => MonitorEnvironmentPropertyEnvironmentInfo.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
