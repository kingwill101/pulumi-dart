// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'run_book_draft_content_link.dart';
import 'run_book_draft_parameter.dart';

class RunBookDraft {
  /// A `publish_content_link` block as defined above.
  final pulumi.Input<RunBookDraftContentLink>? contentLink;
  final pulumi.Input<String>? creationTime;
  /// Whether the draft in edit mode.
  final pulumi.Input<bool>? editModeEnabled;
  final pulumi.Input<String>? lastModifiedTime;
  /// Specifies the output types of the runbook.
  final pulumi.Input<List<String>>? outputTypes;
  /// A list of `parameters` block as defined below.
  final pulumi.Input<List<RunBookDraftParameter>>? parameters;

  /// Creates a new [RunBookDraft].
  /// [contentLink] A `publish_content_link` block as defined above.
  /// [creationTime] Optional.
  /// [editModeEnabled] Whether the draft in edit mode.
  /// [lastModifiedTime] Optional.
  /// [outputTypes] Specifies the output types of the runbook.
  /// [parameters] A list of `parameters` block as defined below.
  RunBookDraft({
    this.contentLink,
    this.creationTime,
    this.editModeEnabled,
    this.lastModifiedTime,
    this.outputTypes,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentLink': ?pulumi.Input.mapOptionalInputValue<RunBookDraftContentLink, Map<String, dynamic>>(contentLink, (value) => value.toMap()),
      'creationTime': ?creationTime,
      'editModeEnabled': ?editModeEnabled,
      'lastModifiedTime': ?lastModifiedTime,
      'outputTypes': ?outputTypes,
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<RunBookDraftParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<RunBookDraftParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RunBookDraft.fromMap(Map<String, dynamic> map) {
    return RunBookDraft(
      contentLink: map['contentLink'] == null ? null : (RunBookDraftContentLink.fromMap((map['contentLink']! as Map).cast<String, dynamic>())).input(),
      creationTime: map['creationTime'] == null ? null : (map['creationTime']! as String).input(),
      editModeEnabled: map['editModeEnabled'] == null ? null : (map['editModeEnabled']! as bool).input(),
      lastModifiedTime: map['lastModifiedTime'] == null ? null : (map['lastModifiedTime']! as String).input(),
      outputTypes: map['outputTypes'] == null ? null : ((map['outputTypes']! as List).cast<String>()).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeList<RunBookDraftParameter>(map['parameters']!, (value) => RunBookDraftParameter.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

