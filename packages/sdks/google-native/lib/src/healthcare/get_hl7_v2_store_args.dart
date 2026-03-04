// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_healthcare_v1_get_hl7_v2_store_args_doc}
/// Arguments for getHl7V2Store.
/// {@endtemplate}
/// {@macro pulumi_healthcare_v1_get_hl7_v2_store_args_doc}
class GetHl7V2StoreArgs {
  final pulumi.Input<String> datasetId;
  final pulumi.Input<String> hl7V2StoreId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetHl7V2StoreArgs].
  /// [datasetId] Required.
  /// [hl7V2StoreId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetHl7V2StoreArgs({
    required this.datasetId,
    required this.hl7V2StoreId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': datasetId,
      'hl7V2StoreId': hl7V2StoreId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetHl7V2StoreArgs.fromMap(Map<String, dynamic> map) {
    return GetHl7V2StoreArgs(
      datasetId: pulumi.Input.fromValue(map['datasetId'] as String),
      hl7V2StoreId: pulumi.Input.fromValue(map['hl7V2StoreId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
