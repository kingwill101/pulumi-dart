// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering UserAssignedIdentity resources.
class UserAssignedIdentityState {
  /// The ID of the app associated with the Identity.
  final pulumi.Input<String?>? clientId;
  /// The isolation scope for the User Assigned Identity. The only possible value is `Regional`.
  final pulumi.Input<String?>? isolationScope;
  /// The Azure Region where the User Assigned Identity should exist. Changing this forces a new User Assigned Identity to be created.
  final pulumi.Input<String?>? location;
  /// Specifies the name of this User Assigned Identity. Changing this forces a new User Assigned Identity to be created.
  final pulumi.Input<String?>? name;
  /// The ID of the Service Principal object associated with the created Identity.
  final pulumi.Input<String?>? principalId;
  /// Specifies the name of the Resource Group within which this User Assigned Identity should exist. Changing this forces a new User Assigned Identity to be created.
  final pulumi.Input<String?>? resourceGroupName;
  /// A mapping of tags which should be assigned to the User Assigned Identity.
  final pulumi.Input<Map<String, String>?>? tags;
  /// The ID of the Tenant which the Identity belongs to.
  final pulumi.Input<String?>? tenantId;

  /// Creates a new [UserAssignedIdentityState].
  /// [clientId] The ID of the app associated with the Identity.
  /// [isolationScope] The isolation scope for the User Assigned Identity. The only possible value is `Regional`.
  /// [location] The Azure Region where the User Assigned Identity should exist. Changing this forces a new User Assigned Identity to be created.
  /// [name] Specifies the name of this User Assigned Identity. Changing this forces a new User Assigned Identity to be created.
  /// [principalId] The ID of the Service Principal object associated with the created Identity.
  /// [resourceGroupName] Specifies the name of the Resource Group within which this User Assigned Identity should exist. Changing this forces a new User Assigned Identity to be created.
  /// [tags] A mapping of tags which should be assigned to the User Assigned Identity.
  /// [tenantId] The ID of the Tenant which the Identity belongs to.
  const UserAssignedIdentityState({
    this.clientId,
    this.isolationScope,
    this.location,
    this.name,
    this.principalId,
    this.resourceGroupName,
    this.tags,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'isolationScope': ?isolationScope,
      'location': ?location,
      'name': ?name,
      'principalId': ?principalId,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
      'tenantId': ?tenantId,
    };
  }

  factory UserAssignedIdentityState.fromMap(Map<String, dynamic> map) {
    return UserAssignedIdentityState(
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isolationScope: (() { final guardedValue = map['isolationScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      principalId: (() { final guardedValue = map['principalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
