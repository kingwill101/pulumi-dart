// ignore_for_file: unused_element, unnecessary_cast


/// configuration for the servers offering subPlan
class DefenderForServersAwsOfferingResponseSubPlan {
  /// The available sub plans
  final String? type;

  /// Creates a new [DefenderForServersAwsOfferingResponseSubPlan].
  /// [type] The available sub plans
  DefenderForServersAwsOfferingResponseSubPlan({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory DefenderForServersAwsOfferingResponseSubPlan.fromMap(Map<String, dynamic> map) {
    return DefenderForServersAwsOfferingResponseSubPlan(
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

