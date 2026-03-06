// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The specifications of dynamically generated facets.
class GoogleCloudRetailV2SearchRequestDynamicFacetSpecResponse {
  /// Mode of the DynamicFacet feature. Defaults to Mode.DISABLED if it's unset.
  final pulumi.Input<String> mode;

  /// Creates a new [GoogleCloudRetailV2SearchRequestDynamicFacetSpecResponse].
  /// [mode] Mode of the DynamicFacet feature. Defaults to Mode.DISABLED if it's unset.
  const GoogleCloudRetailV2SearchRequestDynamicFacetSpecResponse({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory GoogleCloudRetailV2SearchRequestDynamicFacetSpecResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRetailV2SearchRequestDynamicFacetSpecResponse(
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}

