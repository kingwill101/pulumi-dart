// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_shield_auth_id_characteristic.dart';

/// {@template pulumi_index_api_shield_api_shield_args_doc}
/// The set of arguments for ApiShield.
/// {@endtemplate}
/// {@macro pulumi_index_api_shield_api_shield_args_doc}
class ApiShieldArgs {
  final pulumi.Input<List<ApiShieldAuthIdCharacteristic>> authIdCharacteristics;
  /// Identifier.
  final pulumi.Input<String> zoneId;

  /// Creates a new [ApiShieldArgs].
  /// [authIdCharacteristics] Required.
  /// [zoneId] Identifier.
  const ApiShieldArgs({
    required this.authIdCharacteristics,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authIdCharacteristics': pulumi.Input.mapInputValue<List<ApiShieldAuthIdCharacteristic>, List<Map<String, dynamic>>>(authIdCharacteristics, (value) => pulumi.Input.encodeList<ApiShieldAuthIdCharacteristic, Map<String, dynamic>>(value, (value) => value.toMap())),
      'zoneId': zoneId,
    };
  }

  factory ApiShieldArgs.fromMap(Map<String, dynamic> map) {
    return ApiShieldArgs(
      authIdCharacteristics: pulumi.Input.fromValue(pulumi.Input.decodeList<ApiShieldAuthIdCharacteristic>(map['authIdCharacteristics']!, (value) => ApiShieldAuthIdCharacteristic.fromMap((value as Map).cast<String, dynamic>()))),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
