// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The details of the InMage agent.
class InMageAgentDetailsResponse {
  /// Agent expiry date.
  final pulumi.Input<String>? agentExpiryDate;
  /// A value indicating whether installed agent needs to be updated.
  final pulumi.Input<String>? agentUpdateStatus;
  /// The agent version.
  final pulumi.Input<String>? agentVersion;
  /// A value indicating whether reboot is required after update is applied.
  final pulumi.Input<String>? postUpdateRebootStatus;

  /// Creates a new [InMageAgentDetailsResponse].
  /// [agentExpiryDate] Agent expiry date.
  /// [agentUpdateStatus] A value indicating whether installed agent needs to be updated.
  /// [agentVersion] The agent version.
  /// [postUpdateRebootStatus] A value indicating whether reboot is required after update is applied.
  InMageAgentDetailsResponse({
    this.agentExpiryDate,
    this.agentUpdateStatus,
    this.agentVersion,
    this.postUpdateRebootStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentExpiryDate': ?agentExpiryDate,
      'agentUpdateStatus': ?agentUpdateStatus,
      'agentVersion': ?agentVersion,
      'postUpdateRebootStatus': ?postUpdateRebootStatus,
    };
  }

  factory InMageAgentDetailsResponse.fromMap(Map<String, dynamic> map) {
    return InMageAgentDetailsResponse(
      agentExpiryDate: map['agentExpiryDate'] == null ? null : (map['agentExpiryDate']! as String).input(),
      agentUpdateStatus: map['agentUpdateStatus'] == null ? null : (map['agentUpdateStatus']! as String).input(),
      agentVersion: map['agentVersion'] == null ? null : (map['agentVersion']! as String).input(),
      postUpdateRebootStatus: map['postUpdateRebootStatus'] == null ? null : (map['postUpdateRebootStatus']! as String).input(),
    );
  }
}

