// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The specification for personalization.
class GoogleCloudRetailV2alphaSearchRequestPersonalizationSpecResponse {
  /// Defaults to Mode.AUTO.
  final pulumi.Input<String> mode;

  /// Creates a new [GoogleCloudRetailV2alphaSearchRequestPersonalizationSpecResponse].
  /// [mode] Defaults to Mode.AUTO.
  const GoogleCloudRetailV2alphaSearchRequestPersonalizationSpecResponse({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory GoogleCloudRetailV2alphaSearchRequestPersonalizationSpecResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRetailV2alphaSearchRequestPersonalizationSpecResponse(
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}

