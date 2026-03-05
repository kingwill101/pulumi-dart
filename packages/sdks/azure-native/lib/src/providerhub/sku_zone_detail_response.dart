// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sku_capability_response.dart';

class SkuZoneDetailResponse {
  /// The capabilities.
  final pulumi.Input<List<SkuCapabilityResponse>>? capabilities;
  /// The name.
  final pulumi.Input<List<String>>? name;

  /// Creates a new [SkuZoneDetailResponse].
  /// [capabilities] The capabilities.
  /// [name] The name.
  SkuZoneDetailResponse({
    this.capabilities,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capabilities': ?pulumi.Input.mapOptionalInputValue<List<SkuCapabilityResponse>, List<Map<String, dynamic>>>(capabilities, (value) => pulumi.Input.encodeList<SkuCapabilityResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
    };
  }

  factory SkuZoneDetailResponse.fromMap(Map<String, dynamic> map) {
    return SkuZoneDetailResponse(
      capabilities: (() { final guardedValue = map['capabilities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SkuCapabilityResponse>(guardedValue, (value) => SkuCapabilityResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

