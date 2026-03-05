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
    this.dropletId,
    this.ipAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dropletId': ?dropletId,
      'ipAddress': ?ipAddress,
    };
  }

  factory ReservedIpAssignmentState.fromMap(Map<String, dynamic> map) {
    return ReservedIpAssignmentState(
      dropletId: (() { final guardedValue = map['dropletId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

