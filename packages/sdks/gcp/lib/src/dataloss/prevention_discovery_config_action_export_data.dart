// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_discovery_config_action_export_data_profile_table.dart';

class PreventionDiscoveryConfigActionExportData {
  /// Store all table and column profiles in an existing table or a new table in an existing dataset. Each re-generation will result in a new row in BigQuery
  /// Structure is documented below.
  final pulumi.Input<PreventionDiscoveryConfigActionExportDataProfileTable>? profileTable;

  /// Creates a new [PreventionDiscoveryConfigActionExportData].
  /// [profileTable] Store all table and column profiles in an existing table or a new table in an existing dataset. Each re-generation will result in a new row in BigQuery
  PreventionDiscoveryConfigActionExportData({
    this.profileTable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'profileTable': ?pulumi.Input.mapOptionalInputValue<PreventionDiscoveryConfigActionExportDataProfileTable, Map<String, dynamic>>(profileTable, (value) => value.toMap()),
    };
  }

  factory PreventionDiscoveryConfigActionExportData.fromMap(Map<String, dynamic> map) {
    return PreventionDiscoveryConfigActionExportData(
      profileTable: (() { final guardedValue = map['profileTable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionDiscoveryConfigActionExportDataProfileTable.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

