// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering FloatingIpAssignment resources.
class FloatingIpAssignmentState {
  /// The ID of Droplet that the Floating IP will be assigned to.
  final pulumi.Input<int>? dropletId;
  /// The Floating IP to assign to the Droplet.
  final pulumi.Input<String>? ipAddress;

  /// Creates a new [FloatingIpAssignmentState].
  /// [dropletId] The ID of Droplet that the Floating IP will be assigned to.
  /// [ipAddress] The Floating IP to assign to the Droplet.
  FloatingIpAssignmentState({
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

  factory FloatingIpAssignmentState.fromMap(Map<String, dynamic> map) {
    return FloatingIpAssignmentState(
      dropletId: map['dropletId'] == null ? null : pulumi.Output.create<int>(map['dropletId'] as int),
      ipAddress: map['ipAddress'] == null ? null : pulumi.Output.create<String>(map['ipAddress'] as String),
    );
  }
}

