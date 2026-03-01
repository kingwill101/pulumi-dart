// ignore_for_file: unused_element, unnecessary_cast


/// Long term policy schedule.
class LongTermSchedulePolicyResponse {
  /// This property will be used as the discriminator for deciding the specific types in the polymorphic chain of types.
  /// Expected value is 'LongTermSchedulePolicy'.
  final String schedulePolicyType;

  /// Creates a new [LongTermSchedulePolicyResponse].
  /// [schedulePolicyType] This property will be used as the discriminator for deciding the specific types in the polymorphic chain of types.
  LongTermSchedulePolicyResponse({
    required this.schedulePolicyType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'schedulePolicyType': schedulePolicyType,
    };
  }

  factory LongTermSchedulePolicyResponse.fromMap(Map<String, dynamic> map) {
    return LongTermSchedulePolicyResponse(
      schedulePolicyType: map['schedulePolicyType'] as String,
    );
  }
}

