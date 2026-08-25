// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'engine_model_default_version.dart';

/// Input properties used for looking up and filtering EngineModel resources.
class EngineModelState {
  /// The default version of the model. This version will be used to handle
  /// prediction requests that do not specify a version.
  /// Structure is documented below.
  final pulumi.Input<EngineModelDefaultVersion?>? defaultVersion;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The description specified for the model when it was created.
  final pulumi.Input<String?>? description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>?>? effectiveLabels;
  /// One or more labels that you can add, to organize your models.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// The name specified for the model.
  final pulumi.Input<String?>? name;
  /// If true, online prediction nodes send stderr and stdout streams to Stackdriver Logging
  final pulumi.Input<bool?>? onlinePredictionConsoleLogging;
  /// If true, online prediction access logs are sent to StackDriver Logging.
  final pulumi.Input<bool?>? onlinePredictionLogging;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>?>? pulumiLabels;
  /// The list of regions where the model is going to be deployed.
  /// Currently only one region per model is supported
  final pulumi.Input<String?>? regions;

  /// Creates a new [EngineModelState].
  /// [defaultVersion] The default version of the model. This version will be used to handle
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] The description specified for the model when it was created.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [labels] One or more labels that you can add, to organize your models.
  /// [name] The name specified for the model.
  /// [onlinePredictionConsoleLogging] If true, online prediction nodes send stderr and stdout streams to Stackdriver Logging
  /// [onlinePredictionLogging] If true, online prediction access logs are sent to StackDriver Logging.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [regions] The list of regions where the model is going to be deployed.
  const EngineModelState({
    this.defaultVersion,
    this.deletionPolicy,
    this.description,
    this.effectiveLabels,
    this.labels,
    this.name,
    this.onlinePredictionConsoleLogging,
    this.onlinePredictionLogging,
    this.project,
    this.pulumiLabels,
    this.regions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultVersion': ?pulumi.Input.mapOptionalInputValue<EngineModelDefaultVersion, Map<String, dynamic>>(defaultVersion, (value) => value.toMap()),
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'labels': ?labels,
      'name': ?name,
      'onlinePredictionConsoleLogging': ?onlinePredictionConsoleLogging,
      'onlinePredictionLogging': ?onlinePredictionLogging,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'regions': ?regions,
    };
  }

  factory EngineModelState.fromMap(Map<String, dynamic> map) {
    return EngineModelState(
      defaultVersion: (() { final guardedValue = map['defaultVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EngineModelDefaultVersion.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      onlinePredictionConsoleLogging: (() { final guardedValue = map['onlinePredictionConsoleLogging']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      onlinePredictionLogging: (() { final guardedValue = map['onlinePredictionLogging']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      regions: (() { final guardedValue = map['regions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
