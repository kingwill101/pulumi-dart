// ignore_for_file: unused_element, unnecessary_cast


class AlertPolicyCreationRecord {
  /// (Output)
  /// When the change occurred.
  final String? mutateTime;
  /// (Output)
  /// The email address of the user making the change.
  final String? mutatedBy;

  /// Creates a new [AlertPolicyCreationRecord].
  /// [mutateTime] (Output)
  /// [mutatedBy] (Output)
  AlertPolicyCreationRecord({
    this.mutateTime,
    this.mutatedBy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mutateTime': ?mutateTime,
      'mutatedBy': ?mutatedBy,
    };
  }

  factory AlertPolicyCreationRecord.fromMap(Map<String, dynamic> map) {
    return AlertPolicyCreationRecord(
      mutateTime: map['mutateTime'] == null ? null : map['mutateTime'] as String,
      mutatedBy: map['mutatedBy'] == null ? null : map['mutatedBy'] as String,
    );
  }
}

