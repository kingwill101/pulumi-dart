// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workforce_pool_provider_key_key_data.dart';

/// Input properties used for looking up and filtering WorkforcePoolProviderKey resources.
class WorkforcePoolProviderKeyState {
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
  /// [expireTime] The time after which the key will be permanently deleted and cannot be recovered.
  /// [keyData] Immutable. Public half of the asymmetric key.
  /// [keyId] The ID to use for the key, which becomes the final component of the resource name. This value must be 4-32 characters, and may contain the characters [a-z0-9-].
  /// [location] The location for the resource.
  /// [name] Identifier. The resource name of the key.
  /// [providerId] The ID of the provider.
  /// [state] The state of the key.
  /// [use] The purpose of the key.
  /// [workforcePoolId] The ID of the workforce pool.
  WorkforcePoolProviderKeyState({
    pulumi.Output<String>? expireTime,
    pulumi.Output<WorkforcePoolProviderKeyKeyData>? keyData,
    pulumi.Output<String>? keyId,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? providerId,
    pulumi.Output<String>? state,
    pulumi.Output<String>? use,
    pulumi.Output<String>? workforcePoolId,
  }) :
      expireTime = pulumi.Input.asOptionalInput<String>(expireTime),
      keyData = pulumi.Input.asOptionalInput<WorkforcePoolProviderKeyKeyData>(keyData),
      keyId = pulumi.Input.asOptionalInput<String>(keyId),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      providerId = pulumi.Input.asOptionalInput<String>(providerId),
      state = pulumi.Input.asOptionalInput<String>(state),
      use = pulumi.Input.asOptionalInput<String>(use),
      workforcePoolId = pulumi.Input.asOptionalInput<String>(workforcePoolId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
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
      expireTime: map['expireTime'] == null ? null : pulumi.Output.create<String>(map['expireTime'] as String),
      keyData: map['keyData'] == null ? null : pulumi.Output.create<WorkforcePoolProviderKeyKeyData>(WorkforcePoolProviderKeyKeyData.fromMap((map['keyData'] as Map).cast<String, dynamic>())),
      keyId: map['keyId'] == null ? null : pulumi.Output.create<String>(map['keyId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      providerId: map['providerId'] == null ? null : pulumi.Output.create<String>(map['providerId'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      use: map['use'] == null ? null : pulumi.Output.create<String>(map['use'] as String),
      workforcePoolId: map['workforcePoolId'] == null ? null : pulumi.Output.create<String>(map['workforcePoolId'] as String),
    );
  }
}

