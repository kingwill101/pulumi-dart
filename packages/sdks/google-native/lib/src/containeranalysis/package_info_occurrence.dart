// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'license_containeranalysis_v1alpha1.dart';

/// PackageInfoOccurrence represents an SPDX Package Information section: https://spdx.github.io/spdx-spec/3-package-information/
class PackageInfoOccurrence {
  /// A place for the SPDX file creator to record any general comments about the package being described
  final pulumi.Input<String>? comment;
  /// Provide the actual file name of the package, or path of the directory being treated as a package
  final pulumi.Input<String>? filename;
  /// Uniquely identify any element in an SPDX document which may be referenced by other elements
  final pulumi.Input<String>? id;
  /// package or alternative values, if the governing license cannot be determined
  final pulumi.Input<LicenseContaineranalysisV1alpha1>? licenseConcluded;
  /// Provide a place for the SPDX file creator to record any relevant background information or additional comments about the origin of the package
  final pulumi.Input<String>? sourceInfo;

  /// Creates a new [PackageInfoOccurrence].
  /// [comment] A place for the SPDX file creator to record any general comments about the package being described
  /// [filename] Provide the actual file name of the package, or path of the directory being treated as a package
  /// [id] Uniquely identify any element in an SPDX document which may be referenced by other elements
  /// [licenseConcluded] package or alternative values, if the governing license cannot be determined
  /// [sourceInfo] Provide a place for the SPDX file creator to record any relevant background information or additional comments about the origin of the package
  const PackageInfoOccurrence({
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
      'licenseConcluded': ?pulumi.Input.mapOptionalInputValue<LicenseContaineranalysisV1alpha1, Map<String, dynamic>>(licenseConcluded, (value) => value.toMap()),
      'sourceInfo': ?sourceInfo,
    };
  }

  factory PackageInfoOccurrence.fromMap(Map<String, dynamic> map) {
    return PackageInfoOccurrence(
      comment: (() { final guardedValue = map['comment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filename: (() { final guardedValue = map['filename']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      licenseConcluded: (() { final guardedValue = map['licenseConcluded']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LicenseContaineranalysisV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sourceInfo: (() { final guardedValue = map['sourceInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

