// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataAccessScopeDeniedDataAccessLabelIngestionLabel {
  /// Required. The key of the ingestion label. Always required.
  final pulumi.Input<String> ingestionLabelKey;
  /// Optional. The value of the ingestion label. Optional. An object
  /// with no provided value and some key provided would match
  /// against the given key and ANY value.
  final pulumi.Input<String?>? ingestionLabelValue;

  /// Creates a new [DataAccessScopeDeniedDataAccessLabelIngestionLabel].
  /// [ingestionLabelKey] Required. The key of the ingestion label. Always required.
  /// [ingestionLabelValue] Optional. The value of the ingestion label. Optional. An object
  const DataAccessScopeDeniedDataAccessLabelIngestionLabel({
    required this.ingestionLabelKey,
    this.ingestionLabelValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ingestionLabelKey': ingestionLabelKey,
      'ingestionLabelValue': ?ingestionLabelValue,
    };
  }

  factory DataAccessScopeDeniedDataAccessLabelIngestionLabel.fromMap(Map<String, dynamic> map) {
    return DataAccessScopeDeniedDataAccessLabelIngestionLabel(
      ingestionLabelKey: pulumi.Input.fromValue(map['ingestionLabelKey'] as String),
      ingestionLabelValue: (() { final guardedValue = map['ingestionLabelValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
