// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Setting indicating whether the service has a managed identity associated with it.
class ServicesResourceResponseIdentity {
  /// The principal ID of the resource identity.
  final pulumi.Input<String> principalId;

  /// The tenant ID of the resource.
  final pulumi.Input<String> tenantId;

  /// Type of identity being specified, currently SystemAssigned and None are allowed.
  final pulumi.Input<String>? type;

  /// Creates a new [ServicesResourceResponseIdentity].
  /// [principalId] The principal ID of the resource identity.
  /// [tenantId] The tenant ID of the resource.
  /// [type] Type of identity being specified, currently SystemAssigned and None are allowed.
  ServicesResourceResponseIdentity({
    required this.principalId,
    required this.tenantId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': principalId,
      'tenantId': tenantId,
      'type': ?type,
    };
  }

  factory ServicesResourceResponseIdentity.fromMap(Map<String, dynamic> map) {
    return ServicesResourceResponseIdentity(
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
