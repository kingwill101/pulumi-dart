// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'license_response_containeranalysis_v1beta1.dart';

/// FileOccurrence represents an SPDX File Information section: https://spdx.github.io/spdx-spec/4-file-information/
class FileOccurrenceResponseContaineranalysisV1beta1 {
  /// This field provides a place for the SPDX data creator to record, at the file level, acknowledgements that may be needed to be communicated in some contexts
  final pulumi.Input<List<String>> attributions;
  /// This field provides a place for the SPDX file creator to record any general comments about the file
  final pulumi.Input<String> comment;
  /// This field provides a place for the SPDX file creator to record file contributors
  final pulumi.Input<List<String>> contributors;
  /// Identify the copyright holder of the file, as well as any dates present
  final pulumi.Input<String> copyright;
  /// This field contains the license information actually found in the file, if any
  final pulumi.Input<List<String>> filesLicenseInfo;
  /// This field contains the license the SPDX file creator has concluded as governing the file or alternative values if the governing license cannot be determined
  final pulumi.Input<LicenseResponseContaineranalysisV1beta1> licenseConcluded;
  /// This field provides a place for the SPDX file creator to record license notices or other such related notices found in the file
  final pulumi.Input<String> notice;

  /// Creates a new [FileOccurrenceResponseContaineranalysisV1beta1].
  /// [attributions] This field provides a place for the SPDX data creator to record, at the file level, acknowledgements that may be needed to be communicated in some contexts
  /// [comment] This field provides a place for the SPDX file creator to record any general comments about the file
  /// [contributors] This field provides a place for the SPDX file creator to record file contributors
  /// [copyright] Identify the copyright holder of the file, as well as any dates present
  /// [filesLicenseInfo] This field contains the license information actually found in the file, if any
  /// [licenseConcluded] This field contains the license the SPDX file creator has concluded as governing the file or alternative values if the governing license cannot be determined
  /// [notice] This field provides a place for the SPDX file creator to record license notices or other such related notices found in the file
  FileOccurrenceResponseContaineranalysisV1beta1({
    required this.attributions,
    required this.comment,
    required this.contributors,
    required this.copyright,
    required this.filesLicenseInfo,
    required this.licenseConcluded,
    required this.notice,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributions': attributions,
      'comment': comment,
      'contributors': contributors,
      'copyright': copyright,
      'filesLicenseInfo': filesLicenseInfo,
      'licenseConcluded': pulumi.Input.mapInputValue<LicenseResponseContaineranalysisV1beta1, Map<String, dynamic>>(licenseConcluded, (value) => value.toMap()),
      'notice': notice,
    };
  }

  factory FileOccurrenceResponseContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return FileOccurrenceResponseContaineranalysisV1beta1(
      attributions: ((map['attributions'] as List).cast<String>()).input(),
      comment: (map['comment'] as String).input(),
      contributors: ((map['contributors'] as List).cast<String>()).input(),
      copyright: (map['copyright'] as String).input(),
      filesLicenseInfo: ((map['filesLicenseInfo'] as List).cast<String>()).input(),
      licenseConcluded: (LicenseResponseContaineranalysisV1beta1.fromMap((map['licenseConcluded'] as Map).cast<String, dynamic>())).input(),
      notice: (map['notice'] as String).input(),
    );
  }
}

