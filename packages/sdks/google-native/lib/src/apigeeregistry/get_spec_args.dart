// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigeeregistry_v1_get_spec_args_doc}
/// Arguments for getSpec.
/// {@endtemplate}
/// {@macro pulumi_apigeeregistry_v1_get_spec_args_doc}
class GetSpecArgs {
  final pulumi.Input<String> apiId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> specId;
  final pulumi.Input<String> versionId;

  /// Creates a new [GetSpecArgs].
  /// [apiId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [specId] Required.
  /// [versionId] Required.
  GetSpecArgs({
    required this.apiId,
    required this.location,
    this.project,
    required this.specId,
    required this.versionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'location': location,
      'project': ?project,
      'specId': specId,
      'versionId': versionId,
    };
  }

  factory GetSpecArgs.fromMap(Map<String, dynamic> map) {
    return GetSpecArgs(
      apiId: (map['apiId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      specId: (map['specId'] as String).input(),
      versionId: (map['versionId'] as String).input(),
    );
  }
}

