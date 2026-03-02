// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetResourceBridgeApplianceIdentity {
  /// The Principal ID associated with this Managed Service Identity.
  final pulumi.Input<String> principalId;
  /// The Tenant ID associated with this Managed Service Identity.
  final pulumi.Input<String> tenantId;
  /// The type of this Managed Service Identity.
  final pulumi.Input<String> type;

  /// Creates a new [GetResourceBridgeApplianceIdentity].
  /// [principalId] The Principal ID associated with this Managed Service Identity.
  /// [tenantId] The Tenant ID associated with this Managed Service Identity.
  /// [type] The type of this Managed Service Identity.
  GetResourceBridgeApplianceIdentity({
    required this.principalId,
    required this.tenantId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': principalId,
      'tenantId': tenantId,
      'type': type,
    };
  }

  factory GetResourceBridgeApplianceIdentity.fromMap(Map<String, dynamic> map) {
    return GetResourceBridgeApplianceIdentity(
      principalId: (map['principalId'] as String).input(),
      tenantId: (map['tenantId'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

