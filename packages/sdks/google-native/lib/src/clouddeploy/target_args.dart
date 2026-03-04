// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'anthos_cluster.dart';
import 'cloud_run_location.dart';
import 'execution_config.dart';
import 'gke_cluster.dart';
import 'multi_target.dart';

/// {@template pulumi_clouddeploy_v1_target_args_doc}
/// The set of arguments for Target.
/// {@endtemplate}
/// {@macro pulumi_clouddeploy_v1_target_args_doc}
class TargetArgs {
  /// Optional. User annotations. These attributes can only be set and used by the user, and not by Cloud Deploy. See https://google.aip.dev/128#annotations for more details such as format and size limitations.
  final pulumi.Input<Map<String, String>>? annotations;

  /// Optional. Information specifying an Anthos Cluster.
  final pulumi.Input<AnthosCluster>? anthosCluster;

  /// Optional. The deploy parameters to use for this target.
  final pulumi.Input<Map<String, String>>? deployParameters;

  /// Optional. Description of the `Target`. Max length is 255 characters.
  final pulumi.Input<String>? description;

  /// Optional. This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  final pulumi.Input<String>? etag;

  /// Configurations for all execution that relates to this `Target`. Each `ExecutionEnvironmentUsage` value may only be used in a single configuration; using the same value multiple times is an error. When one or more configurations are specified, they must include the `RENDER` and `DEPLOY` `ExecutionEnvironmentUsage` values. When no configurations are specified, execution will use the default specified in `DefaultPool`.
  final pulumi.Input<List<ExecutionConfig>>? executionConfigs;

  /// Optional. Information specifying a GKE Cluster.
  final pulumi.Input<GkeCluster>? gke;

  /// Optional. Labels are attributes that can be set and used by both the user and by Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be &lt;= 128 bytes.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// Optional. Information specifying a multiTarget.
  final pulumi.Input<MultiTarget>? multiTarget;

  /// Optional. Name of the `Target`. Format is `projects/{project}/locations/{location}/targets/a-z{0,62}`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// Optional. Whether or not the `Target` requires approval.
  final pulumi.Input<bool>? requireApproval;

  /// Optional. Information specifying a Cloud Run deployment target.
  final pulumi.Input<CloudRunLocation>? run;

  /// Required. ID of the `Target`.
  final pulumi.Input<String> targetId;

  /// Creates a new [TargetArgs].
  /// [annotations] Optional. User annotations. These attributes can only be set and used by the user, and not by Cloud Deploy. See https://google.aip.dev/128#annotations for more details such as format and size limitations.
  /// [anthosCluster] Optional. Information specifying an Anthos Cluster.
  /// [deployParameters] Optional. The deploy parameters to use for this target.
  /// [description] Optional. Description of the `Target`. Max length is 255 characters.
  /// [etag] Optional. This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  /// [executionConfigs] Configurations for all execution that relates to this `Target`. Each `ExecutionEnvironmentUsage` value may only be used in a single configuration; using the same value multiple times is an error. When one or more configurations are specified, they must include the `RENDER` and `DEPLOY` `ExecutionEnvironmentUsage` values. When no configurations are specified, execution will use the default specified in `DefaultPool`.
  /// [gke] Optional. Information specifying a GKE Cluster.
  /// [labels] Optional. Labels are attributes that can be set and used by both the user and by Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be &lt;= 128 bytes.
  /// [location] Optional.
  /// [multiTarget] Optional. Information specifying a multiTarget.
  /// [name] Optional. Name of the `Target`. Format is `projects/{project}/locations/{location}/targets/a-z{0,62}`.
  /// [project] Optional.
  /// [requestId] Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [requireApproval] Optional. Whether or not the `Target` requires approval.
  /// [run] Optional. Information specifying a Cloud Run deployment target.
  /// [targetId] Required. ID of the `Target`.
  TargetArgs({
    this.annotations,
    this.anthosCluster,
    this.deployParameters,
    this.description,
    this.etag,
    this.executionConfigs,
    this.gke,
    this.labels,
    this.location,
    this.multiTarget,
    this.name,
    this.project,
    this.requestId,
    this.requireApproval,
    this.run,
    required this.targetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'anthosCluster':
          ?pulumi.Input.mapOptionalInputValue<
            AnthosCluster,
            Map<String, dynamic>
          >(anthosCluster, (value) => value.toMap()),
      'deployParameters': ?deployParameters,
      'description': ?description,
      'etag': ?etag,
      'executionConfigs':
          ?pulumi.Input.mapOptionalInputValue<
            List<ExecutionConfig>,
            List<Map<String, dynamic>>
          >(
            executionConfigs,
            (value) =>
                pulumi.Input.encodeList<ExecutionConfig, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'gke':
          ?pulumi.Input.mapOptionalInputValue<GkeCluster, Map<String, dynamic>>(
            gke,
            (value) => value.toMap(),
          ),
      'labels': ?labels,
      'location': ?location,
      'multiTarget':
          ?pulumi.Input.mapOptionalInputValue<
            MultiTarget,
            Map<String, dynamic>
          >(multiTarget, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
      'requestId': ?requestId,
      'requireApproval': ?requireApproval,
      'run':
          ?pulumi.Input.mapOptionalInputValue<
            CloudRunLocation,
            Map<String, dynamic>
          >(run, (value) => value.toMap()),
      'targetId': targetId,
    };
  }

  factory TargetArgs.fromMap(Map<String, dynamic> map) {
    return TargetArgs(
      annotations: (() {
        final guardedValue = map['annotations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      anthosCluster: (() {
        final guardedValue = map['anthosCluster'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AnthosCluster.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      deployParameters: (() {
        final guardedValue = map['deployParameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      etag: (() {
        final guardedValue = map['etag'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      executionConfigs: (() {
        final guardedValue = map['executionConfigs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ExecutionConfig>(
            guardedValue,
            (value) =>
                ExecutionConfig.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      gke: (() {
        final guardedValue = map['gke'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GkeCluster.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      multiTarget: (() {
        final guardedValue = map['multiTarget'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          MultiTarget.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      requestId: (() {
        final guardedValue = map['requestId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      requireApproval: (() {
        final guardedValue = map['requireApproval'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      run: (() {
        final guardedValue = map['run'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CloudRunLocation.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      targetId: pulumi.Input.fromValue(map['targetId'] as String),
    );
  }
}
