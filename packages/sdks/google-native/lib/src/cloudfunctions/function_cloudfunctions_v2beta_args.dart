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
    pulumi.Output<BuildConfigCloudfunctionsV2beta>? buildConfig,
    pulumi.Output<String>? description,
    pulumi.Output<FunctionEnvironmentCloudfunctionsV2beta>? environment,
    pulumi.Output<EventTriggerCloudfunctionsV2beta>? eventTrigger,
    pulumi.Output<String>? functionId,
    pulumi.Output<String>? kmsKeyName,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<ServiceConfigCloudfunctionsV2beta>? serviceConfig,
  }) :
      buildConfig = pulumi.Input.asOptionalInput<BuildConfigCloudfunctionsV2beta>(buildConfig),
      description = pulumi.Input.asOptionalInput<String>(description),
      environment = pulumi.Input.asOptionalInput<FunctionEnvironmentCloudfunctionsV2beta>(environment),
      eventTrigger = pulumi.Input.asOptionalInput<EventTriggerCloudfunctionsV2beta>(eventTrigger),
      functionId = pulumi.Input.asOptionalInput<String>(functionId),
      kmsKeyName = pulumi.Input.asOptionalInput<String>(kmsKeyName),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      serviceConfig = pulumi.Input.asOptionalInput<ServiceConfigCloudfunctionsV2beta>(serviceConfig);

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
      buildConfig: map['buildConfig'] == null ? null : pulumi.Output.create<BuildConfigCloudfunctionsV2beta>(BuildConfigCloudfunctionsV2beta.fromMap((map['buildConfig'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      environment: map['environment'] == null ? null : pulumi.Output.create<FunctionEnvironmentCloudfunctionsV2beta>(FunctionEnvironmentCloudfunctionsV2beta.fromValue(map['environment'] as String)),
      eventTrigger: map['eventTrigger'] == null ? null : pulumi.Output.create<EventTriggerCloudfunctionsV2beta>(EventTriggerCloudfunctionsV2beta.fromMap((map['eventTrigger'] as Map).cast<String, dynamic>())),
      functionId: map['functionId'] == null ? null : pulumi.Output.create<String>(map['functionId'] as String),
      kmsKeyName: map['kmsKeyName'] == null ? null : pulumi.Output.create<String>(map['kmsKeyName'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      serviceConfig: map['serviceConfig'] == null ? null : pulumi.Output.create<ServiceConfigCloudfunctionsV2beta>(ServiceConfigCloudfunctionsV2beta.fromMap((map['serviceConfig'] as Map).cast<String, dynamic>())),
    );
  }
}

