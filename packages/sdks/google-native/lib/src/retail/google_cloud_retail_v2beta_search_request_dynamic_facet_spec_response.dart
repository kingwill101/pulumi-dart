// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The specifications of dynamically generated facets.
class GoogleCloudRetailV2betaSearchRequestDynamicFacetSpecResponse {
  /// Mode of the DynamicFacet feature. Defaults to Mode.DISABLED if it's unset.
  final pulumi.Input<String> mode;

  /// Creates a new [GoogleCloudRetailV2betaSearchRequestDynamicFacetSpecResponse].
  /// [mode] Mode of the DynamicFacet feature. Defaults to Mode.DISABLED if it's unset.
  GoogleCloudRetailV2betaSearchRequestDynamicFacetSpecResponse({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory GoogleCloudRetailV2betaSearchRequestDynamicFacetSpecResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRetailV2betaSearchRequestDynamicFacetSpecResponse(
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}

