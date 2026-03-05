// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// There is an OR relationship between these attributes. They are used to determine if a table should be scanned or not in Discovery.
class GooglePrivacyDlpV2OrConditions {
  /// Minimum age a table must have before Cloud DLP can profile it. Value must be 1 hour or greater.
  final pulumi.Input<String>? minAge;
  /// Minimum number of rows that should be present before Cloud DLP profiles a table
  final pulumi.Input<int>? minRowCount;

  /// Creates a new [GooglePrivacyDlpV2OrConditions].
  /// [minAge] Minimum age a table must have before Cloud DLP can profile it. Value must be 1 hour or greater.
  /// [minRowCount] Minimum number of rows that should be present before Cloud DLP profiles a table
  GooglePrivacyDlpV2OrConditions({
    this.minAge,
    this.minRowCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minAge': ?minAge,
      'minRowCount': ?minRowCount,
    };
  }

  factory GooglePrivacyDlpV2OrConditions.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2OrConditions(
      minAge: (() { final guardedValue = map['minAge']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minRowCount: (() { final guardedValue = map['minRowCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

