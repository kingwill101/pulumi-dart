// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'basic_sli_response.dart';
import 'request_based_sli_response.dart';
import 'windows_based_sli_response.dart';

/// A Service-Level Indicator (SLI) describes the "performance" of a service. For some services, the SLI is well-defined. In such cases, the SLI can be described easily by referencing the well-known SLI and providing the needed parameters. Alternatively, a "custom" SLI can be defined with a query to the underlying metric store. An SLI is defined to be good_service / total_service over any queried time interval. The value of performance always falls into the range 0 &lt;= performance &lt;= 1. A custom SLI describes how to compute this ratio, whether this is by dividing values from a pair of time series, cutting a Distribution into good and bad counts, or counting time windows in which the service complies with a criterion. For separation of concerns, a single Service-Level Indicator measures performance for only one aspect of service quality, such as fraction of successful queries or fast-enough queries.
class ServiceLevelIndicatorResponse {
  /// Basic SLI on a well-known service type.
  final pulumi.Input<BasicSliResponse> basicSli;
  /// Request-based SLIs
  final pulumi.Input<RequestBasedSliResponse> requestBased;
  /// Windows-based SLIs
  final pulumi.Input<WindowsBasedSliResponse> windowsBased;

  /// Creates a new [ServiceLevelIndicatorResponse].
  /// [basicSli] Basic SLI on a well-known service type.
  /// [requestBased] Request-based SLIs
  /// [windowsBased] Windows-based SLIs
  const ServiceLevelIndicatorResponse({
    required this.basicSli,
    required this.requestBased,
    required this.windowsBased,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basicSli': pulumi.Input.mapInputValue<BasicSliResponse, Map<String, dynamic>>(basicSli, (value) => value.toMap()),
      'requestBased': pulumi.Input.mapInputValue<RequestBasedSliResponse, Map<String, dynamic>>(requestBased, (value) => value.toMap()),
      'windowsBased': pulumi.Input.mapInputValue<WindowsBasedSliResponse, Map<String, dynamic>>(windowsBased, (value) => value.toMap()),
    };
  }

  factory ServiceLevelIndicatorResponse.fromMap(Map<String, dynamic> map) {
    return ServiceLevelIndicatorResponse(
      basicSli: pulumi.Input.fromValue(BasicSliResponse.fromMap((map['basicSli']! as Map).cast<String, dynamic>())),
      requestBased: pulumi.Input.fromValue(RequestBasedSliResponse.fromMap((map['requestBased']! as Map).cast<String, dynamic>())),
      windowsBased: pulumi.Input.fromValue(WindowsBasedSliResponse.fromMap((map['windowsBased']! as Map).cast<String, dynamic>())),
    );
  }
}

