// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deidentify_config_response.dart';

/// Contains configuration for streaming de-identified FHIR export.
class DeidentifiedStoreDestinationResponse {
  /// The configuration to use when de-identifying resources that are added to this store.
  final pulumi.Input<DeidentifyConfigResponse> config;
  /// The full resource name of a Cloud Healthcare FHIR store, for example, `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/fhirStores/{fhir_store_id}`.
  final pulumi.Input<String> store;

  /// Creates a new [DeidentifiedStoreDestinationResponse].
  /// [config] The configuration to use when de-identifying resources that are added to this store.
  /// [store] The full resource name of a Cloud Healthcare FHIR store, for example, `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/fhirStores/{fhir_store_id}`.
  DeidentifiedStoreDestinationResponse({
    required this.config,
    required this.store,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': pulumi.Input.mapInputValue<DeidentifyConfigResponse, Map<String, dynamic>>(config, (value) => value.toMap()),
      'store': store,
    };
  }

  factory DeidentifiedStoreDestinationResponse.fromMap(Map<String, dynamic> map) {
    return DeidentifiedStoreDestinationResponse(
      config: pulumi.Input.fromValue(DeidentifyConfigResponse.fromMap((map['config']! as Map).cast<String, dynamic>())),
      store: pulumi.Input.fromValue(map['store'] as String),
    );
  }
}

