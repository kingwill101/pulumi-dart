// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_retail_v2beta_search_request_dynamic_facet_spec_mode.dart';

/// The specifications of dynamically generated facets.
class GoogleCloudRetailV2betaSearchRequestDynamicFacetSpec {
  /// Mode of the DynamicFacet feature. Defaults to Mode.DISABLED if it's unset.
  final pulumi.Input<GoogleCloudRetailV2betaSearchRequestDynamicFacetSpecMode>?
  mode;

  /// Creates a new [GoogleCloudRetailV2betaSearchRequestDynamicFacetSpec].
  /// [mode] Mode of the DynamicFacet feature. Defaults to Mode.DISABLED if it's unset.
  GoogleCloudRetailV2betaSearchRequestDynamicFacetSpec({this.mode});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudRetailV2betaSearchRequestDynamicFacetSpecMode,
            String
          >(mode, (value) => value.wireValue),
    };
  }

  factory GoogleCloudRetailV2betaSearchRequestDynamicFacetSpec.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudRetailV2betaSearchRequestDynamicFacetSpec(
      mode: (() {
        final guardedValue = map['mode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudRetailV2betaSearchRequestDynamicFacetSpecMode.fromValue(
            guardedValue as String,
          ),
        );
      })(),
    );
  }
}
