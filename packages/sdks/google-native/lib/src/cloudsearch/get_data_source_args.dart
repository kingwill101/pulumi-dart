// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudsearch_v1_get_data_source_args_doc}
/// Arguments for getDataSource.
/// {@endtemplate}
/// {@macro pulumi_cloudsearch_v1_get_data_source_args_doc}
class GetDataSourceArgs {
  final pulumi.Input<String> datasourceId;
  final pulumi.Input<bool>? debugOptionsEnableDebugging;

  /// Creates a new [GetDataSourceArgs].
  /// [datasourceId] Required.
  /// [debugOptionsEnableDebugging] Optional.
  GetDataSourceArgs({
    required this.datasourceId,
    this.debugOptionsEnableDebugging,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasourceId': datasourceId,
      'debugOptionsEnableDebugging': ?debugOptionsEnableDebugging,
    };
  }

  factory GetDataSourceArgs.fromMap(Map<String, dynamic> map) {
    return GetDataSourceArgs(
      datasourceId: pulumi.Input.fromValue(map['datasourceId'] as String),
      debugOptionsEnableDebugging: (() {
        final guardedValue = map['debugOptionsEnableDebugging'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
