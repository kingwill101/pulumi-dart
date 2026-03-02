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
    this.buildConfig,
    this.description,
    this.effectiveLabels,
    this.environment,
    this.eventTrigger,
    this.kmsKeyName,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.pulumiLabels,
    this.serviceConfig,
    this.state,
    this.updateTime,
    this.url,
  });

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
      buildConfig: map['buildConfig'] == null ? null : (FunctionBuildConfig.fromMap((map['buildConfig'] as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels'] as Map).cast<String, String>()).input(),
      environment: map['environment'] == null ? null : (map['environment'] as String).input(),
      eventTrigger: map['eventTrigger'] == null ? null : (FunctionEventTrigger.fromMap((map['eventTrigger'] as Map).cast<String, dynamic>())).input(),
      kmsKeyName: map['kmsKeyName'] == null ? null : (map['kmsKeyName'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels'] as Map).cast<String, String>()).input(),
      serviceConfig: map['serviceConfig'] == null ? null : (FunctionServiceConfig.fromMap((map['serviceConfig'] as Map).cast<String, dynamic>())).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime'] as String).input(),
      url: map['url'] == null ? null : (map['url'] as String).input(),
    );
  }
}

