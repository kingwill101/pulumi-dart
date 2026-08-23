// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Azure Active Directory identity configuration for a resource.
class ResourceIdentity {
  /// The identity type. Set this to 'SystemAssigned' in order to automatically create and assign an Azure Active Directory principal for the resource.
  final pulumi.Input<String>? type;
  /// The resource ids of the user assigned identities to use
  final pulumi.Input<List<String>>? userAssignedIdentities;

  /// Creates a new [ResourceIdentity].
  /// [type] The identity type. Set this to 'SystemAssigned' in order to automatically create and assign an Azure Active Directory principal for the resource.
  /// [userAssignedIdentities] The resource ids of the user assigned identities to use
  const ResourceIdentity({
    this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
      'userAssignedIdentities': ?userAssignedIdentities,
    };
  }

  factory ResourceIdentity.fromMap(Map<String, dynamic> map) {
    return ResourceIdentity(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userAssignedIdentities: (() { final guardedValue = map['userAssignedIdentities']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
