// ignore_for_file: unused_element, unnecessary_cast


class AwsGovcloudIntegrationsCloudtrail {
  /// Specify each AWS region that includes the resources that you want to monitor
  final List<String>? awsRegions;
  /// The data polling interval in seconds
  final int? metricsPollingInterval;

  /// Creates a new [AwsGovcloudIntegrationsCloudtrail].
  /// [awsRegions] Specify each AWS region that includes the resources that you want to monitor
  /// [metricsPollingInterval] The data polling interval in seconds
  AwsGovcloudIntegrationsCloudtrail({
    this.awsRegions,
    this.metricsPollingInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsRegions': ?awsRegions,
      'metricsPollingInterval': ?metricsPollingInterval,
    };
  }

  factory AwsGovcloudIntegrationsCloudtrail.fromMap(Map<String, dynamic> map) {
    return AwsGovcloudIntegrationsCloudtrail(
      awsRegions: map['awsRegions'] == null ? null : (map['awsRegions'] as List).cast<String>(),
      metricsPollingInterval: map['metricsPollingInterval'] == null ? null : map['metricsPollingInterval'] as int,
    );
  }
}

