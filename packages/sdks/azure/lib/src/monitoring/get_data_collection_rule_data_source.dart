// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_collection_rule_data_source_data_import.dart';
import 'get_data_collection_rule_data_source_extension.dart';
import 'get_data_collection_rule_data_source_iis_log.dart';
import 'get_data_collection_rule_data_source_log_file.dart';
import 'get_data_collection_rule_data_source_performance_counter.dart';
import 'get_data_collection_rule_data_source_platform_telemetry.dart';
import 'get_data_collection_rule_data_source_prometheus_forwarder.dart';
import 'get_data_collection_rule_data_source_syslog.dart';
import 'get_data_collection_rule_data_source_windows_event_log.dart';
import 'get_data_collection_rule_data_source_windows_firewall_log.dart';

class GetDataCollectionRuleDataSource {
  /// A `data_import` block as defined above.
  final pulumi.Input<List<GetDataCollectionRuleDataSourceDataImport>> dataImports;
  /// One or more `extension` blocks as defined below.
  final pulumi.Input<List<GetDataCollectionRuleDataSourceExtension>> extensions;
  /// One or more `iis_log` blocks as defined below.
  final pulumi.Input<List<GetDataCollectionRuleDataSourceIisLog>> iisLogs;
  /// One or more `log_file` blocks as defined below.
  final pulumi.Input<List<GetDataCollectionRuleDataSourceLogFile>>? logFiles;
  /// One or more `performance_counter` blocks as defined below.
  final pulumi.Input<List<GetDataCollectionRuleDataSourcePerformanceCounter>> performanceCounters;
  /// One or more `platform_telemetry` blocks as defined below.
  final pulumi.Input<List<GetDataCollectionRuleDataSourcePlatformTelemetry>>? platformTelemetries;
  /// One or more `prometheus_forwarder` blocks as defined below.
  final pulumi.Input<List<GetDataCollectionRuleDataSourcePrometheusForwarder>> prometheusForwarders;
  /// One or more `syslog` blocks as defined below.
  final pulumi.Input<List<GetDataCollectionRuleDataSourceSyslog>> syslogs;
  /// One or more `windows_event_log` blocks as defined below.
  final pulumi.Input<List<GetDataCollectionRuleDataSourceWindowsEventLog>> windowsEventLogs;
  /// One or more `windows_firewall_log` blocks as defined below.
  final pulumi.Input<List<GetDataCollectionRuleDataSourceWindowsFirewallLog>> windowsFirewallLogs;

