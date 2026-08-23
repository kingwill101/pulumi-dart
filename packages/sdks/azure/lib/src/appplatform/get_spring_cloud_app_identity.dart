// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSpringCloudAppIdentity {
  final pulumi.Input<List<String>> identityIds;
  /// The Principal ID for the Service Principal associated with the Managed Service Identity of this Spring Cloud Application.
  final pulumi.Input<String> principalId;
  /// The Tenant ID for the Service Principal associated with the Managed Service Identity of this Spring Cloud Application.
  final pulumi.Input<String> tenantId;
  /// The Type of Managed Identity assigned to the Spring Cloud Application.
  final pulumi.Input<String> type;

  /// Creates a new [GetSpringCloudAppIdentity].
  /// [identityIds] Required.
  /// [principalId] The Principal ID for the Service Principal associated with the Managed Service Identity of this Spring Cloud Application.
  /// [tenantId] The Tenant ID for the Service Principal associated with the Managed Service Identity of this Spring Cloud Application.
  /// [type] The Type of Managed Identity assigned to the Spring Cloud Application.
  const GetSpringCloudAppIdentity({
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

  factory GetSpringCloudAppIdentity.fromMap(Map<String, dynamic> map) {
    return GetSpringCloudAppIdentity(
      identityIds: pulumi.Input.fromValue((map['identityIds'] as List).cast<String>()),
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
