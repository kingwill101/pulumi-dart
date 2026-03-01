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
    required pulumi.Output<String> datasourceId,
    pulumi.Output<bool>? debugOptionsEnableDebugging,
  }) :
      datasourceId = pulumi.Input.asInput<String>(datasourceId),
      debugOptionsEnableDebugging = pulumi.Input.asOptionalInput<bool>(debugOptionsEnableDebugging);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasourceId': datasourceId,
      'debugOptionsEnableDebugging': ?debugOptionsEnableDebugging,
    };
  }

  factory GetDataSourceArgs.fromMap(Map<String, dynamic> map) {
    return GetDataSourceArgs(
      datasourceId: pulumi.Output.create<String>(map['datasourceId'] as String),
      debugOptionsEnableDebugging: map['debugOptionsEnableDebugging'] == null ? null : pulumi.Output.create<bool>(map['debugOptionsEnableDebugging'] as bool),
    );
  }
}

