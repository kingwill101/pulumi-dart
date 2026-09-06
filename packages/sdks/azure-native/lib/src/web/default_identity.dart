// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_service_identity_type.dart';

class DefaultIdentity {
  /// Type of managed service identity.
  final pulumi.Input<ManagedServiceIdentityType?>? identityType;
  final pulumi.Input<String?>? userAssignedIdentityResourceId;

  /// Creates a new [DefaultIdentity].
  /// [identityType] Type of managed service identity.
  /// [userAssignedIdentityResourceId] Optional.
  const DefaultIdentity({
    this.identityType,
    this.userAssignedIdentityResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityType': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentityType, String>(identityType, (value) => value.wireValue),
      'userAssignedIdentityResourceId': ?userAssignedIdentityResourceId,
    };
  }

  factory DefaultIdentity.fromMap(Map<String, dynamic> map) {
    return DefaultIdentity(
      identityType: (() { final guardedValue = map['identityType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedServiceIdentityType.fromValue(guardedValue as String)); })(),
      userAssignedIdentityResourceId: (() { final guardedValue = map['userAssignedIdentityResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
