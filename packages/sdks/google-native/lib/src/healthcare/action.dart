// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_config_healthcare_v1beta1.dart';

/// Specifies a selection of tags and an `Action` to apply to each one.
class Action {
  /// Inspect image and transform sensitive burnt-in text. Doesn't apply to elements nested in a sequence, which revert to `Keep`. Supported [tags](http://dicom.nema.org/medical/dicom/2018e/output/chtml/part06/chapter_6.html): PixelData
  final pulumi.Input<ImageConfigHealthcareV1beta1>? cleanImageTag;
  /// Inspect text and transform sensitive text. Configurable via TextConfig. Supported Value Representations: AE, LO, LT, PN, SH, ST, UC, UT, DA, DT, AS
  final pulumi.Input<Map<String, dynamic>>? cleanTextTag;
  /// Delete tag.
  final pulumi.Input<Map<String, dynamic>>? deleteTag;
  /// Keep tag unchanged.
  final pulumi.Input<Map<String, dynamic>>? keepTag;
  /// Select all tags with the listed tag IDs, names, or Value Representations (VRs). Examples: ID: "00100010" Keyword: "PatientName" VR: "PN"
  final pulumi.Input<List<String>>? queries;
  /// Recursively apply DICOM de-id to tags nested in a sequence. Supported [Value Representation] (http://dicom.nema.org/medical/dicom/2018e/output/chtml/part05/sect_6.2.html#table_6.2-1): SQ
  final pulumi.Input<Map<String, dynamic>>? recurseTag;
  /// Replace UID with a new generated UID. Supported [Value Representation] (http://dicom.nema.org/medical/dicom/2018e/output/chtml/part05/sect_6.2.html#table_6.2-1): UI
  final pulumi.Input<Map<String, dynamic>>? regenUidTag;
  /// Replace with empty tag.
  final pulumi.Input<Map<String, dynamic>>? removeTag;
  /// Reset tag to a placeholder value.
  final pulumi.Input<Map<String, dynamic>>? resetTag;

  /// Creates a new [Action].
  /// [cleanImageTag] Inspect image and transform sensitive burnt-in text. Doesn't apply to elements nested in a sequence, which revert to `Keep`. Supported [tags](http://dicom.nema.org/medical/dicom/2018e/output/chtml/part06/chapter_6.html): PixelData
  /// [cleanTextTag] Inspect text and transform sensitive text. Configurable via TextConfig. Supported Value Representations: AE, LO, LT, PN, SH, ST, UC, UT, DA, DT, AS
  /// [deleteTag] Delete tag.
  /// [keepTag] Keep tag unchanged.
  /// [queries] Select all tags with the listed tag IDs, names, or Value Representations (VRs). Examples: ID: "00100010" Keyword: "PatientName" VR: "PN"
  /// [recurseTag] Recursively apply DICOM de-id to tags nested in a sequence. Supported [Value Representation] (http://dicom.nema.org/medical/dicom/2018e/output/chtml/part05/sect_6.2.html#table_6.2-1): SQ
  /// [regenUidTag] Replace UID with a new generated UID. Supported [Value Representation] (http://dicom.nema.org/medical/dicom/2018e/output/chtml/part05/sect_6.2.html#table_6.2-1): UI
  /// [removeTag] Replace with empty tag.
  /// [resetTag] Reset tag to a placeholder value.
  Action({
    this.cleanImageTag,
    this.cleanTextTag,
    this.deleteTag,
    this.keepTag,
    this.queries,
    this.recurseTag,
    this.regenUidTag,
    this.removeTag,
    this.resetTag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cleanImageTag': ?pulumi.Input.mapOptionalInputValue<ImageConfigHealthcareV1beta1, Map<String, dynamic>>(cleanImageTag, (value) => value.toMap()),
      'cleanTextTag': ?cleanTextTag,
      'deleteTag': ?deleteTag,
      'keepTag': ?keepTag,
      'queries': ?queries,
      'recurseTag': ?recurseTag,
      'regenUidTag': ?regenUidTag,
      'removeTag': ?removeTag,
      'resetTag': ?resetTag,
    };
  }

  factory Action.fromMap(Map<String, dynamic> map) {
    return Action(
      cleanImageTag: map['cleanImageTag'] == null ? null : (ImageConfigHealthcareV1beta1.fromMap((map['cleanImageTag']! as Map).cast<String, dynamic>())).input(),
      cleanTextTag: map['cleanTextTag'] == null ? null : ((map['cleanTextTag']! as Map).cast<String, dynamic>()).input(),
      deleteTag: map['deleteTag'] == null ? null : ((map['deleteTag']! as Map).cast<String, dynamic>()).input(),
      keepTag: map['keepTag'] == null ? null : ((map['keepTag']! as Map).cast<String, dynamic>()).input(),
      queries: map['queries'] == null ? null : ((map['queries']! as List).cast<String>()).input(),
      recurseTag: map['recurseTag'] == null ? null : ((map['recurseTag']! as Map).cast<String, dynamic>()).input(),
      regenUidTag: map['regenUidTag'] == null ? null : ((map['regenUidTag']! as Map).cast<String, dynamic>()).input(),
      removeTag: map['removeTag'] == null ? null : ((map['removeTag']! as Map).cast<String, dynamic>()).input(),
      resetTag: map['resetTag'] == null ? null : ((map['resetTag']! as Map).cast<String, dynamic>()).input(),
    );
  }
}

