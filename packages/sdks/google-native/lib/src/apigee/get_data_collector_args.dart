// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_get_data_collector_args_doc}
/// Arguments for getDataCollector.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_get_data_collector_args_doc}
class GetDataCollectorArgs {
  final pulumi.Input<String> datacollectorId;
  final pulumi.Input<String> organizationId;

  /// Creates a new [GetDataCollectorArgs].
  /// [datacollectorId] Required.
  /// [organizationId] Required.
  GetDataCollectorArgs({
    required pulumi.Output<String> datacollectorId,
    required pulumi.Output<String> organizationId,
  }) :
      datacollectorId = pulumi.Input.asInput<String>(datacollectorId),
      organizationId = pulumi.Input.asInput<String>(organizationId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datacollectorId': datacollectorId,
      'organizationId': organizationId,
    };
  }

  factory GetDataCollectorArgs.fromMap(Map<String, dynamic> map) {
    return GetDataCollectorArgs(
      datacollectorId: pulumi.Output.create<String>(map['datacollectorId'] as String),
      organizationId: pulumi.Output.create<String>(map['organizationId'] as String),
    );
  }
}

