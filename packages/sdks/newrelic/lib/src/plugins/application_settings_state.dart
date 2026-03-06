// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_settings_error_collector.dart';
import 'application_settings_transaction_tracer.dart';

/// Input properties used for looking up and filtering ApplicationSettings resources.
class ApplicationSettingsState {
  /// The acceptable response time limit (Apdex threshold) for the application.
  final pulumi.Input<double>? appApdexThreshold;
  /// Dummy field to support backward compatibility of previous version.should be removed with next major version.
  final pulumi.Input<bool>? enableRealUserMonitoring;
  /// Enable or disable the collection of slowest database queries in your traces.
  final pulumi.Input<bool>? enableSlowSql;
  /// Enable or disable the collection of thread profiling data.
  final pulumi.Input<bool>? enableThreadProfiler;
  /// Dummy field to support backward compatibility of previous version.should be removed with next major version.
  final pulumi.Input<double>? endUserApdexThreshold;
  /// Configuration block for error collection. Including this block enables the error collector. The following arguments are supported:
  final pulumi.Input<List<ApplicationSettingsErrorCollector>>? errorCollectors;
  /// The GUID of the application in New Relic APM.
  ///
  /// &gt; **NOTE:** While the attribute `guid` is not mandatory at a schema level, it is recommended to use `guid` over `name`, as support for using `name` with this resource shall eventually be discontinued. Please see the note under `name` for more details.
  final pulumi.Input<String>? guid;
  final pulumi.Input<bool>? isImported;
  /// A custom name or alias you can give the application in New Relic APM.
  ///
  /// &gt; **NOTE:** &lt;b style="color:red;"&gt;Please refrain from using the deprecated attribute `name`&lt;/b&gt;with the resource `newrelic.plugins.ApplicationSettings` and use `guid` instead. For more information on the usage of `guid` against `name` and associated implications if the resource is upgraded from an older version of the New Relic Terraform Provider, please see the note in this section below.
  final pulumi.Input<String>? name;
  /// Configures the type of tracer used. Valid values are `CROSS_APPLICATION_TRACER`, `DISTRIBUTED_TRACING`, `NONE`, `OPT_OUT`.
  final pulumi.Input<String>? tracerType;
  /// Configuration block for transaction tracer. Providing this block enables transaction tracing. The following arguments are supported:
  final pulumi.Input<List<ApplicationSettingsTransactionTracer>>? transactionTracers;
  /// Enable or disable server side monitoring for the New Relic application.
  final pulumi.Input<bool>? useServerSideConfig;

  /// Creates a new [ApplicationSettingsState].
  /// [appApdexThreshold] The acceptable response time limit (Apdex threshold) for the application.
  /// [enableRealUserMonitoring] Dummy field to support backward compatibility of previous version.should be removed with next major version.
  /// [enableSlowSql] Enable or disable the collection of slowest database queries in your traces.
  /// [enableThreadProfiler] Enable or disable the collection of thread profiling data.
  /// [endUserApdexThreshold] Dummy field to support backward compatibility of previous version.should be removed with next major version.
  /// [errorCollectors] Configuration block for error collection. Including this block enables the error collector. The following arguments are supported:
  /// [guid] The GUID of the application in New Relic APM.
  /// [isImported] Optional.
  /// [name] A custom name or alias you can give the application in New Relic APM.
  /// [tracerType] Configures the type of tracer used. Valid values are `CROSS_APPLICATION_TRACER`, `DISTRIBUTED_TRACING`, `NONE`, `OPT_OUT`.
  /// [transactionTracers] Configuration block for transaction tracer. Providing this block enables transaction tracing. The following arguments are supported:
  /// [useServerSideConfig] Enable or disable server side monitoring for the New Relic application.
  const ApplicationSettingsState({
    this.appApdexThreshold,
    this.enableRealUserMonitoring,
    this.enableSlowSql,
    this.enableThreadProfiler,
    this.endUserApdexThreshold,
    this.errorCollectors,
    this.guid,
    this.isImported,
    this.name,
    this.tracerType,
    this.transactionTracers,
    this.useServerSideConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appApdexThreshold': ?appApdexThreshold,
      'enableRealUserMonitoring': ?enableRealUserMonitoring,
      'enableSlowSql': ?enableSlowSql,
      'enableThreadProfiler': ?enableThreadProfiler,
      'endUserApdexThreshold': ?endUserApdexThreshold,
      'errorCollectors': ?pulumi.Input.mapOptionalInputValue<List<ApplicationSettingsErrorCollector>, List<Map<String, dynamic>>>(errorCollectors, (value) => pulumi.Input.encodeList<ApplicationSettingsErrorCollector, Map<String, dynamic>>(value, (value) => value.toMap())),
      'guid': ?guid,
      'isImported': ?isImported,
      'name': ?name,
      'tracerType': ?tracerType,
      'transactionTracers': ?pulumi.Input.mapOptionalInputValue<List<ApplicationSettingsTransactionTracer>, List<Map<String, dynamic>>>(transactionTracers, (value) => pulumi.Input.encodeList<ApplicationSettingsTransactionTracer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'useServerSideConfig': ?useServerSideConfig,
    };
  }

  factory ApplicationSettingsState.fromMap(Map<String, dynamic> map) {
    return ApplicationSettingsState(
      appApdexThreshold: (() { final guardedValue = map['appApdexThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      enableRealUserMonitoring: (() { final guardedValue = map['enableRealUserMonitoring']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableSlowSql: (() { final guardedValue = map['enableSlowSql']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableThreadProfiler: (() { final guardedValue = map['enableThreadProfiler']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      endUserApdexThreshold: (() { final guardedValue = map['endUserApdexThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      errorCollectors: (() { final guardedValue = map['errorCollectors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationSettingsErrorCollector>(guardedValue, (value) => ApplicationSettingsErrorCollector.fromMap((value as Map).cast<String, dynamic>()))); })(),
      guid: (() { final guardedValue = map['guid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isImported: (() { final guardedValue = map['isImported']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tracerType: (() { final guardedValue = map['tracerType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transactionTracers: (() { final guardedValue = map['transactionTracers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationSettingsTransactionTracer>(guardedValue, (value) => ApplicationSettingsTransactionTracer.fromMap((value as Map).cast<String, dynamic>()))); })(),
      useServerSideConfig: (() { final guardedValue = map['useServerSideConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

