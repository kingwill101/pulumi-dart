// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProjectIdentity {
  /// The ID of the User Assigned Identity which should be assigned to this Dev Center Project.
  ///
  /// &gt; **Note:** `identityIds` is required when `type` is set to `UserAssigned` or `SystemAssigned, UserAssigned`.
  final pulumi.Input<List<String>>? identityIds;
  /// The Principal ID for the Service Principal associated with the Identity of this Dev Center Project.
  final pulumi.Input<String>? principalId;
  /// The Tenant ID for the Service Principal associated with the Identity of this Dev Center Project.
  final pulumi.Input<String>? tenantId;
  /// The type of identity used for this Dev Center Project. Possible values are `SystemAssigned`, `UserAssigned` and `SystemAssigned, UserAssigned`.
  final pulumi.Input<String> type;

  /// Creates a new [ProjectIdentity].
  /// [identityIds] The ID of the User Assigned Identity which should be assigned to this Dev Center Project.
  /// [principalId] The Principal ID for the Service Principal associated with the Identity of this Dev Center Project.
  /// [tenantId] The Tenant ID for the Service Principal associated with the Identity of this Dev Center Project.
  /// [type] The type of identity used for this Dev Center Project. Possible values are `SystemAssigned`, `UserAssigned` and `SystemAssigned, UserAssigned`.
  const ProjectIdentity({
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

  factory ProjectIdentity.fromMap(Map<String, dynamic> map) {
    return ProjectIdentity(
      identityIds: (() { final guardedValue = map['identityIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      principalId: (() { final guardedValue = map['principalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
