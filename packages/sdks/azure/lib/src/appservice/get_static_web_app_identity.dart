// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetStaticWebAppIdentity {
  /// The list of Managed Identity IDs which are assigned to this Static Web App resource.
  final pulumi.Input<List<String>> identityIds;
  final pulumi.Input<String> principalId;
  final pulumi.Input<String> tenantId;
  /// The Type of Managed Identity assigned to this Static Web App resource.
  final pulumi.Input<String> type;

  /// Creates a new [GetStaticWebAppIdentity].
  /// [identityIds] The list of Managed Identity IDs which are assigned to this Static Web App resource.
  /// [principalId] Required.
  /// [tenantId] Required.
  /// [type] The Type of Managed Identity assigned to this Static Web App resource.
  const GetStaticWebAppIdentity({
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

  factory GetStaticWebAppIdentity.fromMap(Map<String, dynamic> map) {
    return GetStaticWebAppIdentity(
      identityIds: pulumi.Input.fromValue((map['identityIds'] as List).cast<String>()),
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
