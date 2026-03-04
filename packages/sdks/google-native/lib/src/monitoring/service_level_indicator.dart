// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'basic_sli.dart';
import 'request_based_sli.dart';
import 'windows_based_sli.dart';

/// A Service-Level Indicator (SLI) describes the "performance" of a service. For some services, the SLI is well-defined. In such cases, the SLI can be described easily by referencing the well-known SLI and providing the needed parameters. Alternatively, a "custom" SLI can be defined with a query to the underlying metric store. An SLI is defined to be good_service / total_service over any queried time interval. The value of performance always falls into the range 0 &lt;= performance &lt;= 1. A custom SLI describes how to compute this ratio, whether this is by dividing values from a pair of time series, cutting a Distribution into good and bad counts, or counting time windows in which the service complies with a criterion. For separation of concerns, a single Service-Level Indicator measures performance for only one aspect of service quality, such as fraction of successful queries or fast-enough queries.
class ServiceLevelIndicator {
  /// Basic SLI on a well-known service type.
  final pulumi.Input<BasicSli>? basicSli;

  /// Request-based SLIs
  final pulumi.Input<RequestBasedSli>? requestBased;

  /// Windows-based SLIs
  final pulumi.Input<WindowsBasedSli>? windowsBased;

  /// Creates a new [ServiceLevelIndicator].
  /// [basicSli] Basic SLI on a well-known service type.
  /// [requestBased] Request-based SLIs
  /// [windowsBased] Windows-based SLIs
  ServiceLevelIndicator({this.basicSli, this.requestBased, this.windowsBased});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basicSli':
          ?pulumi.Input.mapOptionalInputValue<BasicSli, Map<String, dynamic>>(
            basicSli,
            (value) => value.toMap(),
          ),
      'requestBased':
          ?pulumi.Input.mapOptionalInputValue<
            RequestBasedSli,
            Map<String, dynamic>
          >(requestBased, (value) => value.toMap()),
      'windowsBased':
          ?pulumi.Input.mapOptionalInputValue<
            WindowsBasedSli,
            Map<String, dynamic>
          >(windowsBased, (value) => value.toMap()),
    };
  }

  factory ServiceLevelIndicator.fromMap(Map<String, dynamic> map) {
    return ServiceLevelIndicator(
      basicSli: (() {
        final guardedValue = map['basicSli'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BasicSli.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      requestBased: (() {
        final guardedValue = map['requestBased'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RequestBasedSli.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      windowsBased: (() {
        final guardedValue = map['windowsBased'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WindowsBasedSli.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
