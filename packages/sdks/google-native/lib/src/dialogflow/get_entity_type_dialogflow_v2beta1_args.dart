// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dialogflow_v2beta1_get_entity_type_dialogflow_v2beta1_args_doc}
/// Arguments for getEntityType.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v2beta1_get_entity_type_dialogflow_v2beta1_args_doc}
class GetEntityTypeDialogflowV2beta1Args {
  final pulumi.Input<String> entityTypeId;
  final pulumi.Input<String>? languageCode;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetEntityTypeDialogflowV2beta1Args].
  /// [entityTypeId] Required.
  /// [languageCode] Optional.
  /// [location] Required.
  /// [project] Optional.
  GetEntityTypeDialogflowV2beta1Args({
    required pulumi.Output<String> entityTypeId,
    pulumi.Output<String>? languageCode,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      entityTypeId = pulumi.Input.asInput<String>(entityTypeId),
      languageCode = pulumi.Input.asOptionalInput<String>(languageCode),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entityTypeId': entityTypeId,
      'languageCode': ?languageCode,
      'location': location,
      'project': ?project,
    };
  }

  factory GetEntityTypeDialogflowV2beta1Args.fromMap(Map<String, dynamic> map) {
    return GetEntityTypeDialogflowV2beta1Args(
      entityTypeId: pulumi.Output.create<String>(map['entityTypeId'] as String),
      languageCode: map['languageCode'] == null ? null : pulumi.Output.create<String>(map['languageCode'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

