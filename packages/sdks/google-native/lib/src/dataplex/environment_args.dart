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
  final pulumi.Input<GoogleCloudDataplexV1EnvironmentInfrastructureSpec>
  infrastructureSpec;

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
      'infrastructureSpec':
          pulumi.Input.mapInputValue<
            GoogleCloudDataplexV1EnvironmentInfrastructureSpec,
            Map<String, dynamic>
          >(infrastructureSpec, (value) => value.toMap()),
      'labels': ?labels,
      'lakeId': lakeId,
      'location': ?location,
      'project': ?project,
      'sessionSpec':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudDataplexV1EnvironmentSessionSpec,
            Map<String, dynamic>
          >(sessionSpec, (value) => value.toMap()),
    };
  }

  factory EnvironmentArgs.fromMap(Map<String, dynamic> map) {
    return EnvironmentArgs(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      environmentId: pulumi.Input.fromValue(map['environmentId'] as String),
      infrastructureSpec: pulumi.Input.fromValue(
        GoogleCloudDataplexV1EnvironmentInfrastructureSpec.fromMap(
          (map['infrastructureSpec']! as Map).cast<String, dynamic>(),
        ),
      ),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      lakeId: pulumi.Input.fromValue(map['lakeId'] as String),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sessionSpec: (() {
        final guardedValue = map['sessionSpec'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudDataplexV1EnvironmentSessionSpec.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
