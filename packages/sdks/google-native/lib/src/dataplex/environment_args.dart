// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dataplex_v1_environment_infrastructure_spec.dart';
import 'google_cloud_dataplex_v1_environment_session_spec.dart';

/// {@template pulumi_dataplex_v1_environment_args_doc}
/// The set of arguments for Environment.
/// {@endtemplate}
/// {@macro pulumi_dataplex_v1_environment_args_doc}
class EnvironmentArgs {
  /// Optional. Description of the environment.
  final pulumi.Input<String>? description;
  /// Optional. User friendly display name.
  final pulumi.Input<String>? displayName;
  /// Required. Environment identifier. * Must contain only lowercase letters, numbers and hyphens. * Must start with a letter. * Must be between 1-63 characters. * Must end with a number or a letter. * Must be unique within the lake.
  final pulumi.Input<String> environmentId;
  /// Infrastructure specification for the Environment.
  final pulumi.Input<GoogleCloudDataplexV1EnvironmentInfrastructureSpec> infrastructureSpec;
  /// Optional. User defined labels for the environment.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String> lakeId;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;
  /// Optional. Configuration for sessions created for this environment.
  final pulumi.Input<GoogleCloudDataplexV1EnvironmentSessionSpec>? sessionSpec;

  /// Creates a new [EnvironmentArgs].
  /// [description] Optional. Description of the environment.
  /// [displayName] Optional. User friendly display name.
  /// [environmentId] Required. Environment identifier. * Must contain only lowercase letters, numbers and hyphens. * Must start with a letter. * Must be between 1-63 characters. * Must end with a number or a letter. * Must be unique within the lake.
  /// [infrastructureSpec] Infrastructure specification for the Environment.
  /// [labels] Optional. User defined labels for the environment.
  /// [lakeId] Required.
  /// [location] Optional.
  /// [project] Optional.
  /// [sessionSpec] Optional. Configuration for sessions created for this environment.
  EnvironmentArgs({
    this.description,
    this.displayName,
    required this.environmentId,
    required this.infrastructureSpec,
    this.labels,
    required this.lakeId,
    this.location,
    this.project,
    this.sessionSpec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'environmentId': environmentId,
      'infrastructureSpec': pulumi.Input.mapInputValue<GoogleCloudDataplexV1EnvironmentInfrastructureSpec, Map<String, dynamic>>(infrastructureSpec, (value) => value.toMap()),
      'labels': ?labels,
      'lakeId': lakeId,
      'location': ?location,
      'project': ?project,
      'sessionSpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDataplexV1EnvironmentSessionSpec, Map<String, dynamic>>(sessionSpec, (value) => value.toMap()),
    };
  }

  factory EnvironmentArgs.fromMap(Map<String, dynamic> map) {
    return EnvironmentArgs(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      environmentId: (map['environmentId'] as String).input(),
      infrastructureSpec: (GoogleCloudDataplexV1EnvironmentInfrastructureSpec.fromMap((map['infrastructureSpec'] as Map).cast<String, dynamic>())).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      lakeId: (map['lakeId'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      sessionSpec: map['sessionSpec'] == null ? null : (GoogleCloudDataplexV1EnvironmentSessionSpec.fromMap((map['sessionSpec'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

