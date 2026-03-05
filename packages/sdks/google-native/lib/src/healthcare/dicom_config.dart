// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dicom_config_filter_profile.dart';
import 'tag_filter_list.dart';

/// Specifies the parameters needed for de-identification of DICOM stores.
class DicomConfig {
  /// Tag filtering profile that determines which tags to keep/remove.
  final pulumi.Input<DicomConfigFilterProfile>? filterProfile;
  /// List of tags to keep. Remove all other tags.
  final pulumi.Input<TagFilterList>? keepList;
  /// List of tags to remove. Keep all other tags.
  final pulumi.Input<TagFilterList>? removeList;
  /// If true, skip replacing StudyInstanceUID, SeriesInstanceUID, SOPInstanceUID, and MediaStorageSOPInstanceUID and leave them untouched. The Cloud Healthcare API regenerates these UIDs by default based on the DICOM Standard's reasoning: "Whilst these UIDs cannot be mapped directly to an individual out of context, given access to the original images, or to a database of the original images containing the UIDs, it would be possible to recover the individual's identity." http://dicom.nema.org/medical/dicom/current/output/chtml/part15/sect_E.3.9.html
  final pulumi.Input<bool>? skipIdRedaction;

  /// Creates a new [DicomConfig].
  /// [filterProfile] Tag filtering profile that determines which tags to keep/remove.
  /// [keepList] List of tags to keep. Remove all other tags.
  /// [removeList] List of tags to remove. Keep all other tags.
  /// [skipIdRedaction] If true, skip replacing StudyInstanceUID, SeriesInstanceUID, SOPInstanceUID, and MediaStorageSOPInstanceUID and leave them untouched. The Cloud Healthcare API regenerates these UIDs by default based on the DICOM Standard's reasoning: "Whilst these UIDs cannot be mapped directly to an individual out of context, given access to the original images, or to a database of the original images containing the UIDs, it would be possible to recover the individual's identity." http://dicom.nema.org/medical/dicom/current/output/chtml/part15/sect_E.3.9.html
  DicomConfig({
    this.filterProfile,
    this.keepList,
    this.removeList,
    this.skipIdRedaction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filterProfile': ?pulumi.Input.mapOptionalInputValue<DicomConfigFilterProfile, String>(filterProfile, (value) => value.wireValue),
      'keepList': ?pulumi.Input.mapOptionalInputValue<TagFilterList, Map<String, dynamic>>(keepList, (value) => value.toMap()),
      'removeList': ?pulumi.Input.mapOptionalInputValue<TagFilterList, Map<String, dynamic>>(removeList, (value) => value.toMap()),
      'skipIdRedaction': ?skipIdRedaction,
    };
  }

  factory DicomConfig.fromMap(Map<String, dynamic> map) {
    return DicomConfig(
      filterProfile: (() { final guardedValue = map['filterProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DicomConfigFilterProfile.fromValue(guardedValue as String)); })(),
      keepList: (() { final guardedValue = map['keepList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TagFilterList.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      removeList: (() { final guardedValue = map['removeList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TagFilterList.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      skipIdRedaction: (() { final guardedValue = map['skipIdRedaction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

