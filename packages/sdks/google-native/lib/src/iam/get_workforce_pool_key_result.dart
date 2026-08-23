// ignore_for_file: unused_element, unnecessary_cast

import 'key_data_response.dart';

/// Result data returned by getWorkforcePoolKey.
class GetWorkforcePoolKeyResult {
  /// The time after which the key will be permanently deleted and cannot be recovered. Note that the key may get purged before this time if the total limit of keys per provider is exceeded.
  final String expireTime;
  /// Immutable. Public half of the asymmetric key.
  final KeyDataResponse keyData;
  /// The resource name of the key.
  final String name;
  /// The state of the key.
  final String state;
  /// The purpose of the key.
  final String use;

  /// Creates a new [GetWorkforcePoolKeyResult].
  /// [expireTime] The time after which the key will be permanently deleted and cannot be recovered. Note that the key may get purged before this time if the total limit of keys per provider is exceeded.
  /// [keyData] Immutable. Public half of the asymmetric key.
  /// [name] The resource name of the key.
  /// [state] The state of the key.
  /// [use] The purpose of the key.
  const GetWorkforcePoolKeyResult({
    required this.expireTime,
    required this.keyData,
    required this.name,
    required this.state,
    required this.use,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expireTime': expireTime,
      'keyData': keyData.toMap(),
      'name': name,
      'state': state,
      'use': use,
    };
  }

  factory GetWorkforcePoolKeyResult.fromMap(Map<String, dynamic> map) {
    return GetWorkforcePoolKeyResult(
      expireTime: map['expireTime'] as String,
      keyData: KeyDataResponse.fromMap((map['keyData']! as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      state: map['state'] as String,
      use: map['use'] as String,
    );
  }
}
