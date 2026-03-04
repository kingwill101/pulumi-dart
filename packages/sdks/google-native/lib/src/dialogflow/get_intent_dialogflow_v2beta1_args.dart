// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dialogflow_v2beta1_get_intent_dialogflow_v2beta1_args_doc}
/// Arguments for getIntent.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v2beta1_get_intent_dialogflow_v2beta1_args_doc}
class GetIntentDialogflowV2beta1Args {
  final pulumi.Input<String> intentId;
  final pulumi.Input<String>? intentView;
  final pulumi.Input<String>? languageCode;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetIntentDialogflowV2beta1Args].
  /// [intentId] Required.
  /// [intentView] Optional.
  /// [languageCode] Optional.
  /// [location] Required.
  /// [project] Optional.
  GetIntentDialogflowV2beta1Args({
    required this.intentId,
    this.intentView,
    this.languageCode,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'intentId': intentId,
      'intentView': ?intentView,
      'languageCode': ?languageCode,
      'location': location,
      'project': ?project,
    };
  }

  factory GetIntentDialogflowV2beta1Args.fromMap(Map<String, dynamic> map) {
    return GetIntentDialogflowV2beta1Args(
      intentId: pulumi.Input.fromValue(map['intentId'] as String),
      intentView: (() {
        final guardedValue = map['intentView'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      languageCode: (() {
        final guardedValue = map['languageCode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
