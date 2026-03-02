// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Pairs of Managed Instances in the failover group.
class ManagedInstancePairInfo {
  /// Id of Partner Managed Instance in pair.
  final pulumi.Input<String>? partnerManagedInstanceId;
  /// Id of Primary Managed Instance in pair.
  final pulumi.Input<String>? primaryManagedInstanceId;

  /// Creates a new [ManagedInstancePairInfo].
  /// [partnerManagedInstanceId] Id of Partner Managed Instance in pair.
  /// [primaryManagedInstanceId] Id of Primary Managed Instance in pair.
  ManagedInstancePairInfo({
    this.partnerManagedInstanceId,
    this.primaryManagedInstanceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'partnerManagedInstanceId': ?partnerManagedInstanceId,
      'primaryManagedInstanceId': ?primaryManagedInstanceId,
    };
  }

  factory ManagedInstancePairInfo.fromMap(Map<String, dynamic> map) {
    return ManagedInstancePairInfo(
      partnerManagedInstanceId: map['partnerManagedInstanceId'] == null ? null : (map['partnerManagedInstanceId']! as String).input(),
      primaryManagedInstanceId: map['primaryManagedInstanceId'] == null ? null : (map['primaryManagedInstanceId']! as String).input(),
    );
  }
}

