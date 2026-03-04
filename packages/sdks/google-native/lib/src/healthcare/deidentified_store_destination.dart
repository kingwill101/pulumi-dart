// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deidentify_config.dart';

/// Contains configuration for streaming de-identified FHIR export.
class DeidentifiedStoreDestination {
  /// The configuration to use when de-identifying resources that are added to this store.
  final pulumi.Input<DeidentifyConfig>? config;

  /// The full resource name of a Cloud Healthcare FHIR store, for example, `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/fhirStores/{fhir_store_id}`.
  final pulumi.Input<String>? store;

  /// Creates a new [DeidentifiedStoreDestination].
  /// [config] The configuration to use when de-identifying resources that are added to this store.
  /// [store] The full resource name of a Cloud Healthcare FHIR store, for example, `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/fhirStores/{fhir_store_id}`.
  DeidentifiedStoreDestination({this.config, this.store});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config':
          ?pulumi.Input.mapOptionalInputValue<
            DeidentifyConfig,
            Map<String, dynamic>
          >(config, (value) => value.toMap()),
      'store': ?store,
    };
  }

  factory DeidentifiedStoreDestination.fromMap(Map<String, dynamic> map) {
    return DeidentifiedStoreDestination(
      config: (() {
        final guardedValue = map['config'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DeidentifyConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      store: (() {
        final guardedValue = map['store'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
