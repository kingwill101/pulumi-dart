// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sku_setting.dart';

class SkuResourceProperties {
  /// The sku settings.
  final pulumi.Input<List<SkuSetting>> skuSettings;

  /// Creates a new [SkuResourceProperties].
  /// [skuSettings] The sku settings.
  const SkuResourceProperties({
    required this.skuSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'skuSettings': pulumi.Input.mapInputValue<List<SkuSetting>, List<Map<String, dynamic>>>(skuSettings, (value) => pulumi.Input.encodeList<SkuSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SkuResourceProperties.fromMap(Map<String, dynamic> map) {
    return SkuResourceProperties(
      skuSettings: pulumi.Input.fromValue(pulumi.Input.decodeList<SkuSetting>(map['skuSettings']!, (value) => SkuSetting.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
