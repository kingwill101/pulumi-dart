// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_healthcare_v1beta1_get_message_healthcare_v1beta1_args_doc}
/// Arguments for getMessage.
/// {@endtemplate}
/// {@macro pulumi_healthcare_v1beta1_get_message_healthcare_v1beta1_args_doc}
class GetMessageHealthcareV1beta1Args {
  final pulumi.Input<String> datasetId;
  final pulumi.Input<String> hl7V2StoreId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> messageId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? view;

  /// Creates a new [GetMessageHealthcareV1beta1Args].
  /// [datasetId] Required.
  /// [hl7V2StoreId] Required.
  /// [location] Required.
  /// [messageId] Required.
  /// [project] Optional.
  /// [view] Optional.
  const GetMessageHealthcareV1beta1Args({
    required this.datasetId,
    required this.hl7V2StoreId,
    required this.location,
    required this.messageId,
    this.project,
    this.view,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': datasetId,
      'hl7V2StoreId': hl7V2StoreId,
      'location': location,
      'messageId': messageId,
      'project': ?project,
      'view': ?view,
    };
  }

  factory GetMessageHealthcareV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetMessageHealthcareV1beta1Args(
      datasetId: pulumi.Input.fromValue(map['datasetId'] as String),
      hl7V2StoreId: pulumi.Input.fromValue(map['hl7V2StoreId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      messageId: pulumi.Input.fromValue(map['messageId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      view: (() { final guardedValue = map['view']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
