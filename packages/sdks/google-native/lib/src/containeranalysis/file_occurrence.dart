// ignore_for_file: unused_element, unnecessary_cast

import 'license_containeranalysis_v1alpha1.dart';

/// FileOccurrence represents an SPDX File Information section: https://spdx.github.io/spdx-spec/4-file-information/
class FileOccurrence {
  /// This field provides a place for the SPDX data creator to record, at the file level, acknowledgements that may be needed to be communicated in some contexts
  final List<String>? attributions;
  /// This field provides a place for the SPDX file creator to record any general comments about the file
  final String? comment;
  /// This field provides a place for the SPDX file creator to record file contributors
  final List<String>? contributors;
  /// Identify the copyright holder of the file, as well as any dates present
  final String? copyright;
  /// This field contains the license information actually found in the file, if any
  final List<String>? filesLicenseInfo;
  /// Uniquely identify any element in an SPDX document which may be referenced by other elements
  final String? id;
  /// This field contains the license the SPDX file creator has concluded as governing the file or alternative values if the governing license cannot be determined
  final LicenseContaineranalysisV1alpha1? licenseConcluded;
  /// This field provides a place for the SPDX file creator to record license notices or other such related notices found in the file
  final String? notice;

  /// Creates a new [FileOccurrence].
  /// [attributions] This field provides a place for the SPDX data creator to record, at the file level, acknowledgements that may be needed to be communicated in some contexts
  /// [comment] This field provides a place for the SPDX file creator to record any general comments about the file
  /// [contributors] This field provides a place for the SPDX file creator to record file contributors
  /// [copyright] Identify the copyright holder of the file, as well as any dates present
  /// [filesLicenseInfo] This field contains the license information actually found in the file, if any
  /// [id] Uniquely identify any element in an SPDX document which may be referenced by other elements
  /// [licenseConcluded] This field contains the license the SPDX file creator has concluded as governing the file or alternative values if the governing license cannot be determined
  /// [notice] This field provides a place for the SPDX file creator to record license notices or other such related notices found in the file
  FileOccurrence({
    this.attributions,
    this.comment,
    this.contributors,
    this.copyright,
    this.filesLicenseInfo,
    this.id,
    this.licenseConcluded,
    this.notice,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributions': ?attributions,
      'comment': ?comment,
      'contributors': ?contributors,
      'copyright': ?copyright,
      'filesLicenseInfo': ?filesLicenseInfo,
      'id': ?id,
      'licenseConcluded': ?licenseConcluded == null ? null : licenseConcluded!.toMap(),
      'notice': ?notice,
    };
  }

  factory FileOccurrence.fromMap(Map<String, dynamic> map) {
    return FileOccurrence(
      attributions: map['attributions'] == null ? null : (map['attributions'] as List).cast<String>(),
      comment: map['comment'] == null ? null : map['comment'] as String,
      contributors: map['contributors'] == null ? null : (map['contributors'] as List).cast<String>(),
      copyright: map['copyright'] == null ? null : map['copyright'] as String,
      filesLicenseInfo: map['filesLicenseInfo'] == null ? null : (map['filesLicenseInfo'] as List).cast<String>(),
      id: map['id'] == null ? null : map['id'] as String,
      licenseConcluded: map['licenseConcluded'] == null ? null : LicenseContaineranalysisV1alpha1.fromMap((map['licenseConcluded'] as Map).cast<String, dynamic>()),
      notice: map['notice'] == null ? null : map['notice'] as String,
    );
  }
}

