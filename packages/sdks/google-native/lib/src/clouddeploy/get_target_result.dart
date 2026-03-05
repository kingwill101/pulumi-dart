// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'anthos_cluster_response.dart';
import 'cloud_run_location_response.dart';
import 'execution_config_response.dart';
import 'gke_cluster_response.dart';
import 'multi_target_response.dart';

/// Result data returned by getTarget.
class GetTargetResult {
  /// Optional. User annotations. These attributes can only be set and used by the user, and not by Cloud Deploy. See https://google.aip.dev/128#annotations for more details such as format and size limitations.
  final Map<String, String> annotations;
  /// Optional. Information specifying an Anthos Cluster.
  final AnthosClusterResponse anthosCluster;
  /// Time at which the `Target` was created.
  final String createTime;
  /// Optional. The deploy parameters to use for this target.
  final Map<String, String> deployParameters;
  /// Optional. Description of the `Target`. Max length is 255 characters.
  final String description;
  /// Optional. This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  final String etag;
  /// Configurations for all execution that relates to this `Target`. Each `ExecutionEnvironmentUsage` value may only be used in a single configuration; using the same value multiple times is an error. When one or more configurations are specified, they must include the `RENDER` and `DEPLOY` `ExecutionEnvironmentUsage` values. When no configurations are specified, execution will use the default specified in `DefaultPool`.
  final List<ExecutionConfigResponse> executionConfigs;
  /// Optional. Information specifying a GKE Cluster.
  final GkeClusterResponse gke;
  /// Optional. Labels are attributes that can be set and used by both the user and by Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be &lt;= 128 bytes.
  final Map<String, String> labels;
  /// Optional. Information specifying a multiTarget.
  final MultiTargetResponse multiTarget;
  /// Optional. Name of the `Target`. Format is `projects/{project}/locations/{location}/targets/a-z{0,62}`.
  final String name;
  /// Optional. Whether or not the `Target` requires approval.
  final bool requireApproval;
  /// Optional. Information specifying a Cloud Run deployment target.
  final CloudRunLocationResponse run;
  /// Resource id of the `Target`.
  final String targetId;
  /// Unique identifier of the `Target`.
  final String uid;
  /// Most recent time at which the `Target` was updated.
  final String updateTime;

  /// Creates a new [GetTargetResult].
  /// [annotations] Optional. User annotations. These attributes can only be set and used by the user, and not by Cloud Deploy. See https://google.aip.dev/128#annotations for more details such as format and size limitations.
  /// [anthosCluster] Optional. Information specifying an Anthos Cluster.
  /// [createTime] Time at which the `Target` was created.
  /// [deployParameters] Optional. The deploy parameters to use for this target.
  /// [description] Optional. Description of the `Target`. Max length is 255 characters.
  /// [etag] Optional. This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  /// [executionConfigs] Configurations for all execution that relates to this `Target`. Each `ExecutionEnvironmentUsage` value may only be used in a single configuration; using the same value multiple times is an error. When one or more configurations are specified, they must include the `RENDER` and `DEPLOY` `ExecutionEnvironmentUsage` values. When no configurations are specified, execution will use the default specified in `DefaultPool`.
  /// [gke] Optional. Information specifying a GKE Cluster.
  /// [labels] Optional. Labels are attributes that can be set and used by both the user and by Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be &lt;= 128 bytes.
  /// [multiTarget] Optional. Information specifying a multiTarget.
  /// [name] Optional. Name of the `Target`. Format is `projects/{project}/locations/{location}/targets/a-z{0,62}`.
  /// [requireApproval] Optional. Whether or not the `Target` requires approval.
  /// [run] Optional. Information specifying a Cloud Run deployment target.
  /// [targetId] Resource id of the `Target`.
  /// [uid] Unique identifier of the `Target`.
  /// [updateTime] Most recent time at which the `Target` was updated.
  GetTargetResult({
    required this.annotations,
    required this.anthosCluster,
    required this.createTime,
    required this.deployParameters,
    required this.description,
    required this.etag,
    required this.executionConfigs,
    required this.gke,
    required this.labels,
    required this.multiTarget,
    required this.name,
    required this.requireApproval,
    required this.run,
    required this.targetId,
    required this.uid,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': annotations,
      'anthosCluster': anthosCluster.toMap(),
      'createTime': createTime,
      'deployParameters': deployParameters,
      'description': description,
      'etag': etag,
      'executionConfigs': pulumi.Input.encodeList<ExecutionConfigResponse, Map<String, dynamic>>(executionConfigs, (value) => value.toMap()),
      'gke': gke.toMap(),
      'labels': labels,
      'multiTarget': multiTarget.toMap(),
      'name': name,
      'requireApproval': requireApproval,
      'run': run.toMap(),
      'targetId': targetId,
      'uid': uid,
      'updateTime': updateTime,
    };
  }

  factory GetTargetResult.fromMap(Map<String, dynamic> map) {
    return GetTargetResult(
      annotations: (map['annotations'] as Map).cast<String, String>(),
      anthosCluster: AnthosClusterResponse.fromMap((map['anthosCluster']! as Map).cast<String, dynamic>()),
      createTime: map['createTime'] as String,
      deployParameters: (map['deployParameters'] as Map).cast<String, String>(),
      description: map['description'] as String,
      etag: map['etag'] as String,
      executionConfigs: pulumi.Input.decodeList<ExecutionConfigResponse>(map['executionConfigs']!, (value) => ExecutionConfigResponse.fromMap((value as Map).cast<String, dynamic>())),
      gke: GkeClusterResponse.fromMap((map['gke']! as Map).cast<String, dynamic>()),
      labels: (map['labels'] as Map).cast<String, String>(),
      multiTarget: MultiTargetResponse.fromMap((map['multiTarget']! as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      requireApproval: map['requireApproval'] as bool,
      run: CloudRunLocationResponse.fromMap((map['run']! as Map).cast<String, dynamic>()),
      targetId: map['targetId'] as String,
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}

