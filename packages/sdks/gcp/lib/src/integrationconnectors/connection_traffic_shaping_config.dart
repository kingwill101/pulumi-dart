// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionTrafficShapingConfig {
  /// Specifies the duration over which the API call quota limits are calculated.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  final pulumi.Input<String> duration;
  /// Maximum number of api calls allowed.
  final pulumi.Input<String> quotaLimit;

  /// Creates a new [ConnectionTrafficShapingConfig].
  /// [duration] Specifies the duration over which the API call quota limits are calculated.
  /// [quotaLimit] Maximum number of api calls allowed.
  const ConnectionTrafficShapingConfig({
    required this.duration,
    required this.quotaLimit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'duration': duration,
      'quotaLimit': quotaLimit,
    };
  }

  factory ConnectionTrafficShapingConfig.fromMap(Map<String, dynamic> map) {
    return ConnectionTrafficShapingConfig(
      duration: pulumi.Input.fromValue(map['duration'] as String),
      quotaLimit: pulumi.Input.fromValue(map['quotaLimit'] as String),
    );
  }
}
