// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigeeregistry_v1_deployment_args_doc}
/// The set of arguments for Deployment.
/// {@endtemplate}
/// {@macro pulumi_apigeeregistry_v1_deployment_args_doc}
class DeploymentArgs {
  /// Text briefly describing how to access the endpoint. Changes to this value will not affect the revision.
  final pulumi.Input<String>? accessGuidance;

  /// Annotations attach non-identifying metadata to resources. Annotation keys and values are less restricted than those of labels, but should be generally used for small values of broad interest. Larger, topic- specific metadata should be stored in Artifacts.
  final pulumi.Input<Map<String, String>>? annotations;

  /// Required. The ID to use for the deployment, which will become the final component of the deployment's resource name. This value should be 4-63 characters, and valid characters are /a-z-/. Following AIP-162, IDs must not have the form of a UUID.
  final pulumi.Input<String> apiDeploymentId;
  final pulumi.Input<String> apiId;

  /// The full resource name (including revision ID) of the spec of the API being served by the deployment. Changes to this value will update the revision. Format: `projects/{project}/locations/{location}/apis/{api}/versions/{version}/specs/{spec@revision}`
  final pulumi.Input<String>? apiSpecRevision;

  /// A detailed description.
  final pulumi.Input<String>? description;

  /// Human-meaningful name.
  final pulumi.Input<String>? displayName;

  /// The address where the deployment is serving. Changes to this value will update the revision.
  final pulumi.Input<String>? endpointUri;

  /// The address of the external channel of the API (e.g., the Developer Portal). Changes to this value will not affect the revision.
  final pulumi.Input<String>? externalChannelUri;

  /// Text briefly identifying the intended audience of the API. Changes to this value will not affect the revision.
  final pulumi.Input<String>? intendedAudience;

  /// Labels attach identifying metadata to resources. Identifying metadata can be used to filter list operations. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. No more than 64 user labels can be associated with one resource (System labels are excluded). See https://goo.gl/xmQnxf for more information and examples of labels. System reserved label keys are prefixed with `apigeeregistry.googleapis.com/` and cannot be changed.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// Resource name.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Creates a new [DeploymentArgs].
  /// [accessGuidance] Text briefly describing how to access the endpoint. Changes to this value will not affect the revision.
  /// [annotations] Annotations attach non-identifying metadata to resources. Annotation keys and values are less restricted than those of labels, but should be generally used for small values of broad interest. Larger, topic- specific metadata should be stored in Artifacts.
  /// [apiDeploymentId] Required. The ID to use for the deployment, which will become the final component of the deployment's resource name. This value should be 4-63 characters, and valid characters are /a-z-/. Following AIP-162, IDs must not have the form of a UUID.
  /// [apiId] Required.
  /// [apiSpecRevision] The full resource name (including revision ID) of the spec of the API being served by the deployment. Changes to this value will update the revision. Format: `projects/{project}/locations/{location}/apis/{api}/versions/{version}/specs/{spec@revision}`
  /// [description] A detailed description.
  /// [displayName] Human-meaningful name.
  /// [endpointUri] The address where the deployment is serving. Changes to this value will update the revision.
  /// [externalChannelUri] The address of the external channel of the API (e.g., the Developer Portal). Changes to this value will not affect the revision.
  /// [intendedAudience] Text briefly identifying the intended audience of the API. Changes to this value will not affect the revision.
  /// [labels] Labels attach identifying metadata to resources. Identifying metadata can be used to filter list operations. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. No more than 64 user labels can be associated with one resource (System labels are excluded). See https://goo.gl/xmQnxf for more information and examples of labels. System reserved label keys are prefixed with `apigeeregistry.googleapis.com/` and cannot be changed.
  /// [location] Optional.
  /// [name] Resource name.
  /// [project] Optional.
  DeploymentArgs({
    this.accessGuidance,
    this.annotations,
    required this.apiDeploymentId,
    required this.apiId,
    this.apiSpecRevision,
    this.description,
    this.displayName,
    this.endpointUri,
    this.externalChannelUri,
    this.intendedAudience,
    this.labels,
    this.location,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessGuidance': ?accessGuidance,
      'annotations': ?annotations,
      'apiDeploymentId': apiDeploymentId,
      'apiId': apiId,
      'apiSpecRevision': ?apiSpecRevision,
      'description': ?description,
      'displayName': ?displayName,
      'endpointUri': ?endpointUri,
      'externalChannelUri': ?externalChannelUri,
      'intendedAudience': ?intendedAudience,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
    };
  }

  factory DeploymentArgs.fromMap(Map<String, dynamic> map) {
    return DeploymentArgs(
      accessGuidance: (() {
        final guardedValue = map['accessGuidance'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      annotations: (() {
        final guardedValue = map['annotations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      apiDeploymentId: pulumi.Input.fromValue(map['apiDeploymentId'] as String),
      apiId: pulumi.Input.fromValue(map['apiId'] as String),
      apiSpecRevision: (() {
        final guardedValue = map['apiSpecRevision'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
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
      endpointUri: (() {
        final guardedValue = map['endpointUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      externalChannelUri: (() {
        final guardedValue = map['externalChannelUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      intendedAudience: (() {
        final guardedValue = map['intendedAudience'];
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
    );
  }
}
