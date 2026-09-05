// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterExtensionIdentity {
  /// The Principal ID associated with this Managed Service Identity.
  final pulumi.Input<String?>? principalId;
  /// The Tenant ID associated with this Managed Service Identity.
  final pulumi.Input<String?>? tenantId;
  /// Specifies the type of Managed Service Identity. The only possible value is `SystemAssigned`. Changing this forces a new resource to be created.
  final pulumi.Input<String> type;

  /// Creates a new [ClusterExtensionIdentity].
  /// [principalId] The Principal ID associated with this Managed Service Identity.
  /// [tenantId] The Tenant ID associated with this Managed Service Identity.
  /// [type] Specifies the type of Managed Service Identity. The only possible value is `SystemAssigned`. Changing this forces a new resource to be created.
  const ClusterExtensionIdentity({
    this.principalId,
    this.tenantId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': ?principalId,
      'tenantId': ?tenantId,
      'type': type,
    };
  }

  factory ClusterExtensionIdentity.fromMap(Map<String, dynamic> map) {
    return ClusterExtensionIdentity(
      principalId: (() { final guardedValue = map['principalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
