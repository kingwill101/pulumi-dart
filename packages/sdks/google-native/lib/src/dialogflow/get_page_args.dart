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
    required pulumi.Output<String> agentId,
    required pulumi.Output<String> flowId,
    pulumi.Output<String>? languageCode,
    required pulumi.Output<String> location,
    required pulumi.Output<String> pageId,
    pulumi.Output<String>? project,
  }) :
      agentId = pulumi.Input.asInput<String>(agentId),
      flowId = pulumi.Input.asInput<String>(flowId),
      languageCode = pulumi.Input.asOptionalInput<String>(languageCode),
      location = pulumi.Input.asInput<String>(location),
      pageId = pulumi.Input.asInput<String>(pageId),
      project = pulumi.Input.asOptionalInput<String>(project);

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
      agentId: pulumi.Output.create<String>(map['agentId'] as String),
      flowId: pulumi.Output.create<String>(map['flowId'] as String),
      languageCode: map['languageCode'] == null ? null : pulumi.Output.create<String>(map['languageCode'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      pageId: pulumi.Output.create<String>(map['pageId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

