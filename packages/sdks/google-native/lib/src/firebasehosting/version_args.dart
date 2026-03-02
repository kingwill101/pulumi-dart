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
    this.config,
    this.labels,
    this.name,
    this.project,
    required this.siteId,
    this.sizeBytes,
    this.versionId,
  });

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
      config: map['config'] == null ? null : (ServingConfig.fromMap((map['config']! as Map).cast<String, dynamic>())).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      siteId: (map['siteId'] as String).input(),
      sizeBytes: map['sizeBytes'] == null ? null : (map['sizeBytes']! as String).input(),
      versionId: map['versionId'] == null ? null : (map['versionId']! as String).input(),
    );
  }
}

