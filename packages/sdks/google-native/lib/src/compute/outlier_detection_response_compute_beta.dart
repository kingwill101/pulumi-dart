// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'duration_response_compute_beta.dart';

/// Settings controlling the eviction of unhealthy hosts from the load balancing pool for the backend service.
class OutlierDetectionResponseComputeBeta {
  /// The base time that a backend endpoint is ejected for. Defaults to 30000ms or 30s. After a backend endpoint is returned back to the load balancing pool, it can be ejected again in another ejection analysis. Thus, the total ejection time is equal to the base ejection time multiplied by the number of times the backend endpoint has been ejected. Defaults to 30000ms or 30s.
  final pulumi.Input<DurationResponseComputeBeta> baseEjectionTime;

  /// Number of consecutive errors before a backend endpoint is ejected from the load balancing pool. When the backend endpoint is accessed over HTTP, a 5xx return code qualifies as an error. Defaults to 5.
  final pulumi.Input<int> consecutiveErrors;

  /// The number of consecutive gateway failures (502, 503, 504 status or connection errors that are mapped to one of those status codes) before a consecutive gateway failure ejection occurs. Defaults to 3.
  final pulumi.Input<int> consecutiveGatewayFailure;

  /// The percentage chance that a backend endpoint will be ejected when an outlier status is detected through consecutive 5xx. This setting can be used to disable ejection or to ramp it up slowly. Defaults to 0.
  final pulumi.Input<int> enforcingConsecutiveErrors;

  /// The percentage chance that a backend endpoint will be ejected when an outlier status is detected through consecutive gateway failures. This setting can be used to disable ejection or to ramp it up slowly. Defaults to 100.
  final pulumi.Input<int> enforcingConsecutiveGatewayFailure;

  /// The percentage chance that a backend endpoint will be ejected when an outlier status is detected through success rate statistics. This setting can be used to disable ejection or to ramp it up slowly. Defaults to 100. Not supported when the backend service uses Serverless NEG.
  final pulumi.Input<int> enforcingSuccessRate;

  /// Time interval between ejection analysis sweeps. This can result in both new ejections and backend endpoints being returned to service. The interval is equal to the number of seconds as defined in outlierDetection.interval.seconds plus the number of nanoseconds as defined in outlierDetection.interval.nanos. Defaults to 1 second.
  final pulumi.Input<DurationResponseComputeBeta> interval;

  /// Maximum percentage of backend endpoints in the load balancing pool for the backend service that can be ejected if the ejection conditions are met. Defaults to 50%.
  final pulumi.Input<int> maxEjectionPercent;

  /// The number of backend endpoints in the load balancing pool that must have enough request volume to detect success rate outliers. If the number of backend endpoints is fewer than this setting, outlier detection via success rate statistics is not performed for any backend endpoint in the load balancing pool. Defaults to 5. Not supported when the backend service uses Serverless NEG.
  final pulumi.Input<int> successRateMinimumHosts;

  /// The minimum number of total requests that must be collected in one interval (as defined by the interval duration above) to include this backend endpoint in success rate based outlier detection. If the volume is lower than this setting, outlier detection via success rate statistics is not performed for that backend endpoint. Defaults to 100. Not supported when the backend service uses Serverless NEG.
  final pulumi.Input<int> successRateRequestVolume;

  /// This factor is used to determine the ejection threshold for success rate outlier ejection. The ejection threshold is the difference between the mean success rate, and the product of this factor and the standard deviation of the mean success rate: mean - (stdev * successRateStdevFactor). This factor is divided by a thousand to get a double. That is, if the desired factor is 1.9, the runtime value should be 1900. Defaults to 1900. Not supported when the backend service uses Serverless NEG.
  final pulumi.Input<int> successRateStdevFactor;

