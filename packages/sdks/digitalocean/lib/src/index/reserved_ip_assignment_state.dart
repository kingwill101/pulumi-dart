// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ReservedIpAssignment resources.
class ReservedIpAssignmentState {
  /// The ID of Droplet that the reserved IP will be assigned to.
  final pulumi.Input<int>? dropletId;
  /// The reserved IP to assign to the Droplet.
  final pulumi.Input<String>? ipAddress;

  /// Creates a new [ReservedIpAssignmentState].
  /// [dropletId] The ID of Droplet that the reserved IP will be assigned to.
  /// [ipAddress] The reserved IP to assign to the Droplet.
  ReservedIpAssignmentState({
    pulumi.Output<int>? dropletId,
    pulumi.Output<String>? ipAddress,
  }) :
      dropletId = pulumi.Input.asOptionalInput<int>(dropletId),
      ipAddress = pulumi.Input.asOptionalInput<String>(ipAddress);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dropletId': ?dropletId,
      'ipAddress': ?ipAddress,
    };
  }

  factory ReservedIpAssignmentState.fromMap(Map<String, dynamic> map) {
    return ReservedIpAssignmentState(
      dropletId: map['dropletId'] == null ? null : pulumi.Output.create<int>(map['dropletId'] as int),
      ipAddress: map['ipAddress'] == null ? null : pulumi.Output.create<String>(map['ipAddress'] as String),
    );
  }
}

