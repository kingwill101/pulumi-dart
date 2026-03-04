// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'networking_ip_assignment_assignment.dart';

/// {@template pulumi_index_networking_ip_assignment_networking_ip_assignment_args_doc}
/// The set of arguments for NetworkingIpAssignment.
/// {@endtemplate}
/// {@macro pulumi_index_networking_ip_assignment_networking_ip_assignment_args_doc}
class NetworkingIpAssignmentArgs {
  /// A list of IP/Linode assignments to apply.
  final pulumi.Input<List<NetworkingIpAssignmentAssignment>>? assignments;

  /// The region where the IP addresses will be assigned.
  final pulumi.Input<String> region;

  /// Creates a new [NetworkingIpAssignmentArgs].
  /// [assignments] A list of IP/Linode assignments to apply.
  /// [region] The region where the IP addresses will be assigned.
  NetworkingIpAssignmentArgs({this.assignments, required this.region});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignments':
          ?pulumi.Input.mapOptionalInputValue<
            List<NetworkingIpAssignmentAssignment>,
            List<Map<String, dynamic>>
          >(
            assignments,
            (value) =>
                pulumi.Input.encodeList<
                  NetworkingIpAssignmentAssignment,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'region': region,
    };
  }

  factory NetworkingIpAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return NetworkingIpAssignmentArgs(
      assignments: (() {
        final guardedValue = map['assignments'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<NetworkingIpAssignmentAssignment>(
            guardedValue,
            (value) => NetworkingIpAssignmentAssignment.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      region: pulumi.Input.fromValue(map['region'] as String),
    );
  }
}
