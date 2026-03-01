// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_metastore_v1alpha_get_federation_metastore_v1alpha_args_doc}
/// Arguments for getFederation.
/// {@endtemplate}
/// {@macro pulumi_metastore_v1alpha_get_federation_metastore_v1alpha_args_doc}
class GetFederationMetastoreV1alphaArgs {
  final pulumi.Input<String> federationId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetFederationMetastoreV1alphaArgs].
  /// [federationId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetFederationMetastoreV1alphaArgs({
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

  factory GetFederationMetastoreV1alphaArgs.fromMap(Map<String, dynamic> map) {
    return GetFederationMetastoreV1alphaArgs(
      federationId: pulumi.Output.create<String>(map['federationId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

