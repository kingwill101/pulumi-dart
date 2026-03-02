// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_retail_v2_search_request_personalization_spec_mode.dart';

/// The specification for personalization.
class GoogleCloudRetailV2SearchRequestPersonalizationSpec {
  /// Defaults to Mode.AUTO.
  final pulumi.Input<GoogleCloudRetailV2SearchRequestPersonalizationSpecMode>? mode;

  /// Creates a new [GoogleCloudRetailV2SearchRequestPersonalizationSpec].
  /// [mode] Defaults to Mode.AUTO.
  GoogleCloudRetailV2SearchRequestPersonalizationSpec({
    this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?pulumi.Input.mapOptionalInputValue<GoogleCloudRetailV2SearchRequestPersonalizationSpecMode, String>(mode, (value) => value.value),
    };
  }

  factory GoogleCloudRetailV2SearchRequestPersonalizationSpec.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRetailV2SearchRequestPersonalizationSpec(
      mode: map['mode'] == null ? null : (GoogleCloudRetailV2SearchRequestPersonalizationSpecMode.fromValue(map['mode']! as String)).input(),
    );
  }
}

