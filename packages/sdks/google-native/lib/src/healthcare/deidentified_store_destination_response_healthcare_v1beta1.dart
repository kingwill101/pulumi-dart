// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deidentify_config_response_healthcare_v1beta1.dart';

/// Contains configuration for streaming de-identified FHIR export.
class DeidentifiedStoreDestinationResponseHealthcareV1beta1 {
  /// The configuration to use when de-identifying resources that are added to this store.
  final pulumi.Input<DeidentifyConfigResponseHealthcareV1beta1> config;

  /// The full resource name of a Cloud Healthcare FHIR store, for example, `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/fhirStores/{fhir_store_id}`.
  final pulumi.Input<String> store;

  /// Creates a new [DeidentifiedStoreDestinationResponseHealthcareV1beta1].
  /// [config] The configuration to use when de-identifying resources that are added to this store.
  /// [store] The full resource name of a Cloud Healthcare FHIR store, for example, `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/fhirStores/{fhir_store_id}`.
  DeidentifiedStoreDestinationResponseHealthcareV1beta1({
    required this.config,
    required this.store,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config':
          pulumi.Input.mapInputValue<
            DeidentifyConfigResponseHealthcareV1beta1,
            Map<String, dynamic>
          >(config, (value) => value.toMap()),
      'store': store,
    };
  }

  factory DeidentifiedStoreDestinationResponseHealthcareV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return DeidentifiedStoreDestinationResponseHealthcareV1beta1(
      config: pulumi.Input.fromValue(
        DeidentifyConfigResponseHealthcareV1beta1.fromMap(
          (map['config']! as Map).cast<String, dynamic>(),
        ),
      ),
      store: pulumi.Input.fromValue(map['store'] as String),
    );
  }
}
