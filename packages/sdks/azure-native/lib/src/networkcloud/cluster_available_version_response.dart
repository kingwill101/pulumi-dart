// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterAvailableVersionResponse {
  /// The last date the version of the platform is supported.
  final pulumi.Input<String> supportExpiryDate;
  /// The version of the cluster to be deployed.
  final pulumi.Input<String> targetClusterVersion;

  /// Creates a new [ClusterAvailableVersionResponse].
  /// [supportExpiryDate] The last date the version of the platform is supported.
  /// [targetClusterVersion] The version of the cluster to be deployed.
  ClusterAvailableVersionResponse({
    required this.supportExpiryDate,
    required this.targetClusterVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'supportExpiryDate': supportExpiryDate,
      'targetClusterVersion': targetClusterVersion,
    };
  }

  factory ClusterAvailableVersionResponse.fromMap(Map<String, dynamic> map) {
    return ClusterAvailableVersionResponse(
      supportExpiryDate: pulumi.Input.fromValue(map['supportExpiryDate'] as String),
      targetClusterVersion: pulumi.Input.fromValue(map['targetClusterVersion'] as String),
    );
  }
}

