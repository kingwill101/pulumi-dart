// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDeploymentIdentity {
  /// List of identities attached to the NGINX Deployment.
  final pulumi.Input<List<String>> identityIds;
  final pulumi.Input<String> principalId;
  final pulumi.Input<String> tenantId;
  /// Type of identity attached to the NGINX Deployment.
  final pulumi.Input<String> type;

  /// Creates a new [GetDeploymentIdentity].
  /// [identityIds] List of identities attached to the NGINX Deployment.
  /// [principalId] Required.
  /// [tenantId] Required.
  /// [type] Type of identity attached to the NGINX Deployment.
  GetDeploymentIdentity({
    required this.identityIds,
    required this.principalId,
    required this.tenantId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityIds': identityIds,
      'principalId': principalId,
      'tenantId': tenantId,
      'type': type,
    };
  }

  factory GetDeploymentIdentity.fromMap(Map<String, dynamic> map) {
    return GetDeploymentIdentity(
      identityIds: ((map['identityIds'] as List).cast<String>()).input(),
      principalId: (map['principalId'] as String).input(),
      tenantId: (map['tenantId'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

