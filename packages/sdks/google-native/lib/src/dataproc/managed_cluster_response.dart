// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_config_response.dart';

/// Cluster that is managed by the workflow.
class ManagedClusterResponse {
  /// The cluster name prefix. A unique cluster name will be formed by appending a random suffix.The name must contain only lower-case letters (a-z), numbers (0-9), and hyphens (-). Must begin with a letter. Cannot begin or end with hyphen. Must consist of between 2 and 35 characters.
  final pulumi.Input<String> clusterName;
  /// The cluster configuration.
  final pulumi.Input<ClusterConfigResponse> config;
  /// Optional. The labels to associate with this cluster.Label keys must be between 1 and 63 characters long, and must conform to the following PCRE regular expression: \p{Ll}\p{Lo}{0,62}Label values must be between 1 and 63 characters long, and must conform to the following PCRE regular expression: \p{Ll}\p{Lo}\p{N}_-{0,63}No more than 32 labels can be associated with a given cluster.
  final pulumi.Input<Map<String, String>> labels;

  /// Creates a new [ManagedClusterResponse].
  /// [clusterName] The cluster name prefix. A unique cluster name will be formed by appending a random suffix.The name must contain only lower-case letters (a-z), numbers (0-9), and hyphens (-). Must begin with a letter. Cannot begin or end with hyphen. Must consist of between 2 and 35 characters.
  /// [config] The cluster configuration.
  /// [labels] Optional. The labels to associate with this cluster.Label keys must be between 1 and 63 characters long, and must conform to the following PCRE regular expression: \p{Ll}\p{Lo}{0,62}Label values must be between 1 and 63 characters long, and must conform to the following PCRE regular expression: \p{Ll}\p{Lo}\p{N}_-{0,63}No more than 32 labels can be associated with a given cluster.
  const ManagedClusterResponse({
    required this.clusterName,
    required this.config,
    required this.labels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'config': pulumi.Input.mapInputValue<ClusterConfigResponse, Map<String, dynamic>>(config, (value) => value.toMap()),
      'labels': labels,
    };
  }

  factory ManagedClusterResponse.fromMap(Map<String, dynamic> map) {
    return ManagedClusterResponse(
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      config: pulumi.Input.fromValue(ClusterConfigResponse.fromMap((map['config']! as Map).cast<String, dynamic>())),
      labels: pulumi.Input.fromValue((map['labels'] as Map).cast<String, String>()),
    );
  }
}
