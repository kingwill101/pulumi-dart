// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_identity_type.dart';

/// Describes the managed identities for an Azure resource.
class ManagedIdentity {
  /// The type of managed identity for the resource.
  final pulumi.Input<ManagedIdentityType>? type;
  /// The list of user identities associated with the resource. The user identity dictionary key references will be ARM resource ids in the form:
  /// '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}'.
  final pulumi.Input<List<String>>? userAssignedIdentities;

  /// Creates a new [ManagedIdentity].
  /// [type] The type of managed identity for the resource.
  /// [userAssignedIdentities] The list of user identities associated with the resource. The user identity dictionary key references will be ARM resource ids in the form:
  ManagedIdentity({
    this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?pulumi.Input.mapOptionalInputValue<ManagedIdentityType, String>(type, (value) => value.value),
      'userAssignedIdentities': ?userAssignedIdentities,
    };
  }

  factory ManagedIdentity.fromMap(Map<String, dynamic> map) {
    return ManagedIdentity(
      type: map['type'] == null ? null : (ManagedIdentityType.fromValue(map['type']! as String)).input(),
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : ((map['userAssignedIdentities']! as List).cast<String>()).input(),
    );
  }
}

