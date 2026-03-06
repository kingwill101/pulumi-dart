// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_identitytoolkit_admin_v2_request_logging.dart';

/// Configuration related to monitoring project activity.
class GoogleCloudIdentitytoolkitAdminV2MonitoringConfig {
  /// Configuration for logging requests made to this project to Stackdriver Logging
  final pulumi.Input<GoogleCloudIdentitytoolkitAdminV2RequestLogging>? requestLogging;

  /// Creates a new [GoogleCloudIdentitytoolkitAdminV2MonitoringConfig].
  /// [requestLogging] Configuration for logging requests made to this project to Stackdriver Logging
  const GoogleCloudIdentitytoolkitAdminV2MonitoringConfig({
    this.requestLogging,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestLogging': ?pulumi.Input.mapOptionalInputValue<GoogleCloudIdentitytoolkitAdminV2RequestLogging, Map<String, dynamic>>(requestLogging, (value) => value.toMap()),
    };
  }

  factory GoogleCloudIdentitytoolkitAdminV2MonitoringConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIdentitytoolkitAdminV2MonitoringConfig(
      requestLogging: (() { final guardedValue = map['requestLogging']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudIdentitytoolkitAdminV2RequestLogging.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

