// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'build_artifact_response.dart';
import 'delivery_pipeline_response.dart';
import 'release_condition_response.dart';
import 'target_response.dart';

/// Result data returned by getRelease.
class GetReleaseResult {
  /// Indicates whether this is an abandoned release.
  final bool? abandoned;
  /// User annotations. These attributes can only be set and used by the user, and not by Cloud Deploy. See https://google.aip.dev/128#annotations for more details such as format and size limitations.
  final Map<String, String>? annotations;
  /// List of artifacts to pass through to Skaffold command.
  final List<BuildArtifactResponse>? buildArtifacts;
  /// Information around the state of the Release.
  final ReleaseConditionResponse? condition;
  /// Time at which the `Release` was created.
  final String? createTime;
  /// Snapshot of the parent pipeline taken at release creation time.
  final DeliveryPipelineResponse? deliveryPipelineSnapshot;
  /// Optional. The deploy parameters to use for all targets in this release.
  final Map<String, String>? deployParameters;
  /// Description of the `Release`. Max length is 255 characters.
  final String? description;
  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  final String? etag;
  /// Labels are attributes that can be set and used by both the user and by Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be &lt;= 128 bytes.
  final Map<String, String>? labels;
  /// Optional. Name of the `Release`. Format is `projects/{project}/locations/{location}/deliveryPipelines/{deliveryPipeline}/releases/a-z{0,62}`.
  final String? name;
  /// Time at which the render completed.
  final String? renderEndTime;
  /// Time at which the render began.
  final String? renderStartTime;
  /// Current state of the render operation.
  final String? renderState;
  /// Filepath of the Skaffold config inside of the config URI.
  final String? skaffoldConfigPath;
  /// Cloud Storage URI of tar.gz archive containing Skaffold configuration.
  final String? skaffoldConfigUri;
  /// The Skaffold version to use when operating on this release, such as "1.20.0". Not all versions are valid; Cloud Deploy supports a specific set of versions. If unset, the most recent supported Skaffold version will be used.
  final String? skaffoldVersion;
  /// Map from target ID to the target artifacts created during the render operation.
  final Map<String, String>? targetArtifacts;
  /// Map from target ID to details of the render operation for that target.
  final Map<String, String>? targetRenders;
  /// Snapshot of the targets taken at release creation time.
  final List<TargetResponse>? targetSnapshots;
  /// Unique identifier of the `Release`.
  final String? uid;

  /// Creates a new [GetReleaseResult].
  /// [abandoned] Indicates whether this is an abandoned release.
  /// [annotations] User annotations. These attributes can only be set and used by the user, and not by Cloud Deploy. See https://google.aip.dev/128#annotations for more details such as format and size limitations.
  /// [buildArtifacts] List of artifacts to pass through to Skaffold command.
  /// [condition] Information around the state of the Release.
  /// [createTime] Time at which the `Release` was created.
  /// [deliveryPipelineSnapshot] Snapshot of the parent pipeline taken at release creation time.
  /// [deployParameters] Optional. The deploy parameters to use for all targets in this release.
  /// [description] Description of the `Release`. Max length is 255 characters.
  /// [etag] This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  /// [labels] Labels are attributes that can be set and used by both the user and by Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be &lt;= 128 bytes.
  /// [name] Optional. Name of the `Release`. Format is `projects/{project}/locations/{location}/deliveryPipelines/{deliveryPipeline}/releases/a-z{0,62}`.
  /// [renderEndTime] Time at which the render completed.
  /// [renderStartTime] Time at which the render began.
  /// [renderState] Current state of the render operation.
  /// [skaffoldConfigPath] Filepath of the Skaffold config inside of the config URI.
  /// [skaffoldConfigUri] Cloud Storage URI of tar.gz archive containing Skaffold configuration.
  /// [skaffoldVersion] The Skaffold version to use when operating on this release, such as "1.20.0". Not all versions are valid; Cloud Deploy supports a specific set of versions. If unset, the most recent supported Skaffold version will be used.
  /// [targetArtifacts] Map from target ID to the target artifacts created during the render operation.
  /// [targetRenders] Map from target ID to details of the render operation for that target.
  /// [targetSnapshots] Snapshot of the targets taken at release creation time.
  /// [uid] Unique identifier of the `Release`.
  const GetReleaseResult({
    this.abandoned,
    this.annotations,
    this.buildArtifacts,
    this.condition,
    this.createTime,
    this.deliveryPipelineSnapshot,
    this.deployParameters,
    this.description,
    this.etag,
    this.labels,
    this.name,
    this.renderEndTime,
    this.renderStartTime,
    this.renderState,
    this.skaffoldConfigPath,
    this.skaffoldConfigUri,
    this.skaffoldVersion,
    this.targetArtifacts,
    this.targetRenders,
    this.targetSnapshots,
    this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'abandoned': ?abandoned,
      'annotations': ?annotations,
      'buildArtifacts': ?(() { final guardedValue = buildArtifacts; if (guardedValue == null) return null; return pulumi.Input.encodeList<BuildArtifactResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'condition': ?condition?.toMap(),
      'createTime': ?createTime,
      'deliveryPipelineSnapshot': ?deliveryPipelineSnapshot?.toMap(),
      'deployParameters': ?deployParameters,
      'description': ?description,
      'etag': ?etag,
      'labels': ?labels,
      'name': ?name,
      'renderEndTime': ?renderEndTime,
      'renderStartTime': ?renderStartTime,
      'renderState': ?renderState,
      'skaffoldConfigPath': ?skaffoldConfigPath,
      'skaffoldConfigUri': ?skaffoldConfigUri,
      'skaffoldVersion': ?skaffoldVersion,
      'targetArtifacts': ?targetArtifacts,
      'targetRenders': ?targetRenders,
      'targetSnapshots': ?(() { final guardedValue = targetSnapshots; if (guardedValue == null) return null; return pulumi.Input.encodeList<TargetResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'uid': ?uid,
    };
  }

  factory GetReleaseResult.fromMap(Map<String, dynamic> map) {
    return GetReleaseResult(
      abandoned: (() { final guardedValue = map['abandoned']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      buildArtifacts: (() { final guardedValue = map['buildArtifacts']; if (guardedValue == null) return null; return pulumi.Input.decodeList<BuildArtifactResponse>(guardedValue, (value) => BuildArtifactResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      condition: (() { final guardedValue = map['condition']; if (guardedValue == null) return null; return ReleaseConditionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deliveryPipelineSnapshot: (() { final guardedValue = map['deliveryPipelineSnapshot']; if (guardedValue == null) return null; return DeliveryPipelineResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      deployParameters: (() { final guardedValue = map['deployParameters']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      renderEndTime: (() { final guardedValue = map['renderEndTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      renderStartTime: (() { final guardedValue = map['renderStartTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      renderState: (() { final guardedValue = map['renderState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      skaffoldConfigPath: (() { final guardedValue = map['skaffoldConfigPath']; if (guardedValue == null) return null; return guardedValue as String; })(),
      skaffoldConfigUri: (() { final guardedValue = map['skaffoldConfigUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      skaffoldVersion: (() { final guardedValue = map['skaffoldVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      targetArtifacts: (() { final guardedValue = map['targetArtifacts']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      targetRenders: (() { final guardedValue = map['targetRenders']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      targetSnapshots: (() { final guardedValue = map['targetSnapshots']; if (guardedValue == null) return null; return pulumi.Input.decodeList<TargetResponse>(guardedValue, (value) => TargetResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
