// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_retail_v2alpha_search_request_personalization_spec_mode.dart';

/// The specification for personalization.
class GoogleCloudRetailV2alphaSearchRequestPersonalizationSpec {
  /// Defaults to Mode.AUTO.
  final pulumi.Input<GoogleCloudRetailV2alphaSearchRequestPersonalizationSpecMode>? mode;

  /// Creates a new [GoogleCloudRetailV2alphaSearchRequestPersonalizationSpec].
  /// [mode] Defaults to Mode.AUTO.
  const GoogleCloudRetailV2alphaSearchRequestPersonalizationSpec({
    this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?pulumi.Input.mapOptionalInputValue<GoogleCloudRetailV2alphaSearchRequestPersonalizationSpecMode, String>(mode, (value) => value.wireValue),
    };
  }

  factory GoogleCloudRetailV2alphaSearchRequestPersonalizationSpec.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRetailV2alphaSearchRequestPersonalizationSpec(
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudRetailV2alphaSearchRequestPersonalizationSpecMode.fromValue(guardedValue as String)); })(),
    );
  }
}
