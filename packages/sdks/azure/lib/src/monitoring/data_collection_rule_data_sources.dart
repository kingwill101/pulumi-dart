// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_collection_rule_data_sources_data_import.dart';
import 'data_collection_rule_data_sources_extension.dart';
import 'data_collection_rule_data_sources_iis_log.dart';
import 'data_collection_rule_data_sources_log_file.dart';
import 'data_collection_rule_data_sources_performance_counter.dart';
import 'data_collection_rule_data_sources_platform_telemetry.dart';
import 'data_collection_rule_data_sources_prometheus_forwarder.dart';
import 'data_collection_rule_data_sources_syslog.dart';
import 'data_collection_rule_data_sources_windows_event_log.dart';
import 'data_collection_rule_data_sources_windows_firewall_log.dart';

class DataCollectionRuleDataSources {
  /// A `data_import` block as defined above.
  final pulumi.Input<DataCollectionRuleDataSourcesDataImport>? dataImport;
  /// One or more `extension` blocks as defined below.
  final pulumi.Input<List<DataCollectionRuleDataSourcesExtension>>? extensions;
  /// One or more `iis_log` blocks as defined below.
  final pulumi.Input<List<DataCollectionRuleDataSourcesIisLog>>? iisLogs;
  /// One or more `log_file` blocks as defined below.
  final pulumi.Input<List<DataCollectionRuleDataSourcesLogFile>>? logFiles;
  /// One or more `performance_counter` blocks as defined below.
  final pulumi.Input<List<DataCollectionRuleDataSourcesPerformanceCounter>>? performanceCounters;
  /// One or more `platform_telemetry` blocks as defined below.
  final pulumi.Input<List<DataCollectionRuleDataSourcesPlatformTelemetry>>? platformTelemetries;
  /// One or more `prometheus_forwarder` blocks as defined below.
  final pulumi.Input<List<DataCollectionRuleDataSourcesPrometheusForwarder>>? prometheusForwarders;
  /// One or more `syslog` blocks as defined below.
  final pulumi.Input<List<DataCollectionRuleDataSourcesSyslog>>? syslogs;
  /// One or more `windows_event_log` blocks as defined below.
  final pulumi.Input<List<DataCollectionRuleDataSourcesWindowsEventLog>>? windowsEventLogs;
  /// One or more `windows_firewall_log` blocks as defined below.
  final pulumi.Input<List<DataCollectionRuleDataSourcesWindowsFirewallLog>>? windowsFirewallLogs;

