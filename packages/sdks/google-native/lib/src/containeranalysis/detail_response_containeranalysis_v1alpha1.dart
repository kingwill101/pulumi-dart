// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'version_response_containeranalysis_v1alpha1.dart';
import 'vulnerability_location_response.dart';

/// Identifies all occurrences of this vulnerability in the package for a specific distro/location For example: glibc in cpe:/o:debian:debian_linux:8 for versions 2.1 - 2.2
class DetailResponseContaineranalysisV1alpha1 {
  /// The cpe_uri in [cpe format] (https://cpe.mitre.org/specification/) in which the vulnerability manifests. Examples include distro or storage location for vulnerable jar. This field can be used as a filter in list requests.
  final pulumi.Input<String> cpeUri;
  /// A vendor-specific description of this note.
  final pulumi.Input<String> description;
  /// The fix for this specific package version.
  final pulumi.Input<VulnerabilityLocationResponse> fixedLocation;
  /// Whether this Detail is obsolete. Occurrences are expected not to point to obsolete details.
  final pulumi.Input<bool> isObsolete;
  /// The max version of the package in which the vulnerability exists.
  final pulumi.Input<VersionResponseContaineranalysisV1alpha1> maxAffectedVersion;
  /// The min version of the package in which the vulnerability exists.
  final pulumi.Input<VersionResponseContaineranalysisV1alpha1> minAffectedVersion;
  /// The name of the package where the vulnerability was found. This field can be used as a filter in list requests.
  final pulumi.Input<String> package;
  /// The type of package; whether native or non native(ruby gems, node.js packages etc)
  final pulumi.Input<String> packageType;
  /// The severity (eg: distro assigned severity) for this vulnerability.
  final pulumi.Input<String> severityName;
  /// The source from which the information in this Detail was obtained.
  final pulumi.Input<String> source;
  /// The vendor of the product. e.g. "google"
  final pulumi.Input<String> vendor;

  /// Creates a new [DetailResponseContaineranalysisV1alpha1].
  /// [cpeUri] The cpe_uri in [cpe format] (https://cpe.mitre.org/specification/) in which the vulnerability manifests. Examples include distro or storage location for vulnerable jar. This field can be used as a filter in list requests.
  /// [description] A vendor-specific description of this note.
  /// [fixedLocation] The fix for this specific package version.
  /// [isObsolete] Whether this Detail is obsolete. Occurrences are expected not to point to obsolete details.
  /// [maxAffectedVersion] The max version of the package in which the vulnerability exists.
  /// [minAffectedVersion] The min version of the package in which the vulnerability exists.
  /// [package] The name of the package where the vulnerability was found. This field can be used as a filter in list requests.
  /// [packageType] The type of package; whether native or non native(ruby gems, node.js packages etc)
  /// [severityName] The severity (eg: distro assigned severity) for this vulnerability.
  /// [source] The source from which the information in this Detail was obtained.
  /// [vendor] The vendor of the product. e.g. "google"
  DetailResponseContaineranalysisV1alpha1({
    required this.cpeUri,
    required this.description,
    required this.fixedLocation,
    required this.isObsolete,
    required this.maxAffectedVersion,
    required this.minAffectedVersion,
    required this.package,
    required this.packageType,
    required this.severityName,
    required this.source,
    required this.vendor,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpeUri': cpeUri,
      'description': description,
      'fixedLocation': pulumi.Input.mapInputValue<VulnerabilityLocationResponse, Map<String, dynamic>>(fixedLocation, (value) => value.toMap()),
      'isObsolete': isObsolete,
      'maxAffectedVersion': pulumi.Input.mapInputValue<VersionResponseContaineranalysisV1alpha1, Map<String, dynamic>>(maxAffectedVersion, (value) => value.toMap()),
      'minAffectedVersion': pulumi.Input.mapInputValue<VersionResponseContaineranalysisV1alpha1, Map<String, dynamic>>(minAffectedVersion, (value) => value.toMap()),
      'package': package,
      'packageType': packageType,
      'severityName': severityName,
      'source': source,
      'vendor': vendor,
    };
  }

  factory DetailResponseContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return DetailResponseContaineranalysisV1alpha1(
      cpeUri: pulumi.Input.fromValue(map['cpeUri'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      fixedLocation: pulumi.Input.fromValue(VulnerabilityLocationResponse.fromMap((map['fixedLocation']! as Map).cast<String, dynamic>())),
      isObsolete: pulumi.Input.fromValue(map['isObsolete'] as bool),
      maxAffectedVersion: pulumi.Input.fromValue(VersionResponseContaineranalysisV1alpha1.fromMap((map['maxAffectedVersion']! as Map).cast<String, dynamic>())),
      minAffectedVersion: pulumi.Input.fromValue(VersionResponseContaineranalysisV1alpha1.fromMap((map['minAffectedVersion']! as Map).cast<String, dynamic>())),
      package: pulumi.Input.fromValue(map['package'] as String),
      packageType: pulumi.Input.fromValue(map['packageType'] as String),
      severityName: pulumi.Input.fromValue(map['severityName'] as String),
      source: pulumi.Input.fromValue(map['source'] as String),
      vendor: pulumi.Input.fromValue(map['vendor'] as String),
    );
  }
}

