// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_retail_v2alpha_search_request_personalization_spec_mode.dart';

/// The specification for personalization.
class GoogleCloudRetailV2alphaSearchRequestPersonalizationSpec {
  /// Defaults to Mode.AUTO.
  final pulumi.Input<GoogleCloudRetailV2alphaSearchRequestPersonalizationSpecMode>? mode;

  /// Creates a new [GoogleCloudRetailV2alphaSearchRequestPersonalizationSpec].
  /// [mode] Defaults to Mode.AUTO.
  GoogleCloudRetailV2alphaSearchRequestPersonalizationSpec({
    this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?pulumi.Input.mapOptionalInputValue<GoogleCloudRetailV2alphaSearchRequestPersonalizationSpecMode, String>(mode, (value) => value.value),
    };
  }

  factory GoogleCloudRetailV2alphaSearchRequestPersonalizationSpec.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRetailV2alphaSearchRequestPersonalizationSpec(
      mode: map['mode'] == null ? null : (GoogleCloudRetailV2alphaSearchRequestPersonalizationSpecMode.fromValue(map['mode'] as String)).input(),
    );
  }
}

