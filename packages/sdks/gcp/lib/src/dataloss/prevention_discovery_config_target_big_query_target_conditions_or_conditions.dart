// ignore_for_file: unused_element, unnecessary_cast


class PreventionDiscoveryConfigTargetBigQueryTargetConditionsOrConditions {
  /// Duration format. The minimum age a table must have before Cloud DLP can profile it. Value greater than 1.
  final String? minAge;
  /// Minimum number of rows that should be present before Cloud DLP profiles as a table.
  final int? minRowCount;

  /// Creates a new [PreventionDiscoveryConfigTargetBigQueryTargetConditionsOrConditions].
  /// [minAge] Duration format. The minimum age a table must have before Cloud DLP can profile it. Value greater than 1.
  /// [minRowCount] Minimum number of rows that should be present before Cloud DLP profiles as a table.
  PreventionDiscoveryConfigTargetBigQueryTargetConditionsOrConditions({
    this.minAge,
    this.minRowCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minAge': ?minAge,
      'minRowCount': ?minRowCount,
    };
  }

  factory PreventionDiscoveryConfigTargetBigQueryTargetConditionsOrConditions.fromMap(Map<String, dynamic> map) {
    return PreventionDiscoveryConfigTargetBigQueryTargetConditionsOrConditions(
      minAge: map['minAge'] == null ? null : map['minAge'] as String,
      minRowCount: map['minRowCount'] == null ? null : map['minRowCount'] as int,
    );
  }
}

