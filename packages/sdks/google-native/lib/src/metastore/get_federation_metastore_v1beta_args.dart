// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_metastore_v1beta_get_federation_metastore_v1beta_args_doc}
/// Arguments for getFederation.
/// {@endtemplate}
/// {@macro pulumi_metastore_v1beta_get_federation_metastore_v1beta_args_doc}
class GetFederationMetastoreV1betaArgs {
  final pulumi.Input<String> federationId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetFederationMetastoreV1betaArgs].
  /// [federationId] Required.
  /// [location] Required.
  /// [project] Optional.
  const GetFederationMetastoreV1betaArgs({
    required this.federationId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'federationId': federationId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetFederationMetastoreV1betaArgs.fromMap(Map<String, dynamic> map) {
    return GetFederationMetastoreV1betaArgs(
      federationId: pulumi.Input.fromValue(map['federationId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
