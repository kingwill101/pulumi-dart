// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// configuration for the servers offering subPlan
class DefenderForServersGcpOfferingResponseSubPlan {
  /// The available sub plans
  final pulumi.Input<String>? type;

  /// Creates a new [DefenderForServersGcpOfferingResponseSubPlan].
  /// [type] The available sub plans
  DefenderForServersGcpOfferingResponseSubPlan({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory DefenderForServersGcpOfferingResponseSubPlan.fromMap(Map<String, dynamic> map) {
    return DefenderForServersGcpOfferingResponseSubPlan(
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

