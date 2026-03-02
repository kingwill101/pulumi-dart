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
  SkuZoneDetail({
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
      capabilities: map['capabilities'] == null ? null : (pulumi.Input.decodeList<SkuCapability>(map['capabilities']!, (value) => SkuCapability.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : ((map['name']! as List).cast<String>()).input(),
    );
  }
}

