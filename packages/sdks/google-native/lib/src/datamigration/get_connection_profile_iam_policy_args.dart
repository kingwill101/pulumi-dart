// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datamigration_v1_get_connection_profile_iam_policy_args_doc}
/// Arguments for getConnectionProfileIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_datamigration_v1_get_connection_profile_iam_policy_args_doc}
class GetConnectionProfileIamPolicyArgs {
  final pulumi.Input<String> connectionProfileId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetConnectionProfileIamPolicyArgs].
  /// [connectionProfileId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetConnectionProfileIamPolicyArgs({
    required this.connectionProfileId,
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionProfileId': connectionProfileId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetConnectionProfileIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetConnectionProfileIamPolicyArgs(
      connectionProfileId: (map['connectionProfileId'] as String).input(),
      location: (map['location'] as String).input(),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : (map['optionsRequestedPolicyVersion']! as int).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

