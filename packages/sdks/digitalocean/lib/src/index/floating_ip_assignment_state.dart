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
    this.dropletId,
    this.ipAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dropletId': ?dropletId,
      'ipAddress': ?ipAddress,
    };
  }

  factory FloatingIpAssignmentState.fromMap(Map<String, dynamic> map) {
    return FloatingIpAssignmentState(
      dropletId: map['dropletId'] == null ? null : (map['dropletId'] as int).input(),
      ipAddress: map['ipAddress'] == null ? null : (map['ipAddress'] as String).input(),
    );
  }
}

