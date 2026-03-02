// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FloorsettingAiPlatformFloorSetting {
  /// If true, log Model Armor filter results to Cloud Logging.
  final pulumi.Input<bool>? enableCloudLogging;
  /// If true, Model Armor filters will be run in inspect and block mode.
  /// Requests that trip Model Armor filters will be blocked.
  final pulumi.Input<bool>? inspectAndBlock;
  /// If true, Model Armor filters will be run in inspect only mode. No action
  /// will be taken on the request.
  final pulumi.Input<bool>? inspectOnly;

  /// Creates a new [FloorsettingAiPlatformFloorSetting].
  /// [enableCloudLogging] If true, log Model Armor filter results to Cloud Logging.
  /// [inspectAndBlock] If true, Model Armor filters will be run in inspect and block mode.
  /// [inspectOnly] If true, Model Armor filters will be run in inspect only mode. No action
  FloorsettingAiPlatformFloorSetting({
    this.enableCloudLogging,
    this.inspectAndBlock,
    this.inspectOnly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableCloudLogging': ?enableCloudLogging,
      'inspectAndBlock': ?inspectAndBlock,
      'inspectOnly': ?inspectOnly,
    };
  }

  factory FloorsettingAiPlatformFloorSetting.fromMap(Map<String, dynamic> map) {
    return FloorsettingAiPlatformFloorSetting(
      enableCloudLogging: map['enableCloudLogging'] == null ? null : (map['enableCloudLogging']! as bool).input(),
      inspectAndBlock: map['inspectAndBlock'] == null ? null : (map['inspectAndBlock']! as bool).input(),
      inspectOnly: map['inspectOnly'] == null ? null : (map['inspectOnly']! as bool).input(),
    );
  }
}

