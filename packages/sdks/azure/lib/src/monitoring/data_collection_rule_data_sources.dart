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
  /// A `dataImport` block as defined above.
  final pulumi.Input<DataCollectionRuleDataSourcesDataImport>? dataImport;
  /// One or more `extension` blocks as defined below.
  final pulumi.Input<List<DataCollectionRuleDataSourcesExtension>>? extensions;
  /// One or more `iisLog` blocks as defined below.
  final pulumi.Input<List<DataCollectionRuleDataSourcesIisLog>>? iisLogs;
  /// One or more `logFile` blocks as defined below.
  final pulumi.Input<List<DataCollectionRuleDataSourcesLogFile>>? logFiles;
  /// One or more `performanceCounter` blocks as defined below.
  final pulumi.Input<List<DataCollectionRuleDataSourcesPerformanceCounter>>? performanceCounters;
  /// One or more `platformTelemetry` blocks as defined below.
  final pulumi.Input<List<DataCollectionRuleDataSourcesPlatformTelemetry>>? platformTelemetries;
  /// One or more `prometheusForwarder` blocks as defined below.
  final pulumi.Input<List<DataCollectionRuleDataSourcesPrometheusForwarder>>? prometheusForwarders;
  /// One or more `syslog` blocks as defined below.
  final pulumi.Input<List<DataCollectionRuleDataSourcesSyslog>>? syslogs;
  /// One or more `windowsEventLog` blocks as defined below.
  final pulumi.Input<List<DataCollectionRuleDataSourcesWindowsEventLog>>? windowsEventLogs;
  /// One or more `windowsFirewallLog` blocks as defined below.
  final pulumi.Input<List<DataCollectionRuleDataSourcesWindowsFirewallLog>>? windowsFirewallLogs;

  /// Creates a new [DataCollectionRuleDataSources].
  /// [dataImport] A `dataImport` block as defined above.
  /// [extensions] One or more `extension` blocks as defined below.
  /// [iisLogs] One or more `iisLog` blocks as defined below.
  /// [logFiles] One or more `logFile` blocks as defined below.
  /// [performanceCounters] One or more `performanceCounter` blocks as defined below.
  /// [platformTelemetries] One or more `platformTelemetry` blocks as defined below.
  /// [prometheusForwarders] One or more `prometheusForwarder` blocks as defined below.
  /// [syslogs] One or more `syslog` blocks as defined below.
  /// [windowsEventLogs] One or more `windowsEventLog` blocks as defined below.
  /// [windowsFirewallLogs] One or more `windowsFirewallLog` blocks as defined below.
  const DataCollectionRuleDataSources({
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
      dataImport: (() { final guardedValue = map['dataImport']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataCollectionRuleDataSourcesDataImport.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      extensions: (() { final guardedValue = map['extensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataCollectionRuleDataSourcesExtension>(guardedValue, (value) => DataCollectionRuleDataSourcesExtension.fromMap((value as Map).cast<String, dynamic>()))); })(),
      iisLogs: (() { final guardedValue = map['iisLogs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataCollectionRuleDataSourcesIisLog>(guardedValue, (value) => DataCollectionRuleDataSourcesIisLog.fromMap((value as Map).cast<String, dynamic>()))); })(),
      logFiles: (() { final guardedValue = map['logFiles']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataCollectionRuleDataSourcesLogFile>(guardedValue, (value) => DataCollectionRuleDataSourcesLogFile.fromMap((value as Map).cast<String, dynamic>()))); })(),
      performanceCounters: (() { final guardedValue = map['performanceCounters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataCollectionRuleDataSourcesPerformanceCounter>(guardedValue, (value) => DataCollectionRuleDataSourcesPerformanceCounter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      platformTelemetries: (() { final guardedValue = map['platformTelemetries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataCollectionRuleDataSourcesPlatformTelemetry>(guardedValue, (value) => DataCollectionRuleDataSourcesPlatformTelemetry.fromMap((value as Map).cast<String, dynamic>()))); })(),
      prometheusForwarders: (() { final guardedValue = map['prometheusForwarders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataCollectionRuleDataSourcesPrometheusForwarder>(guardedValue, (value) => DataCollectionRuleDataSourcesPrometheusForwarder.fromMap((value as Map).cast<String, dynamic>()))); })(),
      syslogs: (() { final guardedValue = map['syslogs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataCollectionRuleDataSourcesSyslog>(guardedValue, (value) => DataCollectionRuleDataSourcesSyslog.fromMap((value as Map).cast<String, dynamic>()))); })(),
      windowsEventLogs: (() { final guardedValue = map['windowsEventLogs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataCollectionRuleDataSourcesWindowsEventLog>(guardedValue, (value) => DataCollectionRuleDataSourcesWindowsEventLog.fromMap((value as Map).cast<String, dynamic>()))); })(),
      windowsFirewallLogs: (() { final guardedValue = map['windowsFirewallLogs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataCollectionRuleDataSourcesWindowsFirewallLog>(guardedValue, (value) => DataCollectionRuleDataSourcesWindowsFirewallLog.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
