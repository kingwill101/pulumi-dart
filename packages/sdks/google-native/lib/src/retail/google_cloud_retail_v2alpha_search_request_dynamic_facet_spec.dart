// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_retail_v2alpha_search_request_dynamic_facet_spec_mode.dart';

/// The specifications of dynamically generated facets.
class GoogleCloudRetailV2alphaSearchRequestDynamicFacetSpec {
  /// Mode of the DynamicFacet feature. Defaults to Mode.DISABLED if it's unset.
  final pulumi.Input<GoogleCloudRetailV2alphaSearchRequestDynamicFacetSpecMode>? mode;

  /// Creates a new [GoogleCloudRetailV2alphaSearchRequestDynamicFacetSpec].
  /// [mode] Mode of the DynamicFacet feature. Defaults to Mode.DISABLED if it's unset.
  const GoogleCloudRetailV2alphaSearchRequestDynamicFacetSpec({
    this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?pulumi.Input.mapOptionalInputValue<GoogleCloudRetailV2alphaSearchRequestDynamicFacetSpecMode, String>(mode, (value) => value.wireValue),
    };
  }

  factory GoogleCloudRetailV2alphaSearchRequestDynamicFacetSpec.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRetailV2alphaSearchRequestDynamicFacetSpec(
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudRetailV2alphaSearchRequestDynamicFacetSpecMode.fromValue(guardedValue as String)); })(),
    );
  }
}

