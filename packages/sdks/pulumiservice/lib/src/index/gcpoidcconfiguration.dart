// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GCPOIDCConfiguration {
  /// The numerical ID of the GCP project.
  final pulumi.Input<String> projectId;
  /// The ID of the identity provider associated with the workload pool.
  final pulumi.Input<String> providerId;
  /// The region of the GCP project.
  final pulumi.Input<String>? region;
  /// The email address of the service account to use.
  final pulumi.Input<String> serviceAccount;
  /// The lifetime of the temporary credentials in “XhYmZs” format.
  final pulumi.Input<String>? tokenLifetime;
  /// The ID of the workload pool to use.
  final pulumi.Input<String> workloadPoolId;

  /// Creates a new [GCPOIDCConfiguration].
  /// [projectId] The numerical ID of the GCP project.
  /// [providerId] The ID of the identity provider associated with the workload pool.
  /// [region] The region of the GCP project.
  /// [serviceAccount] The email address of the service account to use.
  /// [tokenLifetime] The lifetime of the temporary credentials in “XhYmZs” format.
  /// [workloadPoolId] The ID of the workload pool to use.
  GCPOIDCConfiguration({
    required this.projectId,
    required this.providerId,
    this.region,
    required this.serviceAccount,
    this.tokenLifetime,
    required this.workloadPoolId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectId': projectId,
      'providerId': providerId,
      'region': ?region,
      'serviceAccount': serviceAccount,
      'tokenLifetime': ?tokenLifetime,
      'workloadPoolId': workloadPoolId,
    };
  }

  factory GCPOIDCConfiguration.fromMap(Map<String, dynamic> map) {
    return GCPOIDCConfiguration(
      projectId: (map['projectId'] as String).input(),
      providerId: (map['providerId'] as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      serviceAccount: (map['serviceAccount'] as String).input(),
      tokenLifetime: map['tokenLifetime'] == null ? null : (map['tokenLifetime']! as String).input(),
      workloadPoolId: (map['workloadPoolId'] as String).input(),
    );
  }
}

