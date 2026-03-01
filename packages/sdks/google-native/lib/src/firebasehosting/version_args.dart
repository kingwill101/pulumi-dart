// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'serving_config.dart';

/// {@template pulumi_firebasehosting_v1beta1_version_args_doc}
/// The set of arguments for Version.
/// {@endtemplate}
/// {@macro pulumi_firebasehosting_v1beta1_version_args_doc}
class VersionArgs {
  /// The configuration for the behavior of the site. This configuration exists in the [`firebase.json`](https://firebase.google.com/docs/cli/#the_firebasejson_file) file.
  final pulumi.Input<ServingConfig>? config;
  /// The labels used for extra metadata and/or filtering.
  final pulumi.Input<Map<String, String>>? labels;
  /// The fully-qualified resource name for the version, in the format: sites/ SITE_ID/versions/VERSION_ID This name is provided in the response body when you call [`CreateVersion`](sites.versions/create).
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> siteId;
  /// The self-reported size of the version. This value is used for a pre-emptive quota check for legacy version uploads.
  final pulumi.Input<String>? sizeBytes;
  /// A unique id for the new version. This is was only specified for legacy version creations, and should be blank.
  final pulumi.Input<String>? versionId;

  /// Creates a new [VersionArgs].
  /// [config] The configuration for the behavior of the site. This configuration exists in the [`firebase.json`](https://firebase.google.com/docs/cli/#the_firebasejson_file) file.
  /// [labels] The labels used for extra metadata and/or filtering.
  /// [name] The fully-qualified resource name for the version, in the format: sites/ SITE_ID/versions/VERSION_ID This name is provided in the response body when you call [`CreateVersion`](sites.versions/create).
  /// [project] Optional.
  /// [siteId] Required.
  /// [sizeBytes] The self-reported size of the version. This value is used for a pre-emptive quota check for legacy version uploads.
  /// [versionId] A unique id for the new version. This is was only specified for legacy version creations, and should be blank.
  VersionArgs({
    pulumi.Output<ServingConfig>? config,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    required pulumi.Output<String> siteId,
    pulumi.Output<String>? sizeBytes,
    pulumi.Output<String>? versionId,
  }) :
      config = pulumi.Input.asOptionalInput<ServingConfig>(config),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      siteId = pulumi.Input.asInput<String>(siteId),
      sizeBytes = pulumi.Input.asOptionalInput<String>(sizeBytes),
      versionId = pulumi.Input.asOptionalInput<String>(versionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?pulumi.Input.mapOptionalInputValue<ServingConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'labels': ?labels,
      'name': ?name,
      'project': ?project,
      'siteId': siteId,
      'sizeBytes': ?sizeBytes,
      'versionId': ?versionId,
    };
  }

  factory VersionArgs.fromMap(Map<String, dynamic> map) {
    return VersionArgs(
      config: map['config'] == null ? null : pulumi.Output.create<ServingConfig>(ServingConfig.fromMap((map['config'] as Map).cast<String, dynamic>())),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      siteId: pulumi.Output.create<String>(map['siteId'] as String),
      sizeBytes: map['sizeBytes'] == null ? null : pulumi.Output.create<String>(map['sizeBytes'] as String),
      versionId: map['versionId'] == null ? null : pulumi.Output.create<String>(map['versionId'] as String),
    );
  }
}

