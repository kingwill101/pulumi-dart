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
    required this.datacollectorId,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datacollectorId': datacollectorId,
      'organizationId': organizationId,
    };
  }

  factory GetDataCollectorArgs.fromMap(Map<String, dynamic> map) {
    return GetDataCollectorArgs(
      datacollectorId: (map['datacollectorId'] as String).input(),
      organizationId: (map['organizationId'] as String).input(),
    );
  }
}

