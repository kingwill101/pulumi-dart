// ignore_for_file: unused_element, unnecessary_cast


class GCPOIDCConfiguration {
  /// The numerical ID of the GCP project.
  final String projectId;
  /// The ID of the identity provider associated with the workload pool.
  final String providerId;
  /// The region of the GCP project.
  final String? region;
  /// The email address of the service account to use.
  final String serviceAccount;
  /// The lifetime of the temporary credentials in “XhYmZs” format.
  final String? tokenLifetime;
  /// The ID of the workload pool to use.
  final String workloadPoolId;

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
      projectId: map['projectId'] as String,
      providerId: map['providerId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      serviceAccount: map['serviceAccount'] as String,
      tokenLifetime: map['tokenLifetime'] == null ? null : map['tokenLifetime'] as String,
      workloadPoolId: map['workloadPoolId'] as String,
    );
  }
}

