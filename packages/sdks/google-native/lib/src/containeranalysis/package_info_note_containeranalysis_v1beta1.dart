// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'external_ref_containeranalysis_v1beta1.dart';
import 'license_containeranalysis_v1beta1.dart';

/// PackageInfoNote represents an SPDX Package Information section: https://spdx.github.io/spdx-spec/3-package-information/
class PackageInfoNoteContaineranalysisV1beta1 {
  /// Indicates whether the file content of this package has been available for or subjected to analysis when creating the SPDX document
  final pulumi.Input<bool>? analyzed;
  /// A place for the SPDX data creator to record, at the package level, acknowledgements that may be needed to be communicated in some contexts
  final pulumi.Input<String>? attribution;
  /// Provide an independently reproducible mechanism that permits unique identification of a specific package that correlates to the data in this SPDX file
  final pulumi.Input<String>? checksum;
  /// Identify the copyright holders of the package, as well as any dates present
  final pulumi.Input<String>? copyright;
  /// A more detailed description of the package
  final pulumi.Input<String>? detailedDescription;
  /// This section identifies the download Universal Resource Locator (URL), or a specific location within a version control system (VCS) for the package at the time that the SPDX file was created
  final pulumi.Input<String>? downloadLocation;
  /// ExternalRef
  final pulumi.Input<List<ExternalRefContaineranalysisV1beta1>>? externalRefs;
  /// Contain the license the SPDX file creator has concluded as governing the This field is to contain a list of all licenses found in the package. The relationship between licenses (i.e., conjunctive, disjunctive) is not specified in this field – it is simply a listing of all licenses found
  final pulumi.Input<List<String>>? filesLicenseInfo;
  /// Provide a place for the SPDX file creator to record a web site that serves as the package's home page
  final pulumi.Input<String>? homePage;
  /// List the licenses that have been declared by the authors of the package
  final pulumi.Input<LicenseContaineranalysisV1beta1>? licenseDeclared;
  /// If the package identified in the SPDX file originated from a different person or organization than identified as Package Supplier, this field identifies from where or whom the package originally came
  final pulumi.Input<String>? originator;
  /// The type of package: OS, MAVEN, GO, GO_STDLIB, etc.
  final pulumi.Input<String>? packageType;
  /// A short description of the package
  final pulumi.Input<String>? summaryDescription;
  /// Identify the actual distribution source for the package/directory identified in the SPDX file
  final pulumi.Input<String>? supplier;
  /// Identify the full name of the package as given by the Package Originator
  final pulumi.Input<String>? title;
  /// This field provides an independently reproducible mechanism identifying specific contents of a package based on the actual files (except the SPDX file itself, if it is included in the package) that make up each package and that correlates to the data in this SPDX file
  final pulumi.Input<String>? verificationCode;
  /// Identify the version of the package
  final pulumi.Input<String>? version;

  /// Creates a new [PackageInfoNoteContaineranalysisV1beta1].
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
  const PackageInfoNoteContaineranalysisV1beta1({
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
      'externalRefs': ?pulumi.Input.mapOptionalInputValue<List<ExternalRefContaineranalysisV1beta1>, List<Map<String, dynamic>>>(externalRefs, (value) => pulumi.Input.encodeList<ExternalRefContaineranalysisV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'filesLicenseInfo': ?filesLicenseInfo,
      'homePage': ?homePage,
      'licenseDeclared': ?pulumi.Input.mapOptionalInputValue<LicenseContaineranalysisV1beta1, Map<String, dynamic>>(licenseDeclared, (value) => value.toMap()),
      'originator': ?originator,
      'packageType': ?packageType,
      'summaryDescription': ?summaryDescription,
      'supplier': ?supplier,
      'title': ?title,
      'verificationCode': ?verificationCode,
      'version': ?version,
    };
  }

  factory PackageInfoNoteContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return PackageInfoNoteContaineranalysisV1beta1(
      analyzed: (() { final guardedValue = map['analyzed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      attribution: (() { final guardedValue = map['attribution']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      checksum: (() { final guardedValue = map['checksum']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      copyright: (() { final guardedValue = map['copyright']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      detailedDescription: (() { final guardedValue = map['detailedDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      downloadLocation: (() { final guardedValue = map['downloadLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      externalRefs: (() { final guardedValue = map['externalRefs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ExternalRefContaineranalysisV1beta1>(guardedValue, (value) => ExternalRefContaineranalysisV1beta1.fromMap((value as Map).cast<String, dynamic>()))); })(),
      filesLicenseInfo: (() { final guardedValue = map['filesLicenseInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      homePage: (() { final guardedValue = map['homePage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      licenseDeclared: (() { final guardedValue = map['licenseDeclared']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LicenseContaineranalysisV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      originator: (() { final guardedValue = map['originator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      packageType: (() { final guardedValue = map['packageType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      summaryDescription: (() { final guardedValue = map['summaryDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      supplier: (() { final guardedValue = map['supplier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      title: (() { final guardedValue = map['title']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      verificationCode: (() { final guardedValue = map['verificationCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
