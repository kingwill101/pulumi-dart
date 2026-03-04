// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_config_healthcare_v1beta1.dart';
import 'options_primary_ids.dart';

/// Specifies additional options to apply to the base profile.
class Options {
  /// Set Clean Descriptors Option.
  final pulumi.Input<Map<String, dynamic>>? cleanDescriptors;

  /// Apply `Action.clean_image` to [`PixelData`](http://dicom.nema.org/medical/dicom/2018e/output/chtml/part06/chapter_6.html) as configured.
  final pulumi.Input<ImageConfigHealthcareV1beta1>? cleanImage;

  /// Set `Action` for [`StudyInstanceUID`, `SeriesInstanceUID`, `SOPInstanceUID`, and `MediaStorageSOPInstanceUID`](http://dicom.nema.org/medical/dicom/2018e/output/chtml/part06/chapter_6.html).
  final pulumi.Input<OptionsPrimaryIds>? primaryIds;

  /// Creates a new [Options].
  /// [cleanDescriptors] Set Clean Descriptors Option.
  /// [cleanImage] Apply `Action.clean_image` to [`PixelData`](http://dicom.nema.org/medical/dicom/2018e/output/chtml/part06/chapter_6.html) as configured.
  /// [primaryIds] Set `Action` for [`StudyInstanceUID`, `SeriesInstanceUID`, `SOPInstanceUID`, and `MediaStorageSOPInstanceUID`](http://dicom.nema.org/medical/dicom/2018e/output/chtml/part06/chapter_6.html).
  Options({this.cleanDescriptors, this.cleanImage, this.primaryIds});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cleanDescriptors': ?cleanDescriptors,
      'cleanImage':
          ?pulumi.Input.mapOptionalInputValue<
            ImageConfigHealthcareV1beta1,
            Map<String, dynamic>
          >(cleanImage, (value) => value.toMap()),
      'primaryIds':
          ?pulumi.Input.mapOptionalInputValue<OptionsPrimaryIds, String>(
            primaryIds,
            (value) => value.wireValue,
          ),
    };
  }

  factory Options.fromMap(Map<String, dynamic> map) {
    return Options(
      cleanDescriptors: (() {
        final guardedValue = map['cleanDescriptors'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      cleanImage: (() {
        final guardedValue = map['cleanImage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ImageConfigHealthcareV1beta1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      primaryIds: (() {
        final guardedValue = map['primaryIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          OptionsPrimaryIds.fromValue(guardedValue as String),
        );
      })(),
    );
  }
}
