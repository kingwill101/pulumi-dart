// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StaticWebAppIdentity {
  /// A list of Managed Identity IDs which should be assigned to this Static Web App resource.
  final pulumi.Input<List<String>?>? identityIds;
  final pulumi.Input<String?>? principalId;
  final pulumi.Input<String?>? tenantId;
  /// The Type of Managed Identity assigned to this Static Web App resource. Possible values are `SystemAssigned` and `UserAssigned`.
  final pulumi.Input<String> type;

  /// Creates a new [StaticWebAppIdentity].
  /// [identityIds] A list of Managed Identity IDs which should be assigned to this Static Web App resource.
  /// [principalId] Optional.
  /// [tenantId] Optional.
  /// [type] The Type of Managed Identity assigned to this Static Web App resource. Possible values are `SystemAssigned` and `UserAssigned`.
  const StaticWebAppIdentity({
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

  factory StaticWebAppIdentity.fromMap(Map<String, dynamic> map) {
    return StaticWebAppIdentity(
      identityIds: (() { final guardedValue = map['identityIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      principalId: (() { final guardedValue = map['principalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
