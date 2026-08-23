// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Object to define the base blob action conditions. Properties daysAfterModificationGreaterThan, daysAfterLastAccessTimeGreaterThan and daysAfterCreationGreaterThan are mutually exclusive. The daysAfterLastTierChangeGreaterThan property is only applicable for tierToArchive actions which requires daysAfterModificationGreaterThan to be set, also it cannot be used in conjunction with daysAfterLastAccessTimeGreaterThan or daysAfterCreationGreaterThan.
class DateAfterModification {
  /// Value indicating the age in days after blob creation.
  final pulumi.Input<double>? daysAfterCreationGreaterThan;
  /// Value indicating the age in days after last blob access. This property can only be used in conjunction with last access time tracking policy
  final pulumi.Input<double>? daysAfterLastAccessTimeGreaterThan;
  /// Value indicating the age in days after last blob tier change time. This property is only applicable for tierToArchive actions and requires daysAfterModificationGreaterThan to be set for baseBlobs based actions. The blob will be archived if both the conditions are satisfied.
  final pulumi.Input<double>? daysAfterLastTierChangeGreaterThan;
  /// Value indicating the age in days after last modification
  final pulumi.Input<double>? daysAfterModificationGreaterThan;

  /// Creates a new [DateAfterModification].
  /// [daysAfterCreationGreaterThan] Value indicating the age in days after blob creation.
  /// [daysAfterLastAccessTimeGreaterThan] Value indicating the age in days after last blob access. This property can only be used in conjunction with last access time tracking policy
  /// [daysAfterLastTierChangeGreaterThan] Value indicating the age in days after last blob tier change time. This property is only applicable for tierToArchive actions and requires daysAfterModificationGreaterThan to be set for baseBlobs based actions. The blob will be archived if both the conditions are satisfied.
  /// [daysAfterModificationGreaterThan] Value indicating the age in days after last modification
  const DateAfterModification({
    this.daysAfterCreationGreaterThan,
    this.daysAfterLastAccessTimeGreaterThan,
    this.daysAfterLastTierChangeGreaterThan,
    this.daysAfterModificationGreaterThan,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'daysAfterCreationGreaterThan': ?daysAfterCreationGreaterThan,
      'daysAfterLastAccessTimeGreaterThan': ?daysAfterLastAccessTimeGreaterThan,
      'daysAfterLastTierChangeGreaterThan': ?daysAfterLastTierChangeGreaterThan,
      'daysAfterModificationGreaterThan': ?daysAfterModificationGreaterThan,
    };
  }

  factory DateAfterModification.fromMap(Map<String, dynamic> map) {
    return DateAfterModification(
      daysAfterCreationGreaterThan: (() { final guardedValue = map['daysAfterCreationGreaterThan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      daysAfterLastAccessTimeGreaterThan: (() { final guardedValue = map['daysAfterLastAccessTimeGreaterThan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      daysAfterLastTierChangeGreaterThan: (() { final guardedValue = map['daysAfterLastTierChangeGreaterThan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      daysAfterModificationGreaterThan: (() { final guardedValue = map['daysAfterModificationGreaterThan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}
