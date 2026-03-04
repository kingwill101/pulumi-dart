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
      'contentLink':
          ?pulumi.Input.mapOptionalInputValue<
            RunBookDraftContentLink,
            Map<String, dynamic>
          >(contentLink, (value) => value.toMap()),
      'creationTime': ?creationTime,
      'editModeEnabled': ?editModeEnabled,
      'lastModifiedTime': ?lastModifiedTime,
      'outputTypes': ?outputTypes,
      'parameters':
          ?pulumi.Input.mapOptionalInputValue<
            List<RunBookDraftParameter>,
            List<Map<String, dynamic>>
          >(
            parameters,
            (value) =>
                pulumi.Input.encodeList<
                  RunBookDraftParameter,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory RunBookDraft.fromMap(Map<String, dynamic> map) {
    return RunBookDraft(
      contentLink: (() {
        final guardedValue = map['contentLink'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RunBookDraftContentLink.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      creationTime: (() {
        final guardedValue = map['creationTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      editModeEnabled: (() {
        final guardedValue = map['editModeEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      lastModifiedTime: (() {
        final guardedValue = map['lastModifiedTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputTypes: (() {
        final guardedValue = map['outputTypes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      parameters: (() {
        final guardedValue = map['parameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<RunBookDraftParameter>(
            guardedValue,
            (value) => RunBookDraftParameter.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
