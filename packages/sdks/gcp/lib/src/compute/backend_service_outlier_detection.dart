// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_service_outlier_detection_base_ejection_time.dart';
import 'backend_service_outlier_detection_interval.dart';

class BackendServiceOutlierDetection {
  /// The base time that a host is ejected for. The real time is equal to the base
  /// time multiplied by the number of times the host has been ejected. Defaults to
  /// 30000ms or 30s.
  /// Structure is documented below.
  final pulumi.Input<BackendServiceOutlierDetectionBaseEjectionTime>? baseEjectionTime;
  /// Number of errors before a host is ejected from the connection pool. When the
  /// backend host is accessed over HTTP, a 5xx return code qualifies as an error.
  /// Defaults to 5.
  final pulumi.Input<int>? consecutiveErrors;
  /// The number of consecutive gateway failures (502, 503, 504 status or connection
  /// errors that are mapped to one of those status codes) before a consecutive
  /// gateway failure ejection occurs. Defaults to 5.
  final pulumi.Input<int>? consecutiveGatewayFailure;
  /// The percentage chance that a host will be actually ejected when an outlier
  /// status is detected through consecutive 5xx. This setting can be used to disable
  /// ejection or to ramp it up slowly. Defaults to 100.
  final pulumi.Input<int>? enforcingConsecutiveErrors;
  /// The percentage chance that a host will be actually ejected when an outlier
  /// status is detected through consecutive gateway failures. This setting can be
  /// used to disable ejection or to ramp it up slowly. Defaults to 0.
  final pulumi.Input<int>? enforcingConsecutiveGatewayFailure;
  /// The percentage chance that a host will be actually ejected when an outlier
  /// status is detected through success rate statistics. This setting can be used to
  /// disable ejection or to ramp it up slowly. Defaults to 100.
  final pulumi.Input<int>? enforcingSuccessRate;
  /// Time interval between ejection sweep analysis. This can result in both new
  /// ejections as well as hosts being returned to service. Defaults to 10 seconds.
  /// Structure is documented below.
  final pulumi.Input<BackendServiceOutlierDetectionInterval>? interval;
  /// Maximum percentage of hosts in the load balancing pool for the backend service
  /// that can be ejected. Defaults to 10%.
  final pulumi.Input<int>? maxEjectionPercent;
  /// The number of hosts in a cluster that must have enough request volume to detect
  /// success rate outliers. If the number of hosts is less than this setting, outlier
  /// detection via success rate statistics is not performed for any host in the
  /// cluster. Defaults to 5.
  final pulumi.Input<int>? successRateMinimumHosts;
  /// The minimum number of total requests that must be collected in one interval (as
  /// defined by the interval duration above) to include this host in success rate
  /// based outlier detection. If the volume is lower than this setting, outlier
  /// detection via success rate statistics is not performed for that host. Defaults
  /// to 100.
  final pulumi.Input<int>? successRateRequestVolume;
  /// This factor is used to determine the ejection threshold for success rate outlier
  /// ejection. The ejection threshold is the difference between the mean success
  /// rate, and the product of this factor and the standard deviation of the mean
  /// success rate: mean - (stdev * success_rate_stdev_factor). This factor is divided
  /// by a thousand to get a double. That is, if the desired factor is 1.9, the
  /// runtime value should be 1900. Defaults to 1900.
  final pulumi.Input<int>? successRateStdevFactor;

