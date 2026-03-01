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
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    required pulumi.Output<String> environmentId,
    required pulumi.Output<GoogleCloudDataplexV1EnvironmentInfrastructureSpec> infrastructureSpec,
    pulumi.Output<Map<String, String>>? labels,
    required pulumi.Output<String> lakeId,
    pulumi.Output<String>? location,
    pulumi.Output<String>? project,
    pulumi.Output<GoogleCloudDataplexV1EnvironmentSessionSpec>? sessionSpec,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      environmentId = pulumi.Input.asInput<String>(environmentId),
      infrastructureSpec = pulumi.Input.asInput<GoogleCloudDataplexV1EnvironmentInfrastructureSpec>(infrastructureSpec),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      lakeId = pulumi.Input.asInput<String>(lakeId),
      location = pulumi.Input.asOptionalInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      sessionSpec = pulumi.Input.asOptionalInput<GoogleCloudDataplexV1EnvironmentSessionSpec>(sessionSpec);

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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      environmentId: pulumi.Output.create<String>(map['environmentId'] as String),
      infrastructureSpec: pulumi.Output.create<GoogleCloudDataplexV1EnvironmentInfrastructureSpec>(GoogleCloudDataplexV1EnvironmentInfrastructureSpec.fromMap((map['infrastructureSpec'] as Map).cast<String, dynamic>())),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      lakeId: pulumi.Output.create<String>(map['lakeId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      sessionSpec: map['sessionSpec'] == null ? null : pulumi.Output.create<GoogleCloudDataplexV1EnvironmentSessionSpec>(GoogleCloudDataplexV1EnvironmentSessionSpec.fromMap((map['sessionSpec'] as Map).cast<String, dynamic>())),
    );
  }
}

