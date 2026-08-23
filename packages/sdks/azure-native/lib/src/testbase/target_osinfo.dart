// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The information of the target OS to be tested.
class TargetOSInfo {
  /// Specifies the baseline OSs to be tested.
  final pulumi.Input<List<String>>? baselineOSs;
  /// Insider Channel Ids. Only used for feature update.
  final pulumi.Input<List<String>>? insiderChannelIds;
  /// Specifies the OS update type to test against, e.g., 'Security updates' or 'Feature updates'.
  final pulumi.Input<String> osUpdateType;
  /// Specifies the ids of the target OSs from Custom Images to be tested.
  final pulumi.Input<List<String>>? targetOSImageIds;
  /// Specifies the target OSs to be tested.
  final pulumi.Input<List<String>>? targetOSs;

  /// Creates a new [TargetOSInfo].
  /// [baselineOSs] Specifies the baseline OSs to be tested.
  /// [insiderChannelIds] Insider Channel Ids. Only used for feature update.
  /// [osUpdateType] Specifies the OS update type to test against, e.g., 'Security updates' or 'Feature updates'.
  /// [targetOSImageIds] Specifies the ids of the target OSs from Custom Images to be tested.
  /// [targetOSs] Specifies the target OSs to be tested.
  const TargetOSInfo({
    this.baselineOSs,
    this.insiderChannelIds,
    required this.osUpdateType,
    this.targetOSImageIds,
    this.targetOSs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baselineOSs': ?baselineOSs,
      'insiderChannelIds': ?insiderChannelIds,
      'osUpdateType': osUpdateType,
      'targetOSImageIds': ?targetOSImageIds,
      'targetOSs': ?targetOSs,
    };
  }

  factory TargetOSInfo.fromMap(Map<String, dynamic> map) {
    return TargetOSInfo(
      baselineOSs: (() { final guardedValue = map['baselineOSs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      insiderChannelIds: (() { final guardedValue = map['insiderChannelIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      osUpdateType: pulumi.Input.fromValue(map['osUpdateType'] as String),
      targetOSImageIds: (() { final guardedValue = map['targetOSImageIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      targetOSs: (() { final guardedValue = map['targetOSs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
