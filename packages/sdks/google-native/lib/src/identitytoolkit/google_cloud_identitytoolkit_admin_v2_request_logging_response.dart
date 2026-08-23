// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for logging requests made to this project to Stackdriver Logging
class GoogleCloudIdentitytoolkitAdminV2RequestLoggingResponse {
  /// Whether logging is enabled for this project or not.
  final pulumi.Input<bool> enabled;

  /// Creates a new [GoogleCloudIdentitytoolkitAdminV2RequestLoggingResponse].
  /// [enabled] Whether logging is enabled for this project or not.
  const GoogleCloudIdentitytoolkitAdminV2RequestLoggingResponse({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GoogleCloudIdentitytoolkitAdminV2RequestLoggingResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIdentitytoolkitAdminV2RequestLoggingResponse(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
