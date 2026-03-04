// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'license_containeranalysis_v1beta1.dart';

/// PackageInfoOccurrence represents an SPDX Package Information section: https://spdx.github.io/spdx-spec/3-package-information/
class PackageInfoOccurrenceContaineranalysisV1beta1 {
  /// A place for the SPDX file creator to record any general comments about the package being described
  final pulumi.Input<String>? comment;

  /// Provide the actual file name of the package, or path of the directory being treated as a package
  final pulumi.Input<String>? filename;

  /// Uniquely identify any element in an SPDX document which may be referenced by other elements
  final pulumi.Input<String>? id;

  /// package or alternative values, if the governing license cannot be determined
  final pulumi.Input<LicenseContaineranalysisV1beta1>? licenseConcluded;

  /// Provide a place for the SPDX file creator to record any relevant background information or additional comments about the origin of the package
  final pulumi.Input<String>? sourceInfo;

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
      'licenseConcluded':
          ?pulumi.Input.mapOptionalInputValue<
            LicenseContaineranalysisV1beta1,
            Map<String, dynamic>
          >(licenseConcluded, (value) => value.toMap()),
      'sourceInfo': ?sourceInfo,
    };
  }

  factory PackageInfoOccurrenceContaineranalysisV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return PackageInfoOccurrenceContaineranalysisV1beta1(
      comment: (() {
        final guardedValue = map['comment'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      filename: (() {
        final guardedValue = map['filename'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      licenseConcluded: (() {
        final guardedValue = map['licenseConcluded'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LicenseContaineranalysisV1beta1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      sourceInfo: (() {
        final guardedValue = map['sourceInfo'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
