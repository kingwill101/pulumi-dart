// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'big_query_export_entity_graph_settings.dart';
import 'big_query_export_ioc_matches_settings.dart';
import 'big_query_export_rule_detections_settings.dart';
import 'big_query_export_udm_events_aggregates_settings.dart';
import 'big_query_export_udm_events_settings.dart';

/// Input properties used for looking up and filtering BigQueryExport resources.
class BigQueryExportState {
  /// The BigQueryExportPackage entitled for the Chronicle instance.
  /// Possible values are: `BIG_QUERY_EXPORT_PACKAGE_BYOBQ`, `BIG_QUERY_EXPORT_PACKAGE_ADVANCED`.
  final pulumi.Input<String>? bigQueryExportPackage;
  /// The export settings for a data source.
  /// Structure is documented below.
  final pulumi.Input<BigQueryExportEntityGraphSettings>? entityGraphSettings;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? instance;
  /// The export settings for a data source.
  /// Structure is documented below.
  final pulumi.Input<BigQueryExportIocMatchesSettings>? iocMatchesSettings;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? location;
  /// Identifier. The resource name of the BigQueryExport.
  /// Format:
  /// projects/{project}/locations/{location}/instances/{instance}/bigQueryExport
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Whether the BigQueryExport has been provisioned for the Chronicle instance.
  final pulumi.Input<bool>? provisioned;
  /// The export settings for a data source.
  /// Structure is documented below.
  final pulumi.Input<BigQueryExportRuleDetectionsSettings>? ruleDetectionsSettings;
  /// The export settings for a data source.
  /// Structure is documented below.
  final pulumi.Input<BigQueryExportUdmEventsAggregatesSettings>? udmEventsAggregatesSettings;
  /// The export settings for a data source.
  /// Structure is documented below.
  final pulumi.Input<BigQueryExportUdmEventsSettings>? udmEventsSettings;

  /// Creates a new [BigQueryExportState].
  /// [bigQueryExportPackage] The BigQueryExportPackage entitled for the Chronicle instance.
  /// [entityGraphSettings] The export settings for a data source.
  /// [instance] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [iocMatchesSettings] The export settings for a data source.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [name] Identifier. The resource name of the BigQueryExport.
  /// [project] The ID of the project in which the resource belongs.
  /// [provisioned] Whether the BigQueryExport has been provisioned for the Chronicle instance.
  /// [ruleDetectionsSettings] The export settings for a data source.
  /// [udmEventsAggregatesSettings] The export settings for a data source.
  /// [udmEventsSettings] The export settings for a data source.
  const BigQueryExportState({
    this.bigQueryExportPackage,
    this.entityGraphSettings,
    this.instance,
    this.iocMatchesSettings,
    this.location,
    this.name,
    this.project,
    this.provisioned,
    this.ruleDetectionsSettings,
    this.udmEventsAggregatesSettings,
    this.udmEventsSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigQueryExportPackage': ?bigQueryExportPackage,
      'entityGraphSettings': ?pulumi.Input.mapOptionalInputValue<BigQueryExportEntityGraphSettings, Map<String, dynamic>>(entityGraphSettings, (value) => value.toMap()),
      'instance': ?instance,
      'iocMatchesSettings': ?pulumi.Input.mapOptionalInputValue<BigQueryExportIocMatchesSettings, Map<String, dynamic>>(iocMatchesSettings, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'provisioned': ?provisioned,
      'ruleDetectionsSettings': ?pulumi.Input.mapOptionalInputValue<BigQueryExportRuleDetectionsSettings, Map<String, dynamic>>(ruleDetectionsSettings, (value) => value.toMap()),
      'udmEventsAggregatesSettings': ?pulumi.Input.mapOptionalInputValue<BigQueryExportUdmEventsAggregatesSettings, Map<String, dynamic>>(udmEventsAggregatesSettings, (value) => value.toMap()),
      'udmEventsSettings': ?pulumi.Input.mapOptionalInputValue<BigQueryExportUdmEventsSettings, Map<String, dynamic>>(udmEventsSettings, (value) => value.toMap()),
    };
  }

  factory BigQueryExportState.fromMap(Map<String, dynamic> map) {
    return BigQueryExportState(
      bigQueryExportPackage: (() { final guardedValue = map['bigQueryExportPackage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      entityGraphSettings: (() { final guardedValue = map['entityGraphSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BigQueryExportEntityGraphSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      instance: (() { final guardedValue = map['instance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      iocMatchesSettings: (() { final guardedValue = map['iocMatchesSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BigQueryExportIocMatchesSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioned: (() { final guardedValue = map['provisioned']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ruleDetectionsSettings: (() { final guardedValue = map['ruleDetectionsSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BigQueryExportRuleDetectionsSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      udmEventsAggregatesSettings: (() { final guardedValue = map['udmEventsAggregatesSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BigQueryExportUdmEventsAggregatesSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      udmEventsSettings: (() { final guardedValue = map['udmEventsSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BigQueryExportUdmEventsSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
