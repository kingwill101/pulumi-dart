// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_metastore_v1_federation_args_doc}
/// The set of arguments for Federation.
/// {@endtemplate}
/// {@macro pulumi_metastore_v1_federation_args_doc}
class FederationArgs {
  /// A map from BackendMetastore rank to BackendMetastores from which the federation service serves metadata at query time. The map key represents the order in which BackendMetastores should be evaluated to resolve database names at query time and should be greater than or equal to zero. A BackendMetastore with a lower number will be evaluated before a BackendMetastore with a higher number.
  final pulumi.Input<Map<String, String>>? backendMetastores;
  /// Required. The ID of the metastore federation, which is used as the final component of the metastore federation's name.This value must be between 2 and 63 characters long inclusive, begin with a letter, end with a letter or number, and consist of alpha-numeric ASCII characters or hyphens.
  final pulumi.Input<String> federationId;
  /// User-defined labels for the metastore federation.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// Immutable. The relative resource name of the federation, of the form: projects/{project_number}/locations/{location_id}/federations/{federation_id}`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// Optional. A request ID. Specify a unique request ID to allow the server to ignore the request if it has completed. The server will ignore subsequent requests that provide a duplicate request ID for at least 60 minutes after the first request.For example, if an initial request times out, followed by another request with the same request ID, the server ignores the second request to prevent the creation of duplicate commitments.The request ID must be a valid UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier#Format) A zero UUID (00000000-0000-0000-0000-000000000000) is not supported.
  final pulumi.Input<String>? requestId;
  /// Immutable. The Apache Hive metastore version of the federation. All backend metastore versions must be compatible with the federation version.
  final pulumi.Input<String>? version;

  /// Creates a new [FederationArgs].
  /// [backendMetastores] A map from BackendMetastore rank to BackendMetastores from which the federation service serves metadata at query time. The map key represents the order in which BackendMetastores should be evaluated to resolve database names at query time and should be greater than or equal to zero. A BackendMetastore with a lower number will be evaluated before a BackendMetastore with a higher number.
  /// [federationId] Required. The ID of the metastore federation, which is used as the final component of the metastore federation's name.This value must be between 2 and 63 characters long inclusive, begin with a letter, end with a letter or number, and consist of alpha-numeric ASCII characters or hyphens.
  /// [labels] User-defined labels for the metastore federation.
  /// [location] Optional.
  /// [name] Immutable. The relative resource name of the federation, of the form: projects/{project_number}/locations/{location_id}/federations/{federation_id}`.
  /// [project] Optional.
  /// [requestId] Optional. A request ID. Specify a unique request ID to allow the server to ignore the request if it has completed. The server will ignore subsequent requests that provide a duplicate request ID for at least 60 minutes after the first request.For example, if an initial request times out, followed by another request with the same request ID, the server ignores the second request to prevent the creation of duplicate commitments.The request ID must be a valid UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier#Format) A zero UUID (00000000-0000-0000-0000-000000000000) is not supported.
  /// [version] Immutable. The Apache Hive metastore version of the federation. All backend metastore versions must be compatible with the federation version.
  FederationArgs({
    this.backendMetastores,
    required this.federationId,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.requestId,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendMetastores': ?backendMetastores,
      'federationId': federationId,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'requestId': ?requestId,
      'version': ?version,
    };
  }

  factory FederationArgs.fromMap(Map<String, dynamic> map) {
    return FederationArgs(
      backendMetastores: map['backendMetastores'] == null ? null : ((map['backendMetastores']! as Map).cast<String, String>()).input(),
      federationId: (map['federationId'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      requestId: map['requestId'] == null ? null : (map['requestId']! as String).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

