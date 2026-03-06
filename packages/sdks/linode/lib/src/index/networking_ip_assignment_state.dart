// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'networking_ip_assignment_assignment.dart';

/// Input properties used for looking up and filtering NetworkingIpAssignment resources.
class NetworkingIpAssignmentState {
  /// A list of IP/Linode assignments to apply.
  final pulumi.Input<List<NetworkingIpAssignmentAssignment>>? assignments;
  /// The region where the IP addresses will be assigned.
  final pulumi.Input<String>? region;

  /// Creates a new [NetworkingIpAssignmentState].
  /// [assignments] A list of IP/Linode assignments to apply.
  /// [region] The region where the IP addresses will be assigned.
  const NetworkingIpAssignmentState({
    this.assignments,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignments': ?pulumi.Input.mapOptionalInputValue<List<NetworkingIpAssignmentAssignment>, List<Map<String, dynamic>>>(assignments, (value) => pulumi.Input.encodeList<NetworkingIpAssignmentAssignment, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
    };
  }

  factory NetworkingIpAssignmentState.fromMap(Map<String, dynamic> map) {
    return NetworkingIpAssignmentState(
      assignments: (() { final guardedValue = map['assignments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkingIpAssignmentAssignment>(guardedValue, (value) => NetworkingIpAssignmentAssignment.fromMap((value as Map).cast<String, dynamic>()))); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

