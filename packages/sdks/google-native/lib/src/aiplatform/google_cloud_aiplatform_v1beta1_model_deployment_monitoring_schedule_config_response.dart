// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The config for scheduling monitoring job.
class GoogleCloudAiplatformV1beta1ModelDeploymentMonitoringScheduleConfigResponse {
  /// The model monitoring job scheduling interval. It will be rounded up to next full hour. This defines how often the monitoring jobs are triggered.
  final pulumi.Input<String> monitorInterval;
  /// The time window of the prediction data being included in each prediction dataset. This window specifies how long the data should be collected from historical model results for each run. If not set, ModelDeploymentMonitoringScheduleConfig.monitor_interval will be used. e.g. If currently the cutoff time is 2022-01-08 14:30:00 and the monitor_window is set to be 3600, then data from 2022-01-08 13:30:00 to 2022-01-08 14:30:00 will be retrieved and aggregated to calculate the monitoring statistics.
  final pulumi.Input<String> monitorWindow;

  /// Creates a new [GoogleCloudAiplatformV1beta1ModelDeploymentMonitoringScheduleConfigResponse].
  /// [monitorInterval] The model monitoring job scheduling interval. It will be rounded up to next full hour. This defines how often the monitoring jobs are triggered.
  /// [monitorWindow] The time window of the prediction data being included in each prediction dataset. This window specifies how long the data should be collected from historical model results for each run. If not set, ModelDeploymentMonitoringScheduleConfig.monitor_interval will be used. e.g. If currently the cutoff time is 2022-01-08 14:30:00 and the monitor_window is set to be 3600, then data from 2022-01-08 13:30:00 to 2022-01-08 14:30:00 will be retrieved and aggregated to calculate the monitoring statistics.
  const GoogleCloudAiplatformV1beta1ModelDeploymentMonitoringScheduleConfigResponse({
    required this.monitorInterval,
    required this.monitorWindow,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'monitorInterval': monitorInterval,
      'monitorWindow': monitorWindow,
    };
  }

  factory GoogleCloudAiplatformV1beta1ModelDeploymentMonitoringScheduleConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1ModelDeploymentMonitoringScheduleConfigResponse(
      monitorInterval: pulumi.Input.fromValue(map['monitorInterval'] as String),
      monitorWindow: pulumi.Input.fromValue(map['monitorWindow'] as String),
    );
  }
}
