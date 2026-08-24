// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_api_shield_auth_id_characteristic.dart';

/// Result data returned by getApiShield.
class GetApiShieldResult {
  final List<GetApiShieldAuthIdCharacteristic>? authIdCharacteristics;
  /// Identifier.
  final String? id;
  /// Ensures that the configuration is written or retrieved in normalized fashion
  final bool? normalize;
  /// Identifier.
  final String? zoneId;

  /// Creates a new [GetApiShieldResult].
  /// [authIdCharacteristics] Optional.
  /// [id] Identifier.
  /// [normalize] Ensures that the configuration is written or retrieved in normalized fashion
  /// [zoneId] Identifier.
  const GetApiShieldResult({
    this.authIdCharacteristics,
    this.id,
    this.normalize,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authIdCharacteristics': ?(() { final guardedValue = authIdCharacteristics; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetApiShieldAuthIdCharacteristic, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'normalize': ?normalize,
      'zoneId': ?zoneId,
    };
  }

  factory GetApiShieldResult.fromMap(Map<String, dynamic> map) {
    return GetApiShieldResult(
      authIdCharacteristics: (() { final guardedValue = map['authIdCharacteristics']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetApiShieldAuthIdCharacteristic>(guardedValue, (value) => GetApiShieldAuthIdCharacteristic.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      normalize: (() { final guardedValue = map['normalize']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
