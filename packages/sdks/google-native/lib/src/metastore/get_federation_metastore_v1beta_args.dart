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
  GetFederationMetastoreV1betaArgs({
    required pulumi.Output<String> federationId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      federationId = pulumi.Input.asInput<String>(federationId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'federationId': federationId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetFederationMetastoreV1betaArgs.fromMap(Map<String, dynamic> map) {
    return GetFederationMetastoreV1betaArgs(
      federationId: pulumi.Output.create<String>(map['federationId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

