// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workforce_pool_provider_key_key_data.dart';

/// Input properties used for looking up and filtering WorkforcePoolProviderKey resources.
class WorkforcePoolProviderKeyState {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// The time after which the key will be permanently deleted and cannot be recovered.
  /// Note that the key may get purged before this time if the total limit of keys per provider is exceeded.
  final pulumi.Input<String>? expireTime;
  /// Immutable. Public half of the asymmetric key.
  /// Structure is documented below.
  final pulumi.Input<WorkforcePoolProviderKeyKeyData>? keyData;
  /// The ID to use for the key, which becomes the final component of the resource name. This value must be 4-32 characters, and may contain the characters [a-z0-9-].
  final pulumi.Input<String>? keyId;
  /// The location for the resource.
  final pulumi.Input<String>? location;
  /// Identifier. The resource name of the key.
  /// Format: `locations/{location}/workforcePools/{workforcePoolId}/providers/{providerId}/keys/{keyId}`
  final pulumi.Input<String>? name;
  /// The ID of the provider.
  final pulumi.Input<String>? providerId;
  /// The state of the key.
  final pulumi.Input<String>? state;
  /// The purpose of the key.
  /// Possible values are: `ENCRYPTION`.
  final pulumi.Input<String>? use;
  /// The ID of the workforce pool.
  final pulumi.Input<String>? workforcePoolId;

  /// Creates a new [WorkforcePoolProviderKeyState].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [expireTime] The time after which the key will be permanently deleted and cannot be recovered.
  /// [keyData] Immutable. Public half of the asymmetric key.
  /// [keyId] The ID to use for the key, which becomes the final component of the resource name. This value must be 4-32 characters, and may contain the characters [a-z0-9-].
  /// [location] The location for the resource.
  /// [name] Identifier. The resource name of the key.
  /// [providerId] The ID of the provider.
  /// [state] The state of the key.
  /// [use] The purpose of the key.
  /// [workforcePoolId] The ID of the workforce pool.
  const WorkforcePoolProviderKeyState({
    this.deletionPolicy,
    this.expireTime,
    this.keyData,
    this.keyId,
    this.location,
    this.name,
    this.providerId,
    this.state,
    this.use,
    this.workforcePoolId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'expireTime': ?expireTime,
      'keyData': ?pulumi.Input.mapOptionalInputValue<WorkforcePoolProviderKeyKeyData, Map<String, dynamic>>(keyData, (value) => value.toMap()),
      'keyId': ?keyId,
      'location': ?location,
      'name': ?name,
      'providerId': ?providerId,
      'state': ?state,
      'use': ?use,
      'workforcePoolId': ?workforcePoolId,
    };
  }

  factory WorkforcePoolProviderKeyState.fromMap(Map<String, dynamic> map) {
    return WorkforcePoolProviderKeyState(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expireTime: (() { final guardedValue = map['expireTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyData: (() { final guardedValue = map['keyData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkforcePoolProviderKeyKeyData.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      keyId: (() { final guardedValue = map['keyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      providerId: (() { final guardedValue = map['providerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      use: (() { final guardedValue = map['use']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workforcePoolId: (() { final guardedValue = map['workforcePoolId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
