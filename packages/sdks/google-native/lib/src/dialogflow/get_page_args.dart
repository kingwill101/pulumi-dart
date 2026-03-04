// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dialogflow_v3_get_page_args_doc}
/// Arguments for getPage.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v3_get_page_args_doc}
class GetPageArgs {
  final pulumi.Input<String> agentId;
  final pulumi.Input<String> flowId;
  final pulumi.Input<String>? languageCode;
  final pulumi.Input<String> location;
  final pulumi.Input<String> pageId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetPageArgs].
  /// [agentId] Required.
  /// [flowId] Required.
  /// [languageCode] Optional.
  /// [location] Required.
  /// [pageId] Required.
  /// [project] Optional.
  GetPageArgs({
    required this.agentId,
    required this.flowId,
    this.languageCode,
    required this.location,
    required this.pageId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentId': agentId,
      'flowId': flowId,
      'languageCode': ?languageCode,
      'location': location,
      'pageId': pageId,
      'project': ?project,
    };
  }

  factory GetPageArgs.fromMap(Map<String, dynamic> map) {
    return GetPageArgs(
      agentId: pulumi.Input.fromValue(map['agentId'] as String),
      flowId: pulumi.Input.fromValue(map['flowId'] as String),
      languageCode: (() {
        final guardedValue = map['languageCode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      pageId: pulumi.Input.fromValue(map['pageId'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
