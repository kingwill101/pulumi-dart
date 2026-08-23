// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_filter_list_response_healthcare_v1beta1.dart';

/// Specifies the parameters needed for de-identification of DICOM stores.
class DicomConfigResponseHealthcareV1beta1 {
  /// Tag filtering profile that determines which tags to keep/remove.
  final pulumi.Input<String> filterProfile;
  /// List of tags to keep. Remove all other tags.
  final pulumi.Input<TagFilterListResponseHealthcareV1beta1> keepList;
  /// List of tags to remove. Keep all other tags.
  final pulumi.Input<TagFilterListResponseHealthcareV1beta1> removeList;
  /// If true, skip replacing StudyInstanceUID, SeriesInstanceUID, SOPInstanceUID, and MediaStorageSOPInstanceUID and leave them untouched. The Cloud Healthcare API regenerates these UIDs by default based on the DICOM Standard's reasoning: "Whilst these UIDs cannot be mapped directly to an individual out of context, given access to the original images, or to a database of the original images containing the UIDs, it would be possible to recover the individual's identity." http://dicom.nema.org/medical/dicom/current/output/chtml/part15/sect_E.3.9.html
  final pulumi.Input<bool> skipIdRedaction;

  /// Creates a new [DicomConfigResponseHealthcareV1beta1].
  /// [filterProfile] Tag filtering profile that determines which tags to keep/remove.
  /// [keepList] List of tags to keep. Remove all other tags.
  /// [removeList] List of tags to remove. Keep all other tags.
  /// [skipIdRedaction] If true, skip replacing StudyInstanceUID, SeriesInstanceUID, SOPInstanceUID, and MediaStorageSOPInstanceUID and leave them untouched. The Cloud Healthcare API regenerates these UIDs by default based on the DICOM Standard's reasoning: "Whilst these UIDs cannot be mapped directly to an individual out of context, given access to the original images, or to a database of the original images containing the UIDs, it would be possible to recover the individual's identity." http://dicom.nema.org/medical/dicom/current/output/chtml/part15/sect_E.3.9.html
  const DicomConfigResponseHealthcareV1beta1({
    required this.filterProfile,
    required this.keepList,
    required this.removeList,
    required this.skipIdRedaction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filterProfile': filterProfile,
      'keepList': pulumi.Input.mapInputValue<TagFilterListResponseHealthcareV1beta1, Map<String, dynamic>>(keepList, (value) => value.toMap()),
      'removeList': pulumi.Input.mapInputValue<TagFilterListResponseHealthcareV1beta1, Map<String, dynamic>>(removeList, (value) => value.toMap()),
      'skipIdRedaction': skipIdRedaction,
    };
  }

  factory DicomConfigResponseHealthcareV1beta1.fromMap(Map<String, dynamic> map) {
    return DicomConfigResponseHealthcareV1beta1(
      filterProfile: pulumi.Input.fromValue(map['filterProfile'] as String),
      keepList: pulumi.Input.fromValue(TagFilterListResponseHealthcareV1beta1.fromMap((map['keepList']! as Map).cast<String, dynamic>())),
      removeList: pulumi.Input.fromValue(TagFilterListResponseHealthcareV1beta1.fromMap((map['removeList']! as Map).cast<String, dynamic>())),
      skipIdRedaction: pulumi.Input.fromValue(map['skipIdRedaction'] as bool),
    );
  }
}
