// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetApplicationGatewayIdentity {
  /// The list of User Assigned Managed Identity IDs assigned to this Application Gateway.
  final pulumi.Input<List<String>> identityIds;
  final pulumi.Input<String> principalId;
  final pulumi.Input<String> tenantId;

  /// The type of Managed Service Identity that is configured on this Application Gateway.
  final pulumi.Input<String> type;

  /// Creates a new [GetApplicationGatewayIdentity].
  /// [identityIds] The list of User Assigned Managed Identity IDs assigned to this Application Gateway.
  /// [principalId] Required.
  /// [tenantId] Required.
  /// [type] The type of Managed Service Identity that is configured on this Application Gateway.
  GetApplicationGatewayIdentity({
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

  factory GetApplicationGatewayIdentity.fromMap(Map<String, dynamic> map) {
    return GetApplicationGatewayIdentity(
      identityIds: pulumi.Input.fromValue(
        (map['identityIds'] as List).cast<String>(),
      ),
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
