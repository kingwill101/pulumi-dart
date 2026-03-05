// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'datascan_data_discovery_spec_bigquery_publishing_config.dart';
import 'datascan_data_discovery_spec_storage_config.dart';

class DatascanDataDiscoverySpec {
  /// Configuration for metadata publishing.
  /// Structure is documented below.
  final pulumi.Input<DatascanDataDiscoverySpecBigqueryPublishingConfig>? bigqueryPublishingConfig;
  /// Configurations related to Cloud Storage as the data source.
  /// Structure is documented below.
  final pulumi.Input<DatascanDataDiscoverySpecStorageConfig>? storageConfig;

  /// Creates a new [DatascanDataDiscoverySpec].
  /// [bigqueryPublishingConfig] Configuration for metadata publishing.
  /// [storageConfig] Configurations related to Cloud Storage as the data source.
  DatascanDataDiscoverySpec({
    this.bigqueryPublishingConfig,
    this.storageConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigqueryPublishingConfig': ?pulumi.Input.mapOptionalInputValue<DatascanDataDiscoverySpecBigqueryPublishingConfig, Map<String, dynamic>>(bigqueryPublishingConfig, (value) => value.toMap()),
      'storageConfig': ?pulumi.Input.mapOptionalInputValue<DatascanDataDiscoverySpecStorageConfig, Map<String, dynamic>>(storageConfig, (value) => value.toMap()),
    };
  }

  factory DatascanDataDiscoverySpec.fromMap(Map<String, dynamic> map) {
    return DatascanDataDiscoverySpec(
      bigqueryPublishingConfig: (() { final guardedValue = map['bigqueryPublishingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatascanDataDiscoverySpecBigqueryPublishingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storageConfig: (() { final guardedValue = map['storageConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatascanDataDiscoverySpecStorageConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