  /// Creates a new [OutlierDetectionResponseComputeBeta].
  /// [baseEjectionTime] The base time that a backend endpoint is ejected for. Defaults to 30000ms or 30s. After a backend endpoint is returned back to the load balancing pool, it can be ejected again in another ejection analysis. Thus, the total ejection time is equal to the base ejection time multiplied by the number of times the backend endpoint has been ejected. Defaults to 30000ms or 30s.
  /// [consecutiveErrors] Number of consecutive errors before a backend endpoint is ejected from the load balancing pool. When the backend endpoint is accessed over HTTP, a 5xx return code qualifies as an error. Defaults to 5.
  /// [consecutiveGatewayFailure] The number of consecutive gateway failures (502, 503, 504 status or connection errors that are mapped to one of those status codes) before a consecutive gateway failure ejection occurs. Defaults to 3.
  /// [enforcingConsecutiveErrors] The percentage chance that a backend endpoint will be ejected when an outlier status is detected through consecutive 5xx. This setting can be used to disable ejection or to ramp it up slowly. Defaults to 0.
  /// [enforcingConsecutiveGatewayFailure] The percentage chance that a backend endpoint will be ejected when an outlier status is detected through consecutive gateway failures. This setting can be used to disable ejection or to ramp it up slowly. Defaults to 100.
  /// [enforcingSuccessRate] The percentage chance that a backend endpoint will be ejected when an outlier status is detected through success rate statistics. This setting can be used to disable ejection or to ramp it up slowly. Defaults to 100. Not supported when the backend service uses Serverless NEG.
  /// [interval] Time interval between ejection analysis sweeps. This can result in both new ejections and backend endpoints being returned to service. The interval is equal to the number of seconds as defined in outlierDetection.interval.seconds plus the number of nanoseconds as defined in outlierDetection.interval.nanos. Defaults to 1 second.
  /// [maxEjectionPercent] Maximum percentage of backend endpoints in the load balancing pool for the backend service that can be ejected if the ejection conditions are met. Defaults to 50%.
  /// [successRateMinimumHosts] The number of backend endpoints in the load balancing pool that must have enough request volume to detect success rate outliers. If the number of backend endpoints is fewer than this setting, outlier detection via success rate statistics is not performed for any backend endpoint in the load balancing pool. Defaults to 5. Not supported when the backend service uses Serverless NEG.
  /// [successRateRequestVolume] The minimum number of total requests that must be collected in one interval (as defined by the interval duration above) to include this backend endpoint in success rate based outlier detection. If the volume is lower than this setting, outlier detection via success rate statistics is not performed for that backend endpoint. Defaults to 100. Not supported when the backend service uses Serverless NEG.
  /// [successRateStdevFactor] This factor is used to determine the ejection threshold for success rate outlier ejection. The ejection threshold is the difference between the mean success rate, and the product of this factor and the standard deviation of the mean success rate: mean - (stdev * successRateStdevFactor). This factor is divided by a thousand to get a double. That is, if the desired factor is 1.9, the runtime value should be 1900. Defaults to 1900. Not supported when the backend service uses Serverless NEG.
  OutlierDetectionResponseComputeBeta({
    required this.baseEjectionTime,
    required this.consecutiveErrors,
    required this.consecutiveGatewayFailure,
    required this.enforcingConsecutiveErrors,
    required this.enforcingConsecutiveGatewayFailure,
    required this.enforcingSuccessRate,
    required this.interval,
    required this.maxEjectionPercent,
    required this.successRateMinimumHosts,
    required this.successRateRequestVolume,
    required this.successRateStdevFactor,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseEjectionTime':
          pulumi.Input.mapInputValue<
            DurationResponseComputeBeta,
            Map<String, dynamic>
          >(baseEjectionTime, (value) => value.toMap()),
      'consecutiveErrors': consecutiveErrors,
      'consecutiveGatewayFailure': consecutiveGatewayFailure,
      'enforcingConsecutiveErrors': enforcingConsecutiveErrors,
      'enforcingConsecutiveGatewayFailure': enforcingConsecutiveGatewayFailure,
      'enforcingSuccessRate': enforcingSuccessRate,
      'interval':
          pulumi.Input.mapInputValue<
            DurationResponseComputeBeta,
            Map<String, dynamic>
          >(interval, (value) => value.toMap()),
      'maxEjectionPercent': maxEjectionPercent,
      'successRateMinimumHosts': successRateMinimumHosts,
      'successRateRequestVolume': successRateRequestVolume,
      'successRateStdevFactor': successRateStdevFactor,
    };
  }

  factory OutlierDetectionResponseComputeBeta.fromMap(
    Map<String, dynamic> map,
  ) {
    return OutlierDetectionResponseComputeBeta(
      baseEjectionTime: pulumi.Input.fromValue(
        DurationResponseComputeBeta.fromMap(
          (map['baseEjectionTime']! as Map).cast<String, dynamic>(),
        ),
      ),
      consecutiveErrors: pulumi.Input.fromValue(
        map['consecutiveErrors'] as int,
      ),
      consecutiveGatewayFailure: pulumi.Input.fromValue(
        map['consecutiveGatewayFailure'] as int,
      ),
      enforcingConsecutiveErrors: pulumi.Input.fromValue(
        map['enforcingConsecutiveErrors'] as int,
      ),
      enforcingConsecutiveGatewayFailure: pulumi.Input.fromValue(
        map['enforcingConsecutiveGatewayFailure'] as int,
      ),
      enforcingSuccessRate: pulumi.Input.fromValue(
        map['enforcingSuccessRate'] as int,
      ),
      interval: pulumi.Input.fromValue(
        DurationResponseComputeBeta.fromMap(
          (map['interval']! as Map).cast<String, dynamic>(),
        ),
      ),
      maxEjectionPercent: pulumi.Input.fromValue(
        map['maxEjectionPercent'] as int,
      ),
      successRateMinimumHosts: pulumi.Input.fromValue(
        map['successRateMinimumHosts'] as int,
      ),
      successRateRequestVolume: pulumi.Input.fromValue(
        map['successRateRequestVolume'] as int,
      ),
      successRateStdevFactor: pulumi.Input.fromValue(
        map['successRateStdevFactor'] as int,
      ),
    );
  }
}
