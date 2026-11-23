// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'routine_external_runtime_options_volume_mount.dart';

class RoutineExternalRuntimeOptions {
  /// Amount of CPU provisioned for a Python UDF container instance. For more
  /// information, see [Configure container limits for Python
  /// UDFs](https://cloud.google.com/bigquery/docs/user-defined-functions-python#configure-container-limits)
  final pulumi.Input<double?>? containerCpu;
  /// Amount of memory provisioned for a Python UDF container instance. Format:
  /// {number}{unit} where unit is one of "M", "G", "Mi" and "Gi" (e.g. 1G,
  /// 512Mi). If not specified, the default value is 512Mi. For more information,
  /// see [Configure container limits for Python
  /// UDFs](https://cloud.google.com/bigquery/docs/user-defined-functions-python#configure-container-limits)
  final pulumi.Input<String?>? containerMemory;
  /// Maximum number of concurrent requests per Python UDF container instance. For more
  /// information, see [Configure container limits for Python
  /// UDFs](https://cloud.google.com/bigquery/docs/user-defined-functions-python#configure-container-limits)
  final pulumi.Input<String?>? containerRequestConcurrency;
  /// Maximum number of rows in each batch sent to the external runtime. If
  /// absent or if 0, BigQuery dynamically decides the number of rows in a batch.
  final pulumi.Input<String?>? maxBatchingRows;
  /// Fully qualified name of the connection whose service account will be used
  /// to execute the code in the container. Format:
  /// `"projects/{project_id}/locations/{location_id}/connections/{connection_id}"`
  final pulumi.Input<String?>? runtimeConnection;
  /// Language runtime version. Example: `python-3.11`.
  final pulumi.Input<String?>? runtimeVersion;
  /// List of volume mounts for the Python UDF container that executes the
  /// managed function. When volume mounts are set, `runtimeConnection` must
  /// also be set. For more information, see [Create a Python UDF with volume
  /// mounts](https://cloud.google.com/bigquery/docs/user-defined-functions-python#volume-mounts).
  /// Structure is documented below.
  final pulumi.Input<List<RoutineExternalRuntimeOptionsVolumeMount>?>? volumeMounts;

  /// Creates a new [RoutineExternalRuntimeOptions].
  /// [containerCpu] Amount of CPU provisioned for a Python UDF container instance. For more
  /// [containerMemory] Amount of memory provisioned for a Python UDF container instance. Format:
  /// [containerRequestConcurrency] Maximum number of concurrent requests per Python UDF container instance. For more
  /// [maxBatchingRows] Maximum number of rows in each batch sent to the external runtime. If
  /// [runtimeConnection] Fully qualified name of the connection whose service account will be used
  /// [runtimeVersion] Language runtime version. Example: `python-3.11`.
  /// [volumeMounts] List of volume mounts for the Python UDF container that executes the
  const RoutineExternalRuntimeOptions({
    this.containerCpu,
    this.containerMemory,
    this.containerRequestConcurrency,
    this.maxBatchingRows,
    this.runtimeConnection,
    this.runtimeVersion,
    this.volumeMounts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerCpu': ?containerCpu,
      'containerMemory': ?containerMemory,
      'containerRequestConcurrency': ?containerRequestConcurrency,
      'maxBatchingRows': ?maxBatchingRows,
      'runtimeConnection': ?runtimeConnection,
      'runtimeVersion': ?runtimeVersion,
      'volumeMounts': ?pulumi.Input.mapOptionalInputValue<List<RoutineExternalRuntimeOptionsVolumeMount>, List<Map<String, dynamic>>>(volumeMounts, (value) => pulumi.Input.encodeList<RoutineExternalRuntimeOptionsVolumeMount, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RoutineExternalRuntimeOptions.fromMap(Map<String, dynamic> map) {
    return RoutineExternalRuntimeOptions(
      containerCpu: (() { final guardedValue = map['containerCpu']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      containerMemory: (() { final guardedValue = map['containerMemory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      containerRequestConcurrency: (() { final guardedValue = map['containerRequestConcurrency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxBatchingRows: (() { final guardedValue = map['maxBatchingRows']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runtimeConnection: (() { final guardedValue = map['runtimeConnection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runtimeVersion: (() { final guardedValue = map['runtimeVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumeMounts: (() { final guardedValue = map['volumeMounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RoutineExternalRuntimeOptionsVolumeMount>(guardedValue, (value) => RoutineExternalRuntimeOptionsVolumeMount.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
