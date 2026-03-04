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
      'buildConfig':
          ?pulumi.Input.mapOptionalInputValue<
            FunctionBuildConfig,
            Map<String, dynamic>
          >(buildConfig, (value) => value.toMap()),
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'environment': ?environment,
      'eventTrigger':
          ?pulumi.Input.mapOptionalInputValue<
            FunctionEventTrigger,
            Map<String, dynamic>
          >(eventTrigger, (value) => value.toMap()),
      'kmsKeyName': ?kmsKeyName,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'serviceConfig':
          ?pulumi.Input.mapOptionalInputValue<
            FunctionServiceConfig,
            Map<String, dynamic>
          >(serviceConfig, (value) => value.toMap()),
      'state': ?state,
      'updateTime': ?updateTime,
      'url': ?url,
    };
  }

  factory FunctionState.fromMap(Map<String, dynamic> map) {
    return FunctionState(
      buildConfig: (() {
        final guardedValue = map['buildConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FunctionBuildConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      effectiveLabels: (() {
        final guardedValue = map['effectiveLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      environment: (() {
        final guardedValue = map['environment'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      eventTrigger: (() {
        final guardedValue = map['eventTrigger'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FunctionEventTrigger.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
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
      pulumiLabels: (() {
        final guardedValue = map['pulumiLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      serviceConfig: (() {
        final guardedValue = map['serviceConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FunctionServiceConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      state: (() {
        final guardedValue = map['state'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      updateTime: (() {
        final guardedValue = map['updateTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      url: (() {
        final guardedValue = map['url'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
