// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// configuration for the servers offering subPlan
class DefenderForServersAwsOfferingSubPlan {
  /// The available sub plans
  final pulumi.Input<String>? type;

  /// Creates a new [DefenderForServersAwsOfferingSubPlan].
  /// [type] The available sub plans
  DefenderForServersAwsOfferingSubPlan({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory DefenderForServersAwsOfferingSubPlan.fromMap(Map<String, dynamic> map) {
    return DefenderForServersAwsOfferingSubPlan(
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