  /// Creates a new [BackendServiceOutlierDetection].
  /// [baseEjectionTime] The base time that a host is ejected for. The real time is equal to the base
  /// [consecutiveErrors] Number of errors before a host is ejected from the connection pool. When the
  /// [consecutiveGatewayFailure] The number of consecutive gateway failures (502, 503, 504 status or connection
  /// [enforcingConsecutiveErrors] The percentage chance that a host will be actually ejected when an outlier
  /// [enforcingConsecutiveGatewayFailure] The percentage chance that a host will be actually ejected when an outlier
  /// [enforcingSuccessRate] The percentage chance that a host will be actually ejected when an outlier
  /// [interval] Time interval between ejection sweep analysis. This can result in both new
  /// [maxEjectionPercent] Maximum percentage of hosts in the load balancing pool for the backend service
  /// [successRateMinimumHosts] The number of hosts in a cluster that must have enough request volume to detect
  /// [successRateRequestVolume] The minimum number of total requests that must be collected in one interval (as
  /// [successRateStdevFactor] This factor is used to determine the ejection threshold for success rate outlier
  BackendServiceOutlierDetection({
    this.baseEjectionTime,
    this.consecutiveErrors,
    this.consecutiveGatewayFailure,
    this.enforcingConsecutiveErrors,
    this.enforcingConsecutiveGatewayFailure,
    this.enforcingSuccessRate,
    this.interval,
    this.maxEjectionPercent,
    this.successRateMinimumHosts,
    this.successRateRequestVolume,
    this.successRateStdevFactor,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseEjectionTime': ?pulumi.Input.mapOptionalInputValue<BackendServiceOutlierDetectionBaseEjectionTime, Map<String, dynamic>>(baseEjectionTime, (value) => value.toMap()),
      'consecutiveErrors': ?consecutiveErrors,
      'consecutiveGatewayFailure': ?consecutiveGatewayFailure,
      'enforcingConsecutiveErrors': ?enforcingConsecutiveErrors,
      'enforcingConsecutiveGatewayFailure': ?enforcingConsecutiveGatewayFailure,
      'enforcingSuccessRate': ?enforcingSuccessRate,
      'interval': ?pulumi.Input.mapOptionalInputValue<BackendServiceOutlierDetectionInterval, Map<String, dynamic>>(interval, (value) => value.toMap()),
      'maxEjectionPercent': ?maxEjectionPercent,
      'successRateMinimumHosts': ?successRateMinimumHosts,
      'successRateRequestVolume': ?successRateRequestVolume,
      'successRateStdevFactor': ?successRateStdevFactor,
    };
  }

  factory BackendServiceOutlierDetection.fromMap(Map<String, dynamic> map) {
    return BackendServiceOutlierDetection(
      baseEjectionTime: map['baseEjectionTime'] == null ? null : (BackendServiceOutlierDetectionBaseEjectionTime.fromMap((map['baseEjectionTime'] as Map).cast<String, dynamic>())).input(),
      consecutiveErrors: map['consecutiveErrors'] == null ? null : (map['consecutiveErrors'] as int).input(),
      consecutiveGatewayFailure: map['consecutiveGatewayFailure'] == null ? null : (map['consecutiveGatewayFailure'] as int).input(),
      enforcingConsecutiveErrors: map['enforcingConsecutiveErrors'] == null ? null : (map['enforcingConsecutiveErrors'] as int).input(),
      enforcingConsecutiveGatewayFailure: map['enforcingConsecutiveGatewayFailure'] == null ? null : (map['enforcingConsecutiveGatewayFailure'] as int).input(),
      enforcingSuccessRate: map['enforcingSuccessRate'] == null ? null : (map['enforcingSuccessRate'] as int).input(),
      interval: map['interval'] == null ? null : (BackendServiceOutlierDetectionInterval.fromMap((map['interval'] as Map).cast<String, dynamic>())).input(),
      maxEjectionPercent: map['maxEjectionPercent'] == null ? null : (map['maxEjectionPercent'] as int).input(),
      successRateMinimumHosts: map['successRateMinimumHosts'] == null ? null : (map['successRateMinimumHosts'] as int).input(),
      successRateRequestVolume: map['successRateRequestVolume'] == null ? null : (map['successRateRequestVolume'] as int).input(),
      successRateStdevFactor: map['successRateStdevFactor'] == null ? null : (map['successRateStdevFactor'] as int).input(),
    );
  }
}

