// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'external_ref.dart';
import 'license_containeranalysis_v1alpha1.dart';

/// PackageInfoNote represents an SPDX Package Information section: https://spdx.github.io/spdx-spec/3-package-information/
class PackageInfoNote {
  /// Indicates whether the file content of this package has been available for or subjected to analysis when creating the SPDX document
  final bool? analyzed;
  /// A place for the SPDX data creator to record, at the package level, acknowledgements that may be needed to be communicated in some contexts
  final String? attribution;
  /// Provide an independently reproducible mechanism that permits unique identification of a specific package that correlates to the data in this SPDX file
  final String? checksum;
  /// Identify the copyright holders of the package, as well as any dates present
  final String? copyright;
  /// A more detailed description of the package
  final String? detailedDescription;
  /// This section identifies the download Universal Resource Locator (URL), or a specific location within a version control system (VCS) for the package at the time that the SPDX file was created
  final String? downloadLocation;
  /// ExternalRef
  final List<ExternalRef>? externalRefs;
  /// Contain the license the SPDX file creator has concluded as governing the This field is to contain a list of all licenses found in the package. The relationship between licenses (i.e., conjunctive, disjunctive) is not specified in this field – it is simply a listing of all licenses found
  final List<String>? filesLicenseInfo;
  /// Provide a place for the SPDX file creator to record a web site that serves as the package's home page
  final String? homePage;
  /// List the licenses that have been declared by the authors of the package
  final LicenseContaineranalysisV1alpha1? licenseDeclared;
  /// If the package identified in the SPDX file originated from a different person or organization than identified as Package Supplier, this field identifies from where or whom the package originally came
  final String? originator;
  /// The type of package: OS, MAVEN, GO, GO_STDLIB, etc.
  final String? packageType;
  /// A short description of the package
  final String? summaryDescription;
  /// Identify the actual distribution source for the package/directory identified in the SPDX file
  final String? supplier;
  /// Identify the full name of the package as given by the Package Originator
  final String? title;
  /// This field provides an independently reproducible mechanism identifying specific contents of a package based on the actual files (except the SPDX file itself, if it is included in the package) that make up each package and that correlates to the data in this SPDX file
  final String? verificationCode;
  /// Identify the version of the package
  final String? version;

  /// Creates a new [PackageInfoNote].
  /// [analyzed] Indicates whether the file content of this package has been available for or subjected to analysis when creating the SPDX document
  /// [attribution] A place for the SPDX data creator to record, at the package level, acknowledgements that may be needed to be communicated in some contexts
  /// [checksum] Provide an independently reproducible mechanism that permits unique identification of a specific package that correlates to the data in this SPDX file
  /// [copyright] Identify the copyright holders of the package, as well as any dates present
  /// [detailedDescription] A more detailed description of the package
  /// [downloadLocation] This section identifies the download Universal Resource Locator (URL), or a specific location within a version control system (VCS) for the package at the time that the SPDX file was created
  /// [externalRefs] ExternalRef
  /// [filesLicenseInfo] Contain the license the SPDX file creator has concluded as governing the This field is to contain a list of all licenses found in the package. The relationship between licenses (i.e., conjunctive, disjunctive) is not specified in this field – it is simply a listing of all licenses found
  /// [homePage] Provide a place for the SPDX file creator to record a web site that serves as the package's home page
  /// [licenseDeclared] List the licenses that have been declared by the authors of the package
  /// [originator] If the package identified in the SPDX file originated from a different person or organization than identified as Package Supplier, this field identifies from where or whom the package originally came
  /// [packageType] The type of package: OS, MAVEN, GO, GO_STDLIB, etc.
  /// [summaryDescription] A short description of the package
  /// [supplier] Identify the actual distribution source for the package/directory identified in the SPDX file
  /// [title] Identify the full name of the package as given by the Package Originator
  /// [verificationCode] This field provides an independently reproducible mechanism identifying specific contents of a package based on the actual files (except the SPDX file itself, if it is included in the package) that make up each package and that correlates to the data in this SPDX file
  /// [version] Identify the version of the package
  PackageInfoNote({
    this.analyzed,
    this.attribution,
    this.checksum,
    this.copyright,
    this.detailedDescription,
    this.downloadLocation,
    this.externalRefs,
    this.filesLicenseInfo,
    this.homePage,
    this.licenseDeclared,
    this.originator,
    this.packageType,
    this.summaryDescription,
    this.supplier,
    this.title,
    this.verificationCode,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analyzed': ?analyzed,
      'attribution': ?attribution,
      'checksum': ?checksum,
      'copyright': ?copyright,
      'detailedDescription': ?detailedDescription,
      'downloadLocation': ?downloadLocation,
      'externalRefs': ?externalRefs == null ? null : pulumi.Input.encodeList<ExternalRef, Map<String, dynamic>>(externalRefs!, (value) => value.toMap()),
      'filesLicenseInfo': ?filesLicenseInfo,
      'homePage': ?homePage,
      'licenseDeclared': ?licenseDeclared == null ? null : licenseDeclared!.toMap(),
      'originator': ?originator,
      'packageType': ?packageType,
      'summaryDescription': ?summaryDescription,
      'supplier': ?supplier,
      'title': ?title,
      'verificationCode': ?verificationCode,
      'version': ?version,
    };
  }

  factory PackageInfoNote.fromMap(Map<String, dynamic> map) {
    return PackageInfoNote(
      analyzed: map['analyzed'] == null ? null : map['analyzed'] as bool,
      attribution: map['attribution'] == null ? null : map['attribution'] as String,
      checksum: map['checksum'] == null ? null : map['checksum'] as String,
      copyright: map['copyright'] == null ? null : map['copyright'] as String,
      detailedDescription: map['detailedDescription'] == null ? null : map['detailedDescription'] as String,
      downloadLocation: map['downloadLocation'] == null ? null : map['downloadLocation'] as String,
      externalRefs: map['externalRefs'] == null ? null : pulumi.Input.decodeList<ExternalRef>(map['externalRefs'], (value) => ExternalRef.fromMap((value as Map).cast<String, dynamic>())),
      filesLicenseInfo: map['filesLicenseInfo'] == null ? null : (map['filesLicenseInfo'] as List).cast<String>(),
      homePage: map['homePage'] == null ? null : map['homePage'] as String,
      licenseDeclared: map['licenseDeclared'] == null ? null : LicenseContaineranalysisV1alpha1.fromMap((map['licenseDeclared'] as Map).cast<String, dynamic>()),
      originator: map['originator'] == null ? null : map['originator'] as String,
      packageType: map['packageType'] == null ? null : map['packageType'] as String,
      summaryDescription: map['summaryDescription'] == null ? null : map['summaryDescription'] as String,
      supplier: map['supplier'] == null ? null : map['supplier'] as String,
      title: map['title'] == null ? null : map['title'] as String,
      verificationCode: map['verificationCode'] == null ? null : map['verificationCode'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

