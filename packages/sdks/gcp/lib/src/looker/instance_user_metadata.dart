// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceUserMetadata {
  /// Number of additional Developer Users to allocate to the Looker Instance.
  final pulumi.Input<int?>? additionalDeveloperUserCount;
  /// Number of additional Standard Users to allocate to the Looker Instance.
  final pulumi.Input<int?>? additionalStandardUserCount;
  /// Number of additional Viewer Users to allocate to the Looker Instance.
  final pulumi.Input<int?>? additionalViewerUserCount;

  /// Creates a new [InstanceUserMetadata].
  /// [additionalDeveloperUserCount] Number of additional Developer Users to allocate to the Looker Instance.
  /// [additionalStandardUserCount] Number of additional Standard Users to allocate to the Looker Instance.
  /// [additionalViewerUserCount] Number of additional Viewer Users to allocate to the Looker Instance.
  const InstanceUserMetadata({
    this.additionalDeveloperUserCount,
    this.additionalStandardUserCount,
    this.additionalViewerUserCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalDeveloperUserCount': ?additionalDeveloperUserCount,
      'additionalStandardUserCount': ?additionalStandardUserCount,
      'additionalViewerUserCount': ?additionalViewerUserCount,
    };
  }

  factory InstanceUserMetadata.fromMap(Map<String, dynamic> map) {
    return InstanceUserMetadata(
      additionalDeveloperUserCount: (() { final guardedValue = map['additionalDeveloperUserCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      additionalStandardUserCount: (() { final guardedValue = map['additionalStandardUserCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      additionalViewerUserCount: (() { final guardedValue = map['additionalViewerUserCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