  /// Creates a new [DataCollectionRuleDataSources].
  /// [dataImport] A `data_import` block as defined above.
  /// [extensions] One or more `extension` blocks as defined below.
  /// [iisLogs] One or more `iis_log` blocks as defined below.
  /// [logFiles] One or more `log_file` blocks as defined below.
  /// [performanceCounters] One or more `performance_counter` blocks as defined below.
  /// [platformTelemetries] One or more `platform_telemetry` blocks as defined below.
  /// [prometheusForwarders] One or more `prometheus_forwarder` blocks as defined below.
  /// [syslogs] One or more `syslog` blocks as defined below.
  /// [windowsEventLogs] One or more `windows_event_log` blocks as defined below.
  /// [windowsFirewallLogs] One or more `windows_firewall_log` blocks as defined below.
  DataCollectionRuleDataSources({
    this.dataImport,
    this.extensions,
    this.iisLogs,
    this.logFiles,
    this.performanceCounters,
    this.platformTelemetries,
    this.prometheusForwarders,
    this.syslogs,
    this.windowsEventLogs,
    this.windowsFirewallLogs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataImport': ?pulumi.Input.mapOptionalInputValue<DataCollectionRuleDataSourcesDataImport, Map<String, dynamic>>(dataImport, (value) => value.toMap()),
      'extensions': ?pulumi.Input.mapOptionalInputValue<List<DataCollectionRuleDataSourcesExtension>, List<Map<String, dynamic>>>(extensions, (value) => pulumi.Input.encodeList<DataCollectionRuleDataSourcesExtension, Map<String, dynamic>>(value, (value) => value.toMap())),
      'iisLogs': ?pulumi.Input.mapOptionalInputValue<List<DataCollectionRuleDataSourcesIisLog>, List<Map<String, dynamic>>>(iisLogs, (value) => pulumi.Input.encodeList<DataCollectionRuleDataSourcesIisLog, Map<String, dynamic>>(value, (value) => value.toMap())),
      'logFiles': ?pulumi.Input.mapOptionalInputValue<List<DataCollectionRuleDataSourcesLogFile>, List<Map<String, dynamic>>>(logFiles, (value) => pulumi.Input.encodeList<DataCollectionRuleDataSourcesLogFile, Map<String, dynamic>>(value, (value) => value.toMap())),
      'performanceCounters': ?pulumi.Input.mapOptionalInputValue<List<DataCollectionRuleDataSourcesPerformanceCounter>, List<Map<String, dynamic>>>(performanceCounters, (value) => pulumi.Input.encodeList<DataCollectionRuleDataSourcesPerformanceCounter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'platformTelemetries': ?pulumi.Input.mapOptionalInputValue<List<DataCollectionRuleDataSourcesPlatformTelemetry>, List<Map<String, dynamic>>>(platformTelemetries, (value) => pulumi.Input.encodeList<DataCollectionRuleDataSourcesPlatformTelemetry, Map<String, dynamic>>(value, (value) => value.toMap())),
      'prometheusForwarders': ?pulumi.Input.mapOptionalInputValue<List<DataCollectionRuleDataSourcesPrometheusForwarder>, List<Map<String, dynamic>>>(prometheusForwarders, (value) => pulumi.Input.encodeList<DataCollectionRuleDataSourcesPrometheusForwarder, Map<String, dynamic>>(value, (value) => value.toMap())),
      'syslogs': ?pulumi.Input.mapOptionalInputValue<List<DataCollectionRuleDataSourcesSyslog>, List<Map<String, dynamic>>>(syslogs, (value) => pulumi.Input.encodeList<DataCollectionRuleDataSourcesSyslog, Map<String, dynamic>>(value, (value) => value.toMap())),
      'windowsEventLogs': ?pulumi.Input.mapOptionalInputValue<List<DataCollectionRuleDataSourcesWindowsEventLog>, List<Map<String, dynamic>>>(windowsEventLogs, (value) => pulumi.Input.encodeList<DataCollectionRuleDataSourcesWindowsEventLog, Map<String, dynamic>>(value, (value) => value.toMap())),
      'windowsFirewallLogs': ?pulumi.Input.mapOptionalInputValue<List<DataCollectionRuleDataSourcesWindowsFirewallLog>, List<Map<String, dynamic>>>(windowsFirewallLogs, (value) => pulumi.Input.encodeList<DataCollectionRuleDataSourcesWindowsFirewallLog, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DataCollectionRuleDataSources.fromMap(Map<String, dynamic> map) {
    return DataCollectionRuleDataSources(
      dataImport: map['dataImport'] == null ? null : (DataCollectionRuleDataSourcesDataImport.fromMap((map['dataImport'] as Map).cast<String, dynamic>())).input(),
      extensions: map['extensions'] == null ? null : (pulumi.Input.decodeList<DataCollectionRuleDataSourcesExtension>(map['extensions'], (value) => DataCollectionRuleDataSourcesExtension.fromMap((value as Map).cast<String, dynamic>()))).input(),
      iisLogs: map['iisLogs'] == null ? null : (pulumi.Input.decodeList<DataCollectionRuleDataSourcesIisLog>(map['iisLogs'], (value) => DataCollectionRuleDataSourcesIisLog.fromMap((value as Map).cast<String, dynamic>()))).input(),
      logFiles: map['logFiles'] == null ? null : (pulumi.Input.decodeList<DataCollectionRuleDataSourcesLogFile>(map['logFiles'], (value) => DataCollectionRuleDataSourcesLogFile.fromMap((value as Map).cast<String, dynamic>()))).input(),
      performanceCounters: map['performanceCounters'] == null ? null : (pulumi.Input.decodeList<DataCollectionRuleDataSourcesPerformanceCounter>(map['performanceCounters'], (value) => DataCollectionRuleDataSourcesPerformanceCounter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      platformTelemetries: map['platformTelemetries'] == null ? null : (pulumi.Input.decodeList<DataCollectionRuleDataSourcesPlatformTelemetry>(map['platformTelemetries'], (value) => DataCollectionRuleDataSourcesPlatformTelemetry.fromMap((value as Map).cast<String, dynamic>()))).input(),
      prometheusForwarders: map['prometheusForwarders'] == null ? null : (pulumi.Input.decodeList<DataCollectionRuleDataSourcesPrometheusForwarder>(map['prometheusForwarders'], (value) => DataCollectionRuleDataSourcesPrometheusForwarder.fromMap((value as Map).cast<String, dynamic>()))).input(),
      syslogs: map['syslogs'] == null ? null : (pulumi.Input.decodeList<DataCollectionRuleDataSourcesSyslog>(map['syslogs'], (value) => DataCollectionRuleDataSourcesSyslog.fromMap((value as Map).cast<String, dynamic>()))).input(),
      windowsEventLogs: map['windowsEventLogs'] == null ? null : (pulumi.Input.decodeList<DataCollectionRuleDataSourcesWindowsEventLog>(map['windowsEventLogs'], (value) => DataCollectionRuleDataSourcesWindowsEventLog.fromMap((value as Map).cast<String, dynamic>()))).input(),
      windowsFirewallLogs: map['windowsFirewallLogs'] == null ? null : (pulumi.Input.decodeList<DataCollectionRuleDataSourcesWindowsFirewallLog>(map['windowsFirewallLogs'], (value) => DataCollectionRuleDataSourcesWindowsFirewallLog.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

