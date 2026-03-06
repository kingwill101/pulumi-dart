// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sku_capability.dart';

class SkuZoneDetail {
  /// The capabilities.
  final pulumi.Input<List<SkuCapability>>? capabilities;
  /// The name.
  final pulumi.Input<List<String>>? name;

  /// Creates a new [SkuZoneDetail].
  /// [capabilities] The capabilities.
  /// [name] The name.
  const SkuZoneDetail({
    this.capabilities,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capabilities': ?pulumi.Input.mapOptionalInputValue<List<SkuCapability>, List<Map<String, dynamic>>>(capabilities, (value) => pulumi.Input.encodeList<SkuCapability, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
    };
  }

  factory SkuZoneDetail.fromMap(Map<String, dynamic> map) {
    return SkuZoneDetail(
      capabilities: (() { final guardedValue = map['capabilities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SkuCapability>(guardedValue, (value) => SkuCapability.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

