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
  /// > **NOTE:** While the attribute `guid` is not mandatory at a schema level, it is recommended to use `guid` over `name`, as support for using `name` with this resource shall eventually be discontinued. Please see the note under `name` for more details.
  final pulumi.Input<String>? guid;
  final pulumi.Input<bool>? isImported;
  /// A custom name or alias you can give the application in New Relic APM.
  ///
  /// > **NOTE:** <b style="color:red;">Please refrain from using the deprecated attribute `name`</b>with the resource `newrelic.plugins.ApplicationSettings` and use `guid` instead. For more information on the usage of `guid` against `name` and associated implications if the resource is upgraded from an older version of the New Relic Terraform Provider, please see the note in this section below.
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
  ApplicationSettingsState({
    pulumi.Output<double>? appApdexThreshold,
    pulumi.Output<bool>? enableRealUserMonitoring,
    pulumi.Output<bool>? enableSlowSql,
    pulumi.Output<bool>? enableThreadProfiler,
    pulumi.Output<double>? endUserApdexThreshold,
    pulumi.Output<List<ApplicationSettingsErrorCollector>>? errorCollectors,
    pulumi.Output<String>? guid,
    pulumi.Output<bool>? isImported,
    pulumi.Output<String>? name,
    pulumi.Output<String>? tracerType,
    pulumi.Output<List<ApplicationSettingsTransactionTracer>>? transactionTracers,
    pulumi.Output<bool>? useServerSideConfig,
  }) :
      appApdexThreshold = pulumi.Input.asOptionalInput<double>(appApdexThreshold),
      enableRealUserMonitoring = pulumi.Input.asOptionalInput<bool>(enableRealUserMonitoring),
      enableSlowSql = pulumi.Input.asOptionalInput<bool>(enableSlowSql),
      enableThreadProfiler = pulumi.Input.asOptionalInput<bool>(enableThreadProfiler),
      endUserApdexThreshold = pulumi.Input.asOptionalInput<double>(endUserApdexThreshold),
      errorCollectors = pulumi.Input.asOptionalInput<List<ApplicationSettingsErrorCollector>>(errorCollectors),
      guid = pulumi.Input.asOptionalInput<String>(guid),
      isImported = pulumi.Input.asOptionalInput<bool>(isImported),
      name = pulumi.Input.asOptionalInput<String>(name),
      tracerType = pulumi.Input.asOptionalInput<String>(tracerType),
      transactionTracers = pulumi.Input.asOptionalInput<List<ApplicationSettingsTransactionTracer>>(transactionTracers),
      useServerSideConfig = pulumi.Input.asOptionalInput<bool>(useServerSideConfig);

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
      appApdexThreshold: map['appApdexThreshold'] == null ? null : pulumi.Output.create<double>(map['appApdexThreshold'] as double),
      enableRealUserMonitoring: map['enableRealUserMonitoring'] == null ? null : pulumi.Output.create<bool>(map['enableRealUserMonitoring'] as bool),
      enableSlowSql: map['enableSlowSql'] == null ? null : pulumi.Output.create<bool>(map['enableSlowSql'] as bool),
      enableThreadProfiler: map['enableThreadProfiler'] == null ? null : pulumi.Output.create<bool>(map['enableThreadProfiler'] as bool),
      endUserApdexThreshold: map['endUserApdexThreshold'] == null ? null : pulumi.Output.create<double>(map['endUserApdexThreshold'] as double),
      errorCollectors: map['errorCollectors'] == null ? null : pulumi.Output.create<List<ApplicationSettingsErrorCollector>>(pulumi.Input.decodeList<ApplicationSettingsErrorCollector>(map['errorCollectors'], (value) => ApplicationSettingsErrorCollector.fromMap((value as Map).cast<String, dynamic>()))),
      guid: map['guid'] == null ? null : pulumi.Output.create<String>(map['guid'] as String),
      isImported: map['isImported'] == null ? null : pulumi.Output.create<bool>(map['isImported'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      tracerType: map['tracerType'] == null ? null : pulumi.Output.create<String>(map['tracerType'] as String),
      transactionTracers: map['transactionTracers'] == null ? null : pulumi.Output.create<List<ApplicationSettingsTransactionTracer>>(pulumi.Input.decodeList<ApplicationSettingsTransactionTracer>(map['transactionTracers'], (value) => ApplicationSettingsTransactionTracer.fromMap((value as Map).cast<String, dynamic>()))),
      useServerSideConfig: map['useServerSideConfig'] == null ? null : pulumi.Output.create<bool>(map['useServerSideConfig'] as bool),
    );
  }
}

