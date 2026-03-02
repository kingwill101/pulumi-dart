// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The specifications of dynamically generated facets.
class GoogleCloudRetailV2alphaSearchRequestDynamicFacetSpecResponse {
  /// Mode of the DynamicFacet feature. Defaults to Mode.DISABLED if it's unset.
  final pulumi.Input<String> mode;

  /// Creates a new [GoogleCloudRetailV2alphaSearchRequestDynamicFacetSpecResponse].
  /// [mode] Mode of the DynamicFacet feature. Defaults to Mode.DISABLED if it's unset.
  GoogleCloudRetailV2alphaSearchRequestDynamicFacetSpecResponse({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory GoogleCloudRetailV2alphaSearchRequestDynamicFacetSpecResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRetailV2alphaSearchRequestDynamicFacetSpecResponse(
      mode: (map['mode'] as String).input(),
    );
  }
}

