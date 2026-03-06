// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deidentify_config_healthcare_v1beta1.dart';

/// Contains configuration for streaming de-identified FHIR export.
class DeidentifiedStoreDestinationHealthcareV1beta1 {
  /// The configuration to use when de-identifying resources that are added to this store.
  final pulumi.Input<DeidentifyConfigHealthcareV1beta1>? config;
  /// The full resource name of a Cloud Healthcare FHIR store, for example, `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/fhirStores/{fhir_store_id}`.
  final pulumi.Input<String>? store;

  /// Creates a new [DeidentifiedStoreDestinationHealthcareV1beta1].
  /// [config] The configuration to use when de-identifying resources that are added to this store.
  /// [store] The full resource name of a Cloud Healthcare FHIR store, for example, `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/fhirStores/{fhir_store_id}`.
  const DeidentifiedStoreDestinationHealthcareV1beta1({
    this.config,
    this.store,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?pulumi.Input.mapOptionalInputValue<DeidentifyConfigHealthcareV1beta1, Map<String, dynamic>>(config, (value) => value.toMap()),
      'store': ?store,
    };
  }

  factory DeidentifiedStoreDestinationHealthcareV1beta1.fromMap(Map<String, dynamic> map) {
    return DeidentifiedStoreDestinationHealthcareV1beta1(
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeidentifyConfigHealthcareV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      store: (() { final guardedValue = map['store']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

