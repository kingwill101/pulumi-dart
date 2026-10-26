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
  final Map<String, String>? annotations;
  /// Optional. Information specifying an Anthos Cluster.
  final AnthosClusterResponse? anthosCluster;
  /// Time at which the `Target` was created.
  final String? createTime;
  /// Optional. The deploy parameters to use for this target.
  final Map<String, String>? deployParameters;
  /// Optional. Description of the `Target`. Max length is 255 characters.
  final String? description;
  /// Optional. This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  final String? etag;
  /// Configurations for all execution that relates to this `Target`. Each `ExecutionEnvironmentUsage` value may only be used in a single configuration; using the same value multiple times is an error. When one or more configurations are specified, they must include the `RENDER` and `DEPLOY` `ExecutionEnvironmentUsage` values. When no configurations are specified, execution will use the default specified in `DefaultPool`.
  final List<ExecutionConfigResponse>? executionConfigs;
  /// Optional. Information specifying a GKE Cluster.
  final GkeClusterResponse? gke;
  /// Optional. Labels are attributes that can be set and used by both the user and by Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be &lt;= 128 bytes.
  final Map<String, String>? labels;
  /// Optional. Information specifying a multiTarget.
  final MultiTargetResponse? multiTarget;
  /// Optional. Name of the `Target`. Format is `projects/{project}/locations/{location}/targets/a-z{0,62}`.
  final String? name;
  /// Optional. Whether or not the `Target` requires approval.
  final bool? requireApproval;
  /// Optional. Information specifying a Cloud Run deployment target.
  final CloudRunLocationResponse? run;
  /// Resource id of the `Target`.
  final String? targetId;
  /// Unique identifier of the `Target`.
  final String? uid;
  /// Most recent time at which the `Target` was updated.
  final String? updateTime;

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
  const GetTargetResult({
    this.annotations,
    this.anthosCluster,
    this.createTime,
    this.deployParameters,
    this.description,
    this.etag,
    this.executionConfigs,
    this.gke,
    this.labels,
    this.multiTarget,
    this.name,
    this.requireApproval,
    this.run,
    this.targetId,
    this.uid,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'anthosCluster': ?anthosCluster?.toMap(),
      'createTime': ?createTime,
      'deployParameters': ?deployParameters,
      'description': ?description,
      'etag': ?etag,
      'executionConfigs': ?(() { final guardedValue = executionConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<ExecutionConfigResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'gke': ?gke?.toMap(),
      'labels': ?labels,
      'multiTarget': ?multiTarget?.toMap(),
      'name': ?name,
      'requireApproval': ?requireApproval,
      'run': ?run?.toMap(),
      'targetId': ?targetId,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory GetTargetResult.fromMap(Map<String, dynamic> map) {
    return GetTargetResult(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      anthosCluster: (() { final guardedValue = map['anthosCluster']; if (guardedValue == null) return null; return AnthosClusterResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deployParameters: (() { final guardedValue = map['deployParameters']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      executionConfigs: (() { final guardedValue = map['executionConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ExecutionConfigResponse>(guardedValue, (value) => ExecutionConfigResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      gke: (() { final guardedValue = map['gke']; if (guardedValue == null) return null; return GkeClusterResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      multiTarget: (() { final guardedValue = map['multiTarget']; if (guardedValue == null) return null; return MultiTargetResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      requireApproval: (() { final guardedValue = map['requireApproval']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      run: (() { final guardedValue = map['run']; if (guardedValue == null) return null; return CloudRunLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      targetId: (() { final guardedValue = map['targetId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
