// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DeploymentIdentity {
  /// Specifies a list of user managed identity ids to be assigned.
  ///
  /// &gt; **Note:** This is required when `type` is set to `UserAssigned`.
  final pulumi.Input<List<String>>? identityIds;
  final pulumi.Input<String>? principalId;
  final pulumi.Input<String>? tenantId;

  /// Specifies the identity type of the NGINX Deployment. Possible values are `SystemAssigned`, `UserAssigned` or `SystemAssigned, UserAssigned`.
  final pulumi.Input<String> type;

  /// Creates a new [DeploymentIdentity].
  /// [identityIds] Specifies a list of user managed identity ids to be assigned.
  /// [principalId] Optional.
  /// [tenantId] Optional.
  /// [type] Specifies the identity type of the NGINX Deployment. Possible values are `SystemAssigned`, `UserAssigned` or `SystemAssigned, UserAssigned`.
  DeploymentIdentity({
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

  factory DeploymentIdentity.fromMap(Map<String, dynamic> map) {
    return DeploymentIdentity(
      identityIds: (() {
        final guardedValue = map['identityIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      principalId: (() {
        final guardedValue = map['principalId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tenantId: (() {
        final guardedValue = map['tenantId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
