// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_config_response_healthcare_v1beta1.dart';

/// Specifies additional options to apply to the base profile.
class OptionsResponse {
  /// Set Clean Descriptors Option.
  final pulumi.Input<Map<String, dynamic>> cleanDescriptors;
  /// Apply `Action.clean_image` to [`PixelData`](http://dicom.nema.org/medical/dicom/2018e/output/chtml/part06/chapter_6.html) as configured.
  final pulumi.Input<ImageConfigResponseHealthcareV1beta1> cleanImage;
  /// Set `Action` for [`StudyInstanceUID`, `SeriesInstanceUID`, `SOPInstanceUID`, and `MediaStorageSOPInstanceUID`](http://dicom.nema.org/medical/dicom/2018e/output/chtml/part06/chapter_6.html).
  final pulumi.Input<String> primaryIds;

  /// Creates a new [OptionsResponse].
  /// [cleanDescriptors] Set Clean Descriptors Option.
  /// [cleanImage] Apply `Action.clean_image` to [`PixelData`](http://dicom.nema.org/medical/dicom/2018e/output/chtml/part06/chapter_6.html) as configured.
  /// [primaryIds] Set `Action` for [`StudyInstanceUID`, `SeriesInstanceUID`, `SOPInstanceUID`, and `MediaStorageSOPInstanceUID`](http://dicom.nema.org/medical/dicom/2018e/output/chtml/part06/chapter_6.html).
  const OptionsResponse({
    required this.cleanDescriptors,
    required this.cleanImage,
    required this.primaryIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cleanDescriptors': cleanDescriptors,
      'cleanImage': pulumi.Input.mapInputValue<ImageConfigResponseHealthcareV1beta1, Map<String, dynamic>>(cleanImage, (value) => value.toMap()),
      'primaryIds': primaryIds,
    };
  }

  factory OptionsResponse.fromMap(Map<String, dynamic> map) {
    return OptionsResponse(
      cleanDescriptors: pulumi.Input.fromValue((map['cleanDescriptors']! as Map).cast<String, dynamic>()),
      cleanImage: pulumi.Input.fromValue(ImageConfigResponseHealthcareV1beta1.fromMap((map['cleanImage']! as Map).cast<String, dynamic>())),
      primaryIds: pulumi.Input.fromValue(map['primaryIds'] as String),
    );
  }
}
