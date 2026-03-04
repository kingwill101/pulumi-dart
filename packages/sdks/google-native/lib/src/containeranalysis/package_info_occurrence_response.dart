// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'license_response_containeranalysis_v1alpha1.dart';

/// PackageInfoOccurrence represents an SPDX Package Information section: https://spdx.github.io/spdx-spec/3-package-information/
class PackageInfoOccurrenceResponse {
  /// A place for the SPDX file creator to record any general comments about the package being described
  final pulumi.Input<String> comment;

  /// Provide the actual file name of the package, or path of the directory being treated as a package
  final pulumi.Input<String> filename;

  /// Provide a place for the SPDX file creator to record a web site that serves as the package's home page
  final pulumi.Input<String> homePage;

  /// package or alternative values, if the governing license cannot be determined
  final pulumi.Input<LicenseResponseContaineranalysisV1alpha1> licenseConcluded;

  /// The type of package: OS, MAVEN, GO, GO_STDLIB, etc.
  final pulumi.Input<String> packageType;

  /// Provide a place for the SPDX file creator to record any relevant background information or additional comments about the origin of the package
  final pulumi.Input<String> sourceInfo;

  /// A short description of the package
  final pulumi.Input<String> summaryDescription;

  /// Identify the full name of the package as given by the Package Originator
  final pulumi.Input<String> title;

  /// Identify the version of the package
  final pulumi.Input<String> version;

  /// Creates a new [PackageInfoOccurrenceResponse].
  /// [comment] A place for the SPDX file creator to record any general comments about the package being described
  /// [filename] Provide the actual file name of the package, or path of the directory being treated as a package
  /// [homePage] Provide a place for the SPDX file creator to record a web site that serves as the package's home page
  /// [licenseConcluded] package or alternative values, if the governing license cannot be determined
  /// [packageType] The type of package: OS, MAVEN, GO, GO_STDLIB, etc.
  /// [sourceInfo] Provide a place for the SPDX file creator to record any relevant background information or additional comments about the origin of the package
  /// [summaryDescription] A short description of the package
  /// [title] Identify the full name of the package as given by the Package Originator
  /// [version] Identify the version of the package
  PackageInfoOccurrenceResponse({
    required this.comment,
    required this.filename,
    required this.homePage,
    required this.licenseConcluded,
    required this.packageType,
    required this.sourceInfo,
    required this.summaryDescription,
    required this.title,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': comment,
      'filename': filename,
      'homePage': homePage,
      'licenseConcluded':
          pulumi.Input.mapInputValue<
            LicenseResponseContaineranalysisV1alpha1,
            Map<String, dynamic>
          >(licenseConcluded, (value) => value.toMap()),
      'packageType': packageType,
      'sourceInfo': sourceInfo,
      'summaryDescription': summaryDescription,
      'title': title,
      'version': version,
    };
  }

  factory PackageInfoOccurrenceResponse.fromMap(Map<String, dynamic> map) {
    return PackageInfoOccurrenceResponse(
      comment: pulumi.Input.fromValue(map['comment'] as String),
      filename: pulumi.Input.fromValue(map['filename'] as String),
      homePage: pulumi.Input.fromValue(map['homePage'] as String),
      licenseConcluded: pulumi.Input.fromValue(
        LicenseResponseContaineranalysisV1alpha1.fromMap(
          (map['licenseConcluded']! as Map).cast<String, dynamic>(),
        ),
      ),
      packageType: pulumi.Input.fromValue(map['packageType'] as String),
      sourceInfo: pulumi.Input.fromValue(map['sourceInfo'] as String),
      summaryDescription: pulumi.Input.fromValue(
        map['summaryDescription'] as String,
      ),
      title: pulumi.Input.fromValue(map['title'] as String),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}
