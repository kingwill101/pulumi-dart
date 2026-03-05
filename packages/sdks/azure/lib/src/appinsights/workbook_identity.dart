// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkbookIdentity {
  /// The list of User Assigned Managed Identity IDs assigned to this Workbook. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>>? identityIds;
  /// The Principal ID of the System Assigned Managed Service Identity that is configured on this Workbook.
  final pulumi.Input<String>? principalId;
  /// The Tenant ID of the System Assigned Managed Service Identity that is configured on this Workbook.
  final pulumi.Input<String>? tenantId;
  /// The type of Managed Service Identity that is configured on this Workbook. Possible values are `UserAssigned`, `SystemAssigned` and `SystemAssigned, UserAssigned`. Changing this forces a new resource to be created.
  final pulumi.Input<String> type;

  /// Creates a new [WorkbookIdentity].
  /// [identityIds] The list of User Assigned Managed Identity IDs assigned to this Workbook. Changing this forces a new resource to be created.
  /// [principalId] The Principal ID of the System Assigned Managed Service Identity that is configured on this Workbook.
  /// [tenantId] The Tenant ID of the System Assigned Managed Service Identity that is configured on this Workbook.
  /// [type] The type of Managed Service Identity that is configured on this Workbook. Possible values are `UserAssigned`, `SystemAssigned` and `SystemAssigned, UserAssigned`. Changing this forces a new resource to be created.
  WorkbookIdentity({
    this.identityIds,
    this.principalId,
    this.tenantId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityIds': ?identityIds,
      'principalId': ?principalId,
      'tenantId': ?tenantId,
      'type': type,
    };
  }

  factory WorkbookIdentity.fromMap(Map<String, dynamic> map) {
    return WorkbookIdentity(
      identityIds: (() { final guardedValue = map['identityIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      principalId: (() { final guardedValue = map['principalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

