// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datamigration_v1beta1_get_connection_profile_iam_policy_datamigration_v1beta1_args_doc}
/// Arguments for getConnectionProfileIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_datamigration_v1beta1_get_connection_profile_iam_policy_datamigration_v1beta1_args_doc}
class GetConnectionProfileIamPolicyDatamigrationV1beta1Args {
  final pulumi.Input<String> connectionProfileId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetConnectionProfileIamPolicyDatamigrationV1beta1Args].
  /// [connectionProfileId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetConnectionProfileIamPolicyDatamigrationV1beta1Args({
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

  factory GetConnectionProfileIamPolicyDatamigrationV1beta1Args.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetConnectionProfileIamPolicyDatamigrationV1beta1Args(
      connectionProfileId: pulumi.Input.fromValue(
        map['connectionProfileId'] as String,
      ),
      location: pulumi.Input.fromValue(map['location'] as String),
      optionsRequestedPolicyVersion: (() {
        final guardedValue = map['optionsRequestedPolicyVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
