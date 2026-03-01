// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ReservedIpv6Assignment resources.
class ReservedIpv6AssignmentState {
  /// The ID of Droplet that the reserved IPv6 will be assigned to.
  final pulumi.Input<int>? dropletId;
  /// The reserved IPv6 to assign to the Droplet.
  final pulumi.Input<String>? ip;

  /// Creates a new [ReservedIpv6AssignmentState].
  /// [dropletId] The ID of Droplet that the reserved IPv6 will be assigned to.
  /// [ip] The reserved IPv6 to assign to the Droplet.
  ReservedIpv6AssignmentState({
    pulumi.Output<int>? dropletId,
    pulumi.Output<String>? ip,
  }) :
      dropletId = pulumi.Input.asOptionalInput<int>(dropletId),
      ip = pulumi.Input.asOptionalInput<String>(ip);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dropletId': ?dropletId,
      'ip': ?ip,
    };
  }

  factory ReservedIpv6AssignmentState.fromMap(Map<String, dynamic> map) {
    return ReservedIpv6AssignmentState(
      dropletId: map['dropletId'] == null ? null : pulumi.Output.create<int>(map['dropletId'] as int),
      ip: map['ip'] == null ? null : pulumi.Output.create<String>(map['ip'] as String),
    );
  }
}

