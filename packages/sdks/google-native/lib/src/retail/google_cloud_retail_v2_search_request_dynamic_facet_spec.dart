// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_retail_v2_search_request_dynamic_facet_spec_mode.dart';

/// The specifications of dynamically generated facets.
class GoogleCloudRetailV2SearchRequestDynamicFacetSpec {
  /// Mode of the DynamicFacet feature. Defaults to Mode.DISABLED if it's unset.
  final pulumi.Input<GoogleCloudRetailV2SearchRequestDynamicFacetSpecMode>? mode;

  /// Creates a new [GoogleCloudRetailV2SearchRequestDynamicFacetSpec].
  /// [mode] Mode of the DynamicFacet feature. Defaults to Mode.DISABLED if it's unset.
  GoogleCloudRetailV2SearchRequestDynamicFacetSpec({
    this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?pulumi.Input.mapOptionalInputValue<GoogleCloudRetailV2SearchRequestDynamicFacetSpecMode, String>(mode, (value) => value.wireValue),
    };
  }

  factory GoogleCloudRetailV2SearchRequestDynamicFacetSpec.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRetailV2SearchRequestDynamicFacetSpec(
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudRetailV2SearchRequestDynamicFacetSpecMode.fromValue(guardedValue as String)); })(),
    );
  }
}

