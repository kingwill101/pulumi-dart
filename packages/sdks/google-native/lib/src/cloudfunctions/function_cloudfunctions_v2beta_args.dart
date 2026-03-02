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
      'buildConfig': ?pulumi.Input.mapOptionalInputValue<BuildConfigCloudfunctionsV2beta, Map<String, dynamic>>(buildConfig, (value) => value.toMap()),
      'description': ?description,
      'environment': ?pulumi.Input.mapOptionalInputValue<FunctionEnvironmentCloudfunctionsV2beta, String>(environment, (value) => value.value),
      'eventTrigger': ?pulumi.Input.mapOptionalInputValue<EventTriggerCloudfunctionsV2beta, Map<String, dynamic>>(eventTrigger, (value) => value.toMap()),
      'functionId': ?functionId,
      'kmsKeyName': ?kmsKeyName,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'serviceConfig': ?pulumi.Input.mapOptionalInputValue<ServiceConfigCloudfunctionsV2beta, Map<String, dynamic>>(serviceConfig, (value) => value.toMap()),
    };
  }

  factory FunctionCloudfunctionsV2betaArgs.fromMap(Map<String, dynamic> map) {
    return FunctionCloudfunctionsV2betaArgs(
      buildConfig: map['buildConfig'] == null ? null : (BuildConfigCloudfunctionsV2beta.fromMap((map['buildConfig']! as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      environment: map['environment'] == null ? null : (FunctionEnvironmentCloudfunctionsV2beta.fromValue(map['environment']! as String)).input(),
      eventTrigger: map['eventTrigger'] == null ? null : (EventTriggerCloudfunctionsV2beta.fromMap((map['eventTrigger']! as Map).cast<String, dynamic>())).input(),
      functionId: map['functionId'] == null ? null : (map['functionId']! as String).input(),
      kmsKeyName: map['kmsKeyName'] == null ? null : (map['kmsKeyName']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      serviceConfig: map['serviceConfig'] == null ? null : (ServiceConfigCloudfunctionsV2beta.fromMap((map['serviceConfig']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

