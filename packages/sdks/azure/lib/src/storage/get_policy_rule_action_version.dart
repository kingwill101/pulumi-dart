// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPolicyRuleActionVersion {
  /// The age in days after creation to tier blob version to archive storage.
  final pulumi.Input<int> changeTierToArchiveAfterDaysSinceCreation;
  /// The age in days after creation to tier blob version to cool storage.
  final pulumi.Input<int> changeTierToCoolAfterDaysSinceCreation;
  /// The age in days after creation to delete the blob version.
  final pulumi.Input<int> deleteAfterDaysSinceCreation;
  /// The age in days after last tier change to the blobs to skip to be archived.
  final pulumi.Input<int> tierToArchiveAfterDaysSinceLastTierChangeGreaterThan;
  /// Optional The age in days after creation to cold storage. Supports blob currently at Hot tier.
  final pulumi.Input<int> tierToColdAfterDaysSinceCreationGreaterThan;

  /// Creates a new [GetPolicyRuleActionVersion].
  /// [changeTierToArchiveAfterDaysSinceCreation] The age in days after creation to tier blob version to archive storage.
  /// [changeTierToCoolAfterDaysSinceCreation] The age in days after creation to tier blob version to cool storage.
  /// [deleteAfterDaysSinceCreation] The age in days after creation to delete the blob version.
  /// [tierToArchiveAfterDaysSinceLastTierChangeGreaterThan] The age in days after last tier change to the blobs to skip to be archived.
  /// [tierToColdAfterDaysSinceCreationGreaterThan] Optional The age in days after creation to cold storage. Supports blob currently at Hot tier.
  const GetPolicyRuleActionVersion({
    required this.changeTierToArchiveAfterDaysSinceCreation,
    required this.changeTierToCoolAfterDaysSinceCreation,
    required this.deleteAfterDaysSinceCreation,
    required this.tierToArchiveAfterDaysSinceLastTierChangeGreaterThan,
    required this.tierToColdAfterDaysSinceCreationGreaterThan,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'changeTierToArchiveAfterDaysSinceCreation': changeTierToArchiveAfterDaysSinceCreation,
      'changeTierToCoolAfterDaysSinceCreation': changeTierToCoolAfterDaysSinceCreation,
      'deleteAfterDaysSinceCreation': deleteAfterDaysSinceCreation,
      'tierToArchiveAfterDaysSinceLastTierChangeGreaterThan': tierToArchiveAfterDaysSinceLastTierChangeGreaterThan,
      'tierToColdAfterDaysSinceCreationGreaterThan': tierToColdAfterDaysSinceCreationGreaterThan,
    };
  }

  factory GetPolicyRuleActionVersion.fromMap(Map<String, dynamic> map) {
    return GetPolicyRuleActionVersion(
      changeTierToArchiveAfterDaysSinceCreation: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['changeTierToArchiveAfterDaysSinceCreation'])),
      changeTierToCoolAfterDaysSinceCreation: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['changeTierToCoolAfterDaysSinceCreation'])),
      deleteAfterDaysSinceCreation: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['deleteAfterDaysSinceCreation'])),
      tierToArchiveAfterDaysSinceLastTierChangeGreaterThan: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['tierToArchiveAfterDaysSinceLastTierChangeGreaterThan'])),
      tierToColdAfterDaysSinceCreationGreaterThan: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['tierToColdAfterDaysSinceCreationGreaterThan'])),
    );
  }
}
