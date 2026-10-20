// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_shield_auth_id_characteristic.dart';

/// Input properties used for looking up and filtering ApiShield resources.
class ApiShieldState {
  final pulumi.Input<List<ApiShieldAuthIdCharacteristic>?>? authIdCharacteristics;
  /// Ensures that the configuration is written or retrieved in normalized fashion
  final pulumi.Input<bool?>? normalize;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [ApiShieldState].
  /// [authIdCharacteristics] Optional.
  /// [normalize] Ensures that the configuration is written or retrieved in normalized fashion
  /// [zoneId] Identifier.
  const ApiShieldState({
    this.authIdCharacteristics,
    this.normalize,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authIdCharacteristics': ?pulumi.Input.mapOptionalInputValue<List<ApiShieldAuthIdCharacteristic>, List<Map<String, dynamic>>>(authIdCharacteristics, (value) => pulumi.Input.encodeList<ApiShieldAuthIdCharacteristic, Map<String, dynamic>>(value, (value) => value.toMap())),
      'normalize': ?normalize,
      'zoneId': ?zoneId,
    };
  }

  factory ApiShieldState.fromMap(Map<String, dynamic> map) {
    return ApiShieldState(
      authIdCharacteristics: (() { final guardedValue = map['authIdCharacteristics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApiShieldAuthIdCharacteristic>(guardedValue, (value) => ApiShieldAuthIdCharacteristic.fromMap((value as Map).cast<String, dynamic>()))); })(),
      normalize: (() { final guardedValue = map['normalize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
