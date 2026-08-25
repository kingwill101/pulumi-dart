// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FloorsettingGoogleMcpServerFloorSetting {
  /// If true, log Model Armor filter results to Cloud Logging.
  final pulumi.Input<bool?>? enableCloudLogging;
  /// If true, Model Armor filters will be run in inspect and block mode.
  /// Requests that trip Model Armor filters will be blocked.
  final pulumi.Input<bool?>? inspectAndBlock;
  /// If true, Model Armor filters will be run in inspect only mode. No action
  /// will be taken on the request.
  final pulumi.Input<bool?>? inspectOnly;

  /// Creates a new [FloorsettingGoogleMcpServerFloorSetting].
  /// [enableCloudLogging] If true, log Model Armor filter results to Cloud Logging.
  /// [inspectAndBlock] If true, Model Armor filters will be run in inspect and block mode.
  /// [inspectOnly] If true, Model Armor filters will be run in inspect only mode. No action
  const FloorsettingGoogleMcpServerFloorSetting({
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

  factory FloorsettingGoogleMcpServerFloorSetting.fromMap(Map<String, dynamic> map) {
    return FloorsettingGoogleMcpServerFloorSetting(
      enableCloudLogging: (() { final guardedValue = map['enableCloudLogging']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      inspectAndBlock: (() { final guardedValue = map['inspectAndBlock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      inspectOnly: (() { final guardedValue = map['inspectOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
