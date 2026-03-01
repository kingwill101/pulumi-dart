// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'build_artifact.dart';

/// {@template pulumi_clouddeploy_v1_release_args_doc}
/// The set of arguments for Release.
/// {@endtemplate}
/// {@macro pulumi_clouddeploy_v1_release_args_doc}
class ReleaseArgs {
  /// User annotations. These attributes can only be set and used by the user, and not by Cloud Deploy. See https://google.aip.dev/128#annotations for more details such as format and size limitations.
  final pulumi.Input<Map<String, String>>? annotations;
  /// List of artifacts to pass through to Skaffold command.
  final pulumi.Input<List<BuildArtifact>>? buildArtifacts;
  final pulumi.Input<String> deliveryPipelineId;
  /// Optional. The deploy parameters to use for all targets in this release.
  final pulumi.Input<Map<String, String>>? deployParameters;
  /// Description of the `Release`. Max length is 255 characters.
  final pulumi.Input<String>? description;
  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  final pulumi.Input<String>? etag;
  /// Labels are attributes that can be set and used by both the user and by Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be <= 128 bytes.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// Optional. Name of the `Release`. Format is `projects/{project}/locations/{location}/deliveryPipelines/{deliveryPipeline}/releases/a-z{0,62}`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// Required. ID of the `Release`.
  final pulumi.Input<String> releaseId;
  /// Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// Filepath of the Skaffold config inside of the config URI.
  final pulumi.Input<String>? skaffoldConfigPath;
  /// Cloud Storage URI of tar.gz archive containing Skaffold configuration.
  final pulumi.Input<String>? skaffoldConfigUri;
  /// The Skaffold version to use when operating on this release, such as "1.20.0". Not all versions are valid; Cloud Deploy supports a specific set of versions. If unset, the most recent supported Skaffold version will be used.
  final pulumi.Input<String>? skaffoldVersion;

  /// Creates a new [ReleaseArgs].
  /// [annotations] User annotations. These attributes can only be set and used by the user, and not by Cloud Deploy. See https://google.aip.dev/128#annotations for more details such as format and size limitations.
  /// [buildArtifacts] List of artifacts to pass through to Skaffold command.
  /// [deliveryPipelineId] Required.
  /// [deployParameters] Optional. The deploy parameters to use for all targets in this release.
  /// [description] Description of the `Release`. Max length is 255 characters.
  /// [etag] This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  /// [labels] Labels are attributes that can be set and used by both the user and by Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be <= 128 bytes.
  /// [location] Optional.
  /// [name] Optional. Name of the `Release`. Format is `projects/{project}/locations/{location}/deliveryPipelines/{deliveryPipeline}/releases/a-z{0,62}`.
  /// [project] Optional.
  /// [releaseId] Required. ID of the `Release`.
  /// [requestId] Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [skaffoldConfigPath] Filepath of the Skaffold config inside of the config URI.
  /// [skaffoldConfigUri] Cloud Storage URI of tar.gz archive containing Skaffold configuration.
  /// [skaffoldVersion] The Skaffold version to use when operating on this release, such as "1.20.0". Not all versions are valid; Cloud Deploy supports a specific set of versions. If unset, the most recent supported Skaffold version will be used.
  ReleaseArgs({
    pulumi.Output<Map<String, String>>? annotations,
    pulumi.Output<List<BuildArtifact>>? buildArtifacts,
    required pulumi.Output<String> deliveryPipelineId,
    pulumi.Output<Map<String, String>>? deployParameters,
    pulumi.Output<String>? description,
    pulumi.Output<String>? etag,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    required pulumi.Output<String> releaseId,
    pulumi.Output<String>? requestId,
    pulumi.Output<String>? skaffoldConfigPath,
    pulumi.Output<String>? skaffoldConfigUri,
    pulumi.Output<String>? skaffoldVersion,
  }) :
      annotations = pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
      buildArtifacts = pulumi.Input.asOptionalInput<List<BuildArtifact>>(buildArtifacts),
      deliveryPipelineId = pulumi.Input.asInput<String>(deliveryPipelineId),
      deployParameters = pulumi.Input.asOptionalInput<Map<String, String>>(deployParameters),
      description = pulumi.Input.asOptionalInput<String>(description),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      releaseId = pulumi.Input.asInput<String>(releaseId),
      requestId = pulumi.Input.asOptionalInput<String>(requestId),
      skaffoldConfigPath = pulumi.Input.asOptionalInput<String>(skaffoldConfigPath),
      skaffoldConfigUri = pulumi.Input.asOptionalInput<String>(skaffoldConfigUri),
      skaffoldVersion = pulumi.Input.asOptionalInput<String>(skaffoldVersion);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'buildArtifacts': ?pulumi.Input.mapOptionalInputValue<List<BuildArtifact>, List<Map<String, dynamic>>>(buildArtifacts, (value) => pulumi.Input.encodeList<BuildArtifact, Map<String, dynamic>>(value, (value) => value.toMap())),
      'deliveryPipelineId': deliveryPipelineId,
      'deployParameters': ?deployParameters,
      'description': ?description,
      'etag': ?etag,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'releaseId': releaseId,
      'requestId': ?requestId,
      'skaffoldConfigPath': ?skaffoldConfigPath,
      'skaffoldConfigUri': ?skaffoldConfigUri,
      'skaffoldVersion': ?skaffoldVersion,
    };
  }

  factory ReleaseArgs.fromMap(Map<String, dynamic> map) {
    return ReleaseArgs(
      annotations: map['annotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['annotations'] as Map).cast<String, String>()),
      buildArtifacts: map['buildArtifacts'] == null ? null : pulumi.Output.create<List<BuildArtifact>>(pulumi.Input.decodeList<BuildArtifact>(map['buildArtifacts'], (value) => BuildArtifact.fromMap((value as Map).cast<String, dynamic>()))),
      deliveryPipelineId: pulumi.Output.create<String>(map['deliveryPipelineId'] as String),
      deployParameters: map['deployParameters'] == null ? null : pulumi.Output.create<Map<String, String>>((map['deployParameters'] as Map).cast<String, String>()),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      releaseId: pulumi.Output.create<String>(map['releaseId'] as String),
      requestId: map['requestId'] == null ? null : pulumi.Output.create<String>(map['requestId'] as String),
      skaffoldConfigPath: map['skaffoldConfigPath'] == null ? null : pulumi.Output.create<String>(map['skaffoldConfigPath'] as String),
      skaffoldConfigUri: map['skaffoldConfigUri'] == null ? null : pulumi.Output.create<String>(map['skaffoldConfigUri'] as String),
      skaffoldVersion: map['skaffoldVersion'] == null ? null : pulumi.Output.create<String>(map['skaffoldVersion'] as String),
    );
  }
}

