// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Object to define snapshot and version action conditions.
class DateAfterCreationResponse {
  /// Value indicating the age in days after creation
  final pulumi.Input<double> daysAfterCreationGreaterThan;

  /// Value indicating the age in days after last blob tier change time. This property is only applicable for tierToArchive actions and requires daysAfterCreationGreaterThan to be set for snapshots and blob version based actions. The blob will be archived if both the conditions are satisfied.
  final pulumi.Input<double>? daysAfterLastTierChangeGreaterThan;

  /// Creates a new [DateAfterCreationResponse].
  /// [daysAfterCreationGreaterThan] Value indicating the age in days after creation
  /// [daysAfterLastTierChangeGreaterThan] Value indicating the age in days after last blob tier change time. This property is only applicable for tierToArchive actions and requires daysAfterCreationGreaterThan to be set for snapshots and blob version based actions. The blob will be archived if both the conditions are satisfied.
  DateAfterCreationResponse({
    required this.daysAfterCreationGreaterThan,
    this.daysAfterLastTierChangeGreaterThan,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'daysAfterCreationGreaterThan': daysAfterCreationGreaterThan,
      'daysAfterLastTierChangeGreaterThan': ?daysAfterLastTierChangeGreaterThan,
    };
  }

  factory DateAfterCreationResponse.fromMap(Map<String, dynamic> map) {
    return DateAfterCreationResponse(
      daysAfterCreationGreaterThan: pulumi.Input.fromValue(
        map['daysAfterCreationGreaterThan'] as double,
      ),
      daysAfterLastTierChangeGreaterThan: (() {
        final guardedValue = map['daysAfterLastTierChangeGreaterThan'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
    );
  }
}