  /// Creates a new [GetDataCollectionRuleDataSource].
  /// [dataImports] A `data_import` block as defined above.
  /// [extensions] One or more `extension` blocks as defined below.
  /// [iisLogs] One or more `iis_log` blocks as defined below.
  /// [logFiles] One or more `log_file` blocks as defined below.
  /// [performanceCounters] One or more `performance_counter` blocks as defined below.
  /// [platformTelemetries] One or more `platform_telemetry` blocks as defined below.
  /// [prometheusForwarders] One or more `prometheus_forwarder` blocks as defined below.
  /// [syslogs] One or more `syslog` blocks as defined below.
  /// [windowsEventLogs] One or more `windows_event_log` blocks as defined below.
  /// [windowsFirewallLogs] One or more `windows_firewall_log` blocks as defined below.
  GetDataCollectionRuleDataSource({
    required this.dataImports,
    required this.extensions,
    required this.iisLogs,
    this.logFiles,
    required this.performanceCounters,
    this.platformTelemetries,
    required this.prometheusForwarders,
    required this.syslogs,
    required this.windowsEventLogs,
    required this.windowsFirewallLogs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataImports': pulumi.Input.mapInputValue<List<GetDataCollectionRuleDataSourceDataImport>, List<Map<String, dynamic>>>(dataImports, (value) => pulumi.Input.encodeList<GetDataCollectionRuleDataSourceDataImport, Map<String, dynamic>>(value, (value) => value.toMap())),
      'extensions': pulumi.Input.mapInputValue<List<GetDataCollectionRuleDataSourceExtension>, List<Map<String, dynamic>>>(extensions, (value) => pulumi.Input.encodeList<GetDataCollectionRuleDataSourceExtension, Map<String, dynamic>>(value, (value) => value.toMap())),
      'iisLogs': pulumi.Input.mapInputValue<List<GetDataCollectionRuleDataSourceIisLog>, List<Map<String, dynamic>>>(iisLogs, (value) => pulumi.Input.encodeList<GetDataCollectionRuleDataSourceIisLog, Map<String, dynamic>>(value, (value) => value.toMap())),
      'logFiles': ?pulumi.Input.mapOptionalInputValue<List<GetDataCollectionRuleDataSourceLogFile>, List<Map<String, dynamic>>>(logFiles, (value) => pulumi.Input.encodeList<GetDataCollectionRuleDataSourceLogFile, Map<String, dynamic>>(value, (value) => value.toMap())),
      'performanceCounters': pulumi.Input.mapInputValue<List<GetDataCollectionRuleDataSourcePerformanceCounter>, List<Map<String, dynamic>>>(performanceCounters, (value) => pulumi.Input.encodeList<GetDataCollectionRuleDataSourcePerformanceCounter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'platformTelemetries': ?pulumi.Input.mapOptionalInputValue<List<GetDataCollectionRuleDataSourcePlatformTelemetry>, List<Map<String, dynamic>>>(platformTelemetries, (value) => pulumi.Input.encodeList<GetDataCollectionRuleDataSourcePlatformTelemetry, Map<String, dynamic>>(value, (value) => value.toMap())),
      'prometheusForwarders': pulumi.Input.mapInputValue<List<GetDataCollectionRuleDataSourcePrometheusForwarder>, List<Map<String, dynamic>>>(prometheusForwarders, (value) => pulumi.Input.encodeList<GetDataCollectionRuleDataSourcePrometheusForwarder, Map<String, dynamic>>(value, (value) => value.toMap())),
      'syslogs': pulumi.Input.mapInputValue<List<GetDataCollectionRuleDataSourceSyslog>, List<Map<String, dynamic>>>(syslogs, (value) => pulumi.Input.encodeList<GetDataCollectionRuleDataSourceSyslog, Map<String, dynamic>>(value, (value) => value.toMap())),
      'windowsEventLogs': pulumi.Input.mapInputValue<List<GetDataCollectionRuleDataSourceWindowsEventLog>, List<Map<String, dynamic>>>(windowsEventLogs, (value) => pulumi.Input.encodeList<GetDataCollectionRuleDataSourceWindowsEventLog, Map<String, dynamic>>(value, (value) => value.toMap())),
      'windowsFirewallLogs': pulumi.Input.mapInputValue<List<GetDataCollectionRuleDataSourceWindowsFirewallLog>, List<Map<String, dynamic>>>(windowsFirewallLogs, (value) => pulumi.Input.encodeList<GetDataCollectionRuleDataSourceWindowsFirewallLog, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetDataCollectionRuleDataSource.fromMap(Map<String, dynamic> map) {
    return GetDataCollectionRuleDataSource(
      dataImports: (pulumi.Input.decodeList<GetDataCollectionRuleDataSourceDataImport>(map['dataImports'], (value) => GetDataCollectionRuleDataSourceDataImport.fromMap((value as Map).cast<String, dynamic>()))).input(),
      extensions: (pulumi.Input.decodeList<GetDataCollectionRuleDataSourceExtension>(map['extensions'], (value) => GetDataCollectionRuleDataSourceExtension.fromMap((value as Map).cast<String, dynamic>()))).input(),
      iisLogs: (pulumi.Input.decodeList<GetDataCollectionRuleDataSourceIisLog>(map['iisLogs'], (value) => GetDataCollectionRuleDataSourceIisLog.fromMap((value as Map).cast<String, dynamic>()))).input(),
      logFiles: map['logFiles'] == null ? null : (pulumi.Input.decodeList<GetDataCollectionRuleDataSourceLogFile>(map['logFiles']!, (value) => GetDataCollectionRuleDataSourceLogFile.fromMap((value as Map).cast<String, dynamic>()))).input(),
      performanceCounters: (pulumi.Input.decodeList<GetDataCollectionRuleDataSourcePerformanceCounter>(map['performanceCounters'], (value) => GetDataCollectionRuleDataSourcePerformanceCounter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      platformTelemetries: map['platformTelemetries'] == null ? null : (pulumi.Input.decodeList<GetDataCollectionRuleDataSourcePlatformTelemetry>(map['platformTelemetries']!, (value) => GetDataCollectionRuleDataSourcePlatformTelemetry.fromMap((value as Map).cast<String, dynamic>()))).input(),
      prometheusForwarders: (pulumi.Input.decodeList<GetDataCollectionRuleDataSourcePrometheusForwarder>(map['prometheusForwarders'], (value) => GetDataCollectionRuleDataSourcePrometheusForwarder.fromMap((value as Map).cast<String, dynamic>()))).input(),
      syslogs: (pulumi.Input.decodeList<GetDataCollectionRuleDataSourceSyslog>(map['syslogs'], (value) => GetDataCollectionRuleDataSourceSyslog.fromMap((value as Map).cast<String, dynamic>()))).input(),
      windowsEventLogs: (pulumi.Input.decodeList<GetDataCollectionRuleDataSourceWindowsEventLog>(map['windowsEventLogs'], (value) => GetDataCollectionRuleDataSourceWindowsEventLog.fromMap((value as Map).cast<String, dynamic>()))).input(),
      windowsFirewallLogs: (pulumi.Input.decodeList<GetDataCollectionRuleDataSourceWindowsFirewallLog>(map['windowsFirewallLogs'], (value) => GetDataCollectionRuleDataSourceWindowsFirewallLog.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

