// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_identitytoolkit_admin_v2_request_logging_response.dart';

/// Configuration related to monitoring project activity.
class GoogleCloudIdentitytoolkitAdminV2MonitoringConfigResponse {
  /// Configuration for logging requests made to this project to Stackdriver Logging
  final pulumi.Input<GoogleCloudIdentitytoolkitAdminV2RequestLoggingResponse> requestLogging;

  /// Creates a new [GoogleCloudIdentitytoolkitAdminV2MonitoringConfigResponse].
  /// [requestLogging] Configuration for logging requests made to this project to Stackdriver Logging
  const GoogleCloudIdentitytoolkitAdminV2MonitoringConfigResponse({
    required this.requestLogging,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestLogging': pulumi.Input.mapInputValue<GoogleCloudIdentitytoolkitAdminV2RequestLoggingResponse, Map<String, dynamic>>(requestLogging, (value) => value.toMap()),
    };
  }

  factory GoogleCloudIdentitytoolkitAdminV2MonitoringConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIdentitytoolkitAdminV2MonitoringConfigResponse(
      requestLogging: pulumi.Input.fromValue(GoogleCloudIdentitytoolkitAdminV2RequestLoggingResponse.fromMap((map['requestLogging']! as Map).cast<String, dynamic>())),
    );
  }
}

