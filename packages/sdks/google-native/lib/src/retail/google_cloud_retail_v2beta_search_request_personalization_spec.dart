// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_retail_v2beta_search_request_personalization_spec_mode.dart';

/// The specification for personalization.
class GoogleCloudRetailV2betaSearchRequestPersonalizationSpec {
  /// Defaults to Mode.AUTO.
  final pulumi.Input<GoogleCloudRetailV2betaSearchRequestPersonalizationSpecMode>? mode;

  /// Creates a new [GoogleCloudRetailV2betaSearchRequestPersonalizationSpec].
  /// [mode] Defaults to Mode.AUTO.
  const GoogleCloudRetailV2betaSearchRequestPersonalizationSpec({
    this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?pulumi.Input.mapOptionalInputValue<GoogleCloudRetailV2betaSearchRequestPersonalizationSpecMode, String>(mode, (value) => value.wireValue),
    };
  }

  factory GoogleCloudRetailV2betaSearchRequestPersonalizationSpec.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRetailV2betaSearchRequestPersonalizationSpec(
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudRetailV2betaSearchRequestPersonalizationSpecMode.fromValue(guardedValue as String)); })(),
    );
  }
}

