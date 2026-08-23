// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Ad break.
class AdBreakResponse {
  /// Start time in seconds for the ad break, relative to the output file timeline. The default is `0s`.
  final pulumi.Input<String> startTimeOffset;

  /// Creates a new [AdBreakResponse].
  /// [startTimeOffset] Start time in seconds for the ad break, relative to the output file timeline. The default is `0s`.
  const AdBreakResponse({
    required this.startTimeOffset,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'startTimeOffset': startTimeOffset,
    };
  }

  factory AdBreakResponse.fromMap(Map<String, dynamic> map) {
    return AdBreakResponse(
      startTimeOffset: pulumi.Input.fromValue(map['startTimeOffset'] as String),
    );
  }
}
