// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sku_setting_response.dart';

class SkuResourcePropertiesResponse {
  /// The provisioning state.
  final pulumi.Input<String> provisioningState;

  /// The sku settings.
  final pulumi.Input<List<SkuSettingResponse>> skuSettings;

  /// Creates a new [SkuResourcePropertiesResponse].
  /// [provisioningState] The provisioning state.
  /// [skuSettings] The sku settings.
  SkuResourcePropertiesResponse({
    required this.provisioningState,
    required this.skuSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provisioningState': provisioningState,
      'skuSettings':
          pulumi.Input.mapInputValue<
            List<SkuSettingResponse>,
            List<Map<String, dynamic>>
          >(
            skuSettings,
            (value) =>
                pulumi.Input.encodeList<
                  SkuSettingResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory SkuResourcePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SkuResourcePropertiesResponse(
      provisioningState: pulumi.Input.fromValue(
        map['provisioningState'] as String,
      ),
      skuSettings: pulumi.Input.fromValue(
        pulumi.Input.decodeList<SkuSettingResponse>(
          map['skuSettings']!,
          (value) => SkuSettingResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
