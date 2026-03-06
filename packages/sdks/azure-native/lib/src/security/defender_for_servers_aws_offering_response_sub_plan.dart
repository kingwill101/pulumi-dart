// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// configuration for the servers offering subPlan
class DefenderForServersAwsOfferingResponseSubPlan {
  /// The available sub plans
  final pulumi.Input<String>? type;

  /// Creates a new [DefenderForServersAwsOfferingResponseSubPlan].
  /// [type] The available sub plans
  const DefenderForServersAwsOfferingResponseSubPlan({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory DefenderForServersAwsOfferingResponseSubPlan.fromMap(Map<String, dynamic> map) {
    return DefenderForServersAwsOfferingResponseSubPlan(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

