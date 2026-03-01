// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'function_build_config.dart';
import 'function_event_trigger.dart';
import 'function_service_config.dart';

/// Input properties used for looking up and filtering Function resources.
class FunctionState {
  /// Describes the Build step of the function that builds a container
  /// from the given source.
  /// Structure is documented below.
  final pulumi.Input<FunctionBuildConfig>? buildConfig;
  /// User-provided description of a function.
  final pulumi.Input<String>? description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// The environment the function is hosted on.
  final pulumi.Input<String>? environment;
  /// An Eventarc trigger managed by Google Cloud Functions that fires events in
  /// response to a condition in another service.
  /// Structure is documented below.
  final pulumi.Input<FunctionEventTrigger>? eventTrigger;
  /// Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt function resources.
  /// It must match the pattern projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}.
  final pulumi.Input<String>? kmsKeyName;
  /// A set of key/value label pairs associated with this Cloud Function.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location of this cloud function.
  final pulumi.Input<String>? location;
  /// A user-defined name of the function. Function names must
  /// be unique globally and match pattern `projects/*/locations/*/functions/*`.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Describes the Service being deployed.
  /// Structure is documented below.
  final pulumi.Input<FunctionServiceConfig>? serviceConfig;
  /// Describes the current state of the function.
  final pulumi.Input<String>? state;
  /// The last update timestamp of a Cloud Function.
  final pulumi.Input<String>? updateTime;
  /// Output only. The deployed url for the function.
  final pulumi.Input<String>? url;

  /// Creates a new [FunctionState].
  /// [buildConfig] Describes the Build step of the function that builds a container
  /// [description] User-provided description of a function.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [environment] The environment the function is hosted on.
  /// [eventTrigger] An Eventarc trigger managed by Google Cloud Functions that fires events in
  /// [kmsKeyName] Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt function resources.
  /// [labels] A set of key/value label pairs associated with this Cloud Function.
  /// [location] The location of this cloud function.
  /// [name] A user-defined name of the function. Function names must
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [serviceConfig] Describes the Service being deployed.
  /// [state] Describes the current state of the function.
  /// [updateTime] The last update timestamp of a Cloud Function.
  /// [url] Output only. The deployed url for the function.
  FunctionState({
    pulumi.Output<FunctionBuildConfig>? buildConfig,
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<String>? environment,
    pulumi.Output<FunctionEventTrigger>? eventTrigger,
    pulumi.Output<String>? kmsKeyName,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<FunctionServiceConfig>? serviceConfig,
    pulumi.Output<String>? state,
    pulumi.Output<String>? updateTime,
    pulumi.Output<String>? url,
  }) :
      buildConfig = pulumi.Input.asOptionalInput<FunctionBuildConfig>(buildConfig),
      description = pulumi.Input.asOptionalInput<String>(description),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      environment = pulumi.Input.asOptionalInput<String>(environment),
      eventTrigger = pulumi.Input.asOptionalInput<FunctionEventTrigger>(eventTrigger),
      kmsKeyName = pulumi.Input.asOptionalInput<String>(kmsKeyName),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      serviceConfig = pulumi.Input.asOptionalInput<FunctionServiceConfig>(serviceConfig),
      state = pulumi.Input.asOptionalInput<String>(state),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime),
      url = pulumi.Input.asOptionalInput<String>(url);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buildConfig': ?pulumi.Input.mapOptionalInputValue<FunctionBuildConfig, Map<String, dynamic>>(buildConfig, (value) => value.toMap()),
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'environment': ?environment,
      'eventTrigger': ?pulumi.Input.mapOptionalInputValue<FunctionEventTrigger, Map<String, dynamic>>(eventTrigger, (value) => value.toMap()),
      'kmsKeyName': ?kmsKeyName,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'serviceConfig': ?pulumi.Input.mapOptionalInputValue<FunctionServiceConfig, Map<String, dynamic>>(serviceConfig, (value) => value.toMap()),
      'state': ?state,
      'updateTime': ?updateTime,
      'url': ?url,
    };
  }

  factory FunctionState.fromMap(Map<String, dynamic> map) {
    return FunctionState(
      buildConfig: map['buildConfig'] == null ? null : pulumi.Output.create<FunctionBuildConfig>(FunctionBuildConfig.fromMap((map['buildConfig'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      environment: map['environment'] == null ? null : pulumi.Output.create<String>(map['environment'] as String),
      eventTrigger: map['eventTrigger'] == null ? null : pulumi.Output.create<FunctionEventTrigger>(FunctionEventTrigger.fromMap((map['eventTrigger'] as Map).cast<String, dynamic>())),
      kmsKeyName: map['kmsKeyName'] == null ? null : pulumi.Output.create<String>(map['kmsKeyName'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      serviceConfig: map['serviceConfig'] == null ? null : pulumi.Output.create<FunctionServiceConfig>(FunctionServiceConfig.fromMap((map['serviceConfig'] as Map).cast<String, dynamic>())),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
      url: map['url'] == null ? null : pulumi.Output.create<String>(map['url'] as String),
    );
  }
}

