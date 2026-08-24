// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_shield_auth_id_characteristic.dart';

/// Input properties used for looking up and filtering ApiShield resources.
class ApiShieldState {
  final pulumi.Input<List<ApiShieldAuthIdCharacteristic>?>? authIdCharacteristics;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [ApiShieldState].
  /// [authIdCharacteristics] Optional.
  /// [zoneId] Identifier.
  const ApiShieldState({
    this.authIdCharacteristics,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authIdCharacteristics': ?pulumi.Input.mapOptionalInputValue<List<ApiShieldAuthIdCharacteristic>, List<Map<String, dynamic>>>(authIdCharacteristics, (value) => pulumi.Input.encodeList<ApiShieldAuthIdCharacteristic, Map<String, dynamic>>(value, (value) => value.toMap())),
      'zoneId': ?zoneId,
    };
  }

  factory ApiShieldState.fromMap(Map<String, dynamic> map) {
    return ApiShieldState(
      authIdCharacteristics: (() { final guardedValue = map['authIdCharacteristics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApiShieldAuthIdCharacteristic>(guardedValue, (value) => ApiShieldAuthIdCharacteristic.fromMap((value as Map).cast<String, dynamic>()))); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
