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
  NetworkingIpAssignmentState({
    pulumi.Output<List<NetworkingIpAssignmentAssignment>>? assignments,
    pulumi.Output<String>? region,
  }) :
      assignments = pulumi.Input.asOptionalInput<List<NetworkingIpAssignmentAssignment>>(assignments),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignments': ?pulumi.Input.mapOptionalInputValue<List<NetworkingIpAssignmentAssignment>, List<Map<String, dynamic>>>(assignments, (value) => pulumi.Input.encodeList<NetworkingIpAssignmentAssignment, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
    };
  }

  factory NetworkingIpAssignmentState.fromMap(Map<String, dynamic> map) {
    return NetworkingIpAssignmentState(
      assignments: map['assignments'] == null ? null : pulumi.Output.create<List<NetworkingIpAssignmentAssignment>>(pulumi.Input.decodeList<NetworkingIpAssignmentAssignment>(map['assignments'], (value) => NetworkingIpAssignmentAssignment.fromMap((value as Map).cast<String, dynamic>()))),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

