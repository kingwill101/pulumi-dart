// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for logging requests made to this project to Stackdriver Logging
class GoogleCloudIdentitytoolkitAdminV2RequestLogging {
  /// Whether logging is enabled for this project or not.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [GoogleCloudIdentitytoolkitAdminV2RequestLogging].
  /// [enabled] Whether logging is enabled for this project or not.
  GoogleCloudIdentitytoolkitAdminV2RequestLogging({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory GoogleCloudIdentitytoolkitAdminV2RequestLogging.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIdentitytoolkitAdminV2RequestLogging(
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
    );
  }
}

