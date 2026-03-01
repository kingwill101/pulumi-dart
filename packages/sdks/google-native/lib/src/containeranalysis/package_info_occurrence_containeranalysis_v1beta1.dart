// ignore_for_file: unused_element, unnecessary_cast

import 'license_containeranalysis_v1beta1.dart';

/// PackageInfoOccurrence represents an SPDX Package Information section: https://spdx.github.io/spdx-spec/3-package-information/
class PackageInfoOccurrenceContaineranalysisV1beta1 {
  /// A place for the SPDX file creator to record any general comments about the package being described
  final String? comment;
  /// Provide the actual file name of the package, or path of the directory being treated as a package
  final String? filename;
  /// Uniquely identify any element in an SPDX document which may be referenced by other elements
  final String? id;
  /// package or alternative values, if the governing license cannot be determined
  final LicenseContaineranalysisV1beta1? licenseConcluded;
  /// Provide a place for the SPDX file creator to record any relevant background information or additional comments about the origin of the package
  final String? sourceInfo;

  /// Creates a new [PackageInfoOccurrenceContaineranalysisV1beta1].
  /// [comment] A place for the SPDX file creator to record any general comments about the package being described
  /// [filename] Provide the actual file name of the package, or path of the directory being treated as a package
  /// [id] Uniquely identify any element in an SPDX document which may be referenced by other elements
  /// [licenseConcluded] package or alternative values, if the governing license cannot be determined
  /// [sourceInfo] Provide a place for the SPDX file creator to record any relevant background information or additional comments about the origin of the package
  PackageInfoOccurrenceContaineranalysisV1beta1({
    this.comment,
    this.filename,
    this.id,
    this.licenseConcluded,
    this.sourceInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': ?comment,
      'filename': ?filename,
      'id': ?id,
      'licenseConcluded': ?licenseConcluded == null ? null : licenseConcluded!.toMap(),
      'sourceInfo': ?sourceInfo,
    };
  }

  factory PackageInfoOccurrenceContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return PackageInfoOccurrenceContaineranalysisV1beta1(
      comment: map['comment'] == null ? null : map['comment'] as String,
      filename: map['filename'] == null ? null : map['filename'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      licenseConcluded: map['licenseConcluded'] == null ? null : LicenseContaineranalysisV1beta1.fromMap((map['licenseConcluded'] as Map).cast<String, dynamic>()),
      sourceInfo: map['sourceInfo'] == null ? null : map['sourceInfo'] as String,
    );
  }
}

