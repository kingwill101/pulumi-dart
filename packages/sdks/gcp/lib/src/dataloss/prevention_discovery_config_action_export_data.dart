// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_discovery_config_action_export_data_profile_table.dart';
import 'prevention_discovery_config_action_export_data_sample_findings_table.dart';

class PreventionDiscoveryConfigActionExportData {
  /// Store all table and column profiles in an existing table or a new table in an existing dataset. Each re-generation will result in a new row in BigQuery.
  /// The system will create a new dataset and table for you if none are are provided. The dataset will be named `sensitiveDataProtectionDiscovery`
  /// and table will be named `discoveryProfiles`. This table will be placed in the same project as the container project running the scan.
  /// Structure is documented below.
  final pulumi.Input<PreventionDiscoveryConfigActionExportDataProfileTable>? profileTable;
  /// Store sample findings in an existing table or a new table in an existing dataset. Each re-generation will result in a new row in BigQuery
  /// Structure is documented below.
  final pulumi.Input<PreventionDiscoveryConfigActionExportDataSampleFindingsTable>? sampleFindingsTable;

  /// Creates a new [PreventionDiscoveryConfigActionExportData].
  /// [profileTable] Store all table and column profiles in an existing table or a new table in an existing dataset. Each re-generation will result in a new row in BigQuery.
  /// [sampleFindingsTable] Store sample findings in an existing table or a new table in an existing dataset. Each re-generation will result in a new row in BigQuery
  const PreventionDiscoveryConfigActionExportData({
    this.profileTable,
    this.sampleFindingsTable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'profileTable': ?pulumi.Input.mapOptionalInputValue<PreventionDiscoveryConfigActionExportDataProfileTable, Map<String, dynamic>>(profileTable, (value) => value.toMap()),
      'sampleFindingsTable': ?pulumi.Input.mapOptionalInputValue<PreventionDiscoveryConfigActionExportDataSampleFindingsTable, Map<String, dynamic>>(sampleFindingsTable, (value) => value.toMap()),
    };
  }

  factory PreventionDiscoveryConfigActionExportData.fromMap(Map<String, dynamic> map) {
    return PreventionDiscoveryConfigActionExportData(
      profileTable: (() { final guardedValue = map['profileTable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionDiscoveryConfigActionExportDataProfileTable.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sampleFindingsTable: (() { final guardedValue = map['sampleFindingsTable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionDiscoveryConfigActionExportDataSampleFindingsTable.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
