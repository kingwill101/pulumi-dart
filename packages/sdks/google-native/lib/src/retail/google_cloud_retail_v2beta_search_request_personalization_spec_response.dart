// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The specification for personalization.
class GoogleCloudRetailV2betaSearchRequestPersonalizationSpecResponse {
  /// Defaults to Mode.AUTO.
  final pulumi.Input<String> mode;

  /// Creates a new [GoogleCloudRetailV2betaSearchRequestPersonalizationSpecResponse].
  /// [mode] Defaults to Mode.AUTO.
  const GoogleCloudRetailV2betaSearchRequestPersonalizationSpecResponse({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory GoogleCloudRetailV2betaSearchRequestPersonalizationSpecResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRetailV2betaSearchRequestPersonalizationSpecResponse(
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}

