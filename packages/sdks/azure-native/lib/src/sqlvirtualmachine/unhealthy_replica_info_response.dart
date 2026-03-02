// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SQL VM Troubleshoot UnhealthyReplica scenario information.
class UnhealthyReplicaInfoResponse {
  /// The name of the availability group
  final pulumi.Input<String>? availabilityGroupName;

  /// Creates a new [UnhealthyReplicaInfoResponse].
  /// [availabilityGroupName] The name of the availability group
  UnhealthyReplicaInfoResponse({
    this.availabilityGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityGroupName': ?availabilityGroupName,
    };
  }

  factory UnhealthyReplicaInfoResponse.fromMap(Map<String, dynamic> map) {
    return UnhealthyReplicaInfoResponse(
      availabilityGroupName: map['availabilityGroupName'] == null ? null : (map['availabilityGroupName']! as String).input(),
    );
  }
}

