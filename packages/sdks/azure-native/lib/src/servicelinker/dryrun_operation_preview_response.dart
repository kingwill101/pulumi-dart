// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The preview of the operations for creation
class DryrunOperationPreviewResponse {
  /// The action defined by RBAC, refer https://docs.microsoft.com/azure/role-based-access-control/role-definitions#actions-format
  final pulumi.Input<String>? action;
  /// The description of the operation
  final pulumi.Input<String>? description;
  /// The operation name
  final pulumi.Input<String>? name;
  /// The operation type
  final pulumi.Input<String>? operationType;
  /// The scope of the operation, refer https://docs.microsoft.com/azure/role-based-access-control/scope-overview
  final pulumi.Input<String>? scope;

  /// Creates a new [DryrunOperationPreviewResponse].
  /// [action] The action defined by RBAC, refer https://docs.microsoft.com/azure/role-based-access-control/role-definitions#actions-format
  /// [description] The description of the operation
  /// [name] The operation name
  /// [operationType] The operation type
  /// [scope] The scope of the operation, refer https://docs.microsoft.com/azure/role-based-access-control/scope-overview
  DryrunOperationPreviewResponse({
    this.action,
    this.description,
    this.name,
    this.operationType,
    this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'description': ?description,
      'name': ?name,
      'operationType': ?operationType,
      'scope': ?scope,
    };
  }

  factory DryrunOperationPreviewResponse.fromMap(Map<String, dynamic> map) {
    return DryrunOperationPreviewResponse(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operationType: (() { final guardedValue = map['operationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

