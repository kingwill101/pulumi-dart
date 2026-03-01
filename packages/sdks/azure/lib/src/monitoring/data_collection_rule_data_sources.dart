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
  final DataCollectionRuleDataSourcesDataImport? dataImport;
  /// One or more `extension` blocks as defined below.
  final List<DataCollectionRuleDataSourcesExtension>? extensions;
  /// One or more `iis_log` blocks as defined below.
  final List<DataCollectionRuleDataSourcesIisLog>? iisLogs;
  /// One or more `log_file` blocks as defined below.
  final List<DataCollectionRuleDataSourcesLogFile>? logFiles;
  /// One or more `performance_counter` blocks as defined below.
  final List<DataCollectionRuleDataSourcesPerformanceCounter>? performanceCounters;
  /// One or more `platform_telemetry` blocks as defined below.
  final List<DataCollectionRuleDataSourcesPlatformTelemetry>? platformTelemetries;
  /// One or more `prometheus_forwarder` blocks as defined below.
  final List<DataCollectionRuleDataSourcesPrometheusForwarder>? prometheusForwarders;
  /// One or more `syslog` blocks as defined below.
  final List<DataCollectionRuleDataSourcesSyslog>? syslogs;
  /// One or more `windows_event_log` blocks as defined below.
  final List<DataCollectionRuleDataSourcesWindowsEventLog>? windowsEventLogs;
  /// One or more `windows_firewall_log` blocks as defined below.
  final List<DataCollectionRuleDataSourcesWindowsFirewallLog>? windowsFirewallLogs;

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
      'dataImport': ?dataImport == null ? null : dataImport!.toMap(),
      'extensions': ?extensions == null ? null : pulumi.Input.encodeList<DataCollectionRuleDataSourcesExtension, Map<String, dynamic>>(extensions!, (value) => value.toMap()),
      'iisLogs': ?iisLogs == null ? null : pulumi.Input.encodeList<DataCollectionRuleDataSourcesIisLog, Map<String, dynamic>>(iisLogs!, (value) => value.toMap()),
      'logFiles': ?logFiles == null ? null : pulumi.Input.encodeList<DataCollectionRuleDataSourcesLogFile, Map<String, dynamic>>(logFiles!, (value) => value.toMap()),
      'performanceCounters': ?performanceCounters == null ? null : pulumi.Input.encodeList<DataCollectionRuleDataSourcesPerformanceCounter, Map<String, dynamic>>(performanceCounters!, (value) => value.toMap()),
      'platformTelemetries': ?platformTelemetries == null ? null : pulumi.Input.encodeList<DataCollectionRuleDataSourcesPlatformTelemetry, Map<String, dynamic>>(platformTelemetries!, (value) => value.toMap()),
      'prometheusForwarders': ?prometheusForwarders == null ? null : pulumi.Input.encodeList<DataCollectionRuleDataSourcesPrometheusForwarder, Map<String, dynamic>>(prometheusForwarders!, (value) => value.toMap()),
      'syslogs': ?syslogs == null ? null : pulumi.Input.encodeList<DataCollectionRuleDataSourcesSyslog, Map<String, dynamic>>(syslogs!, (value) => value.toMap()),
      'windowsEventLogs': ?windowsEventLogs == null ? null : pulumi.Input.encodeList<DataCollectionRuleDataSourcesWindowsEventLog, Map<String, dynamic>>(windowsEventLogs!, (value) => value.toMap()),
      'windowsFirewallLogs': ?windowsFirewallLogs == null ? null : pulumi.Input.encodeList<DataCollectionRuleDataSourcesWindowsFirewallLog, Map<String, dynamic>>(windowsFirewallLogs!, (value) => value.toMap()),
    };
  }

  factory DataCollectionRuleDataSources.fromMap(Map<String, dynamic> map) {
    return DataCollectionRuleDataSources(
      dataImport: map['dataImport'] == null ? null : DataCollectionRuleDataSourcesDataImport.fromMap((map['dataImport'] as Map).cast<String, dynamic>()),
      extensions: map['extensions'] == null ? null : pulumi.Input.decodeList<DataCollectionRuleDataSourcesExtension>(map['extensions'], (value) => DataCollectionRuleDataSourcesExtension.fromMap((value as Map).cast<String, dynamic>())),
      iisLogs: map['iisLogs'] == null ? null : pulumi.Input.decodeList<DataCollectionRuleDataSourcesIisLog>(map['iisLogs'], (value) => DataCollectionRuleDataSourcesIisLog.fromMap((value as Map).cast<String, dynamic>())),
      logFiles: map['logFiles'] == null ? null : pulumi.Input.decodeList<DataCollectionRuleDataSourcesLogFile>(map['logFiles'], (value) => DataCollectionRuleDataSourcesLogFile.fromMap((value as Map).cast<String, dynamic>())),
      performanceCounters: map['performanceCounters'] == null ? null : pulumi.Input.decodeList<DataCollectionRuleDataSourcesPerformanceCounter>(map['performanceCounters'], (value) => DataCollectionRuleDataSourcesPerformanceCounter.fromMap((value as Map).cast<String, dynamic>())),
      platformTelemetries: map['platformTelemetries'] == null ? null : pulumi.Input.decodeList<DataCollectionRuleDataSourcesPlatformTelemetry>(map['platformTelemetries'], (value) => DataCollectionRuleDataSourcesPlatformTelemetry.fromMap((value as Map).cast<String, dynamic>())),
      prometheusForwarders: map['prometheusForwarders'] == null ? null : pulumi.Input.decodeList<DataCollectionRuleDataSourcesPrometheusForwarder>(map['prometheusForwarders'], (value) => DataCollectionRuleDataSourcesPrometheusForwarder.fromMap((value as Map).cast<String, dynamic>())),
      syslogs: map['syslogs'] == null ? null : pulumi.Input.decodeList<DataCollectionRuleDataSourcesSyslog>(map['syslogs'], (value) => DataCollectionRuleDataSourcesSyslog.fromMap((value as Map).cast<String, dynamic>())),
      windowsEventLogs: map['windowsEventLogs'] == null ? null : pulumi.Input.decodeList<DataCollectionRuleDataSourcesWindowsEventLog>(map['windowsEventLogs'], (value) => DataCollectionRuleDataSourcesWindowsEventLog.fromMap((value as Map).cast<String, dynamic>())),
      windowsFirewallLogs: map['windowsFirewallLogs'] == null ? null : pulumi.Input.decodeList<DataCollectionRuleDataSourcesWindowsFirewallLog>(map['windowsFirewallLogs'], (value) => DataCollectionRuleDataSourcesWindowsFirewallLog.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

