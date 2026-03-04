// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'build_config_cloudfunctions_v2beta.dart';
import 'event_trigger_cloudfunctions_v2beta.dart';
import 'function_environment_cloudfunctions_v2beta.dart';
import 'service_config_cloudfunctions_v2beta.dart';

/// {@template pulumi_cloudfunctions_v2beta_function_cloudfunctions_v2beta_args_doc}
/// The set of arguments for Function.
/// {@endtemplate}
/// {@macro pulumi_cloudfunctions_v2beta_function_cloudfunctions_v2beta_args_doc}
class FunctionCloudfunctionsV2betaArgs {
  /// Describes the Build step of the function that builds a container from the given source.
  final pulumi.Input<BuildConfigCloudfunctionsV2beta>? buildConfig;

  /// User-provided description of a function.
  final pulumi.Input<String>? description;

  /// Describe whether the function is 1st Gen or 2nd Gen.
  final pulumi.Input<FunctionEnvironmentCloudfunctionsV2beta>? environment;

  /// An Eventarc trigger managed by Google Cloud Functions that fires events in response to a condition in another service.
  final pulumi.Input<EventTriggerCloudfunctionsV2beta>? eventTrigger;

  /// The ID to use for the function, which will become the final component of the function's resource name. This value should be 4-63 characters, and valid characters are /a-z-/.
  final pulumi.Input<String>? functionId;

  /// [Preview] Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt function resources. It must match the pattern `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}`.
  final pulumi.Input<String>? kmsKeyName;

  /// Labels associated with this Cloud Function.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// A user-defined name of the function. Function names must be unique globally and match pattern `projects/*/locations/*/functions/*`
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Describes the Service being deployed. Currently deploys services to Cloud Run (fully managed).
  final pulumi.Input<ServiceConfigCloudfunctionsV2beta>? serviceConfig;

  /// Creates a new [FunctionCloudfunctionsV2betaArgs].
  /// [buildConfig] Describes the Build step of the function that builds a container from the given source.
  /// [description] User-provided description of a function.
  /// [environment] Describe whether the function is 1st Gen or 2nd Gen.
  /// [eventTrigger] An Eventarc trigger managed by Google Cloud Functions that fires events in response to a condition in another service.
  /// [functionId] The ID to use for the function, which will become the final component of the function's resource name. This value should be 4-63 characters, and valid characters are /a-z-/.
  /// [kmsKeyName] [Preview] Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt function resources. It must match the pattern `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}`.
  /// [labels] Labels associated with this Cloud Function.
  /// [location] Optional.
  /// [name] A user-defined name of the function. Function names must be unique globally and match pattern `projects/*/locations/*/functions/*`
  /// [project] Optional.
  /// [serviceConfig] Describes the Service being deployed. Currently deploys services to Cloud Run (fully managed).
  FunctionCloudfunctionsV2betaArgs({
    this.buildConfig,
    this.description,
    this.environment,
    this.eventTrigger,
    this.functionId,
    this.kmsKeyName,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.serviceConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buildConfig':
          ?pulumi.Input.mapOptionalInputValue<
            BuildConfigCloudfunctionsV2beta,
            Map<String, dynamic>
          >(buildConfig, (value) => value.toMap()),
      'description': ?description,
      'environment':
          ?pulumi.Input.mapOptionalInputValue<
            FunctionEnvironmentCloudfunctionsV2beta,
            String
          >(environment, (value) => value.wireValue),
      'eventTrigger':
          ?pulumi.Input.mapOptionalInputValue<
            EventTriggerCloudfunctionsV2beta,
            Map<String, dynamic>
          >(eventTrigger, (value) => value.toMap()),
      'functionId': ?functionId,
      'kmsKeyName': ?kmsKeyName,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'serviceConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ServiceConfigCloudfunctionsV2beta,
            Map<String, dynamic>
          >(serviceConfig, (value) => value.toMap()),
    };
  }

  factory FunctionCloudfunctionsV2betaArgs.fromMap(Map<String, dynamic> map) {
    return FunctionCloudfunctionsV2betaArgs(
      buildConfig: (() {
        final guardedValue = map['buildConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BuildConfigCloudfunctionsV2beta.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      environment: (() {
        final guardedValue = map['environment'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FunctionEnvironmentCloudfunctionsV2beta.fromValue(
            guardedValue as String,
          ),
        );
      })(),
      eventTrigger: (() {
        final guardedValue = map['eventTrigger'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EventTriggerCloudfunctionsV2beta.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      functionId: (() {
        final guardedValue = map['functionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kmsKeyName: (() {
        final guardedValue = map['kmsKeyName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serviceConfig: (() {
        final guardedValue = map['serviceConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ServiceConfigCloudfunctionsV2beta.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
