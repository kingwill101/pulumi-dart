// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'version_containeranalysis_v1beta1.dart';
import 'vulnerability_location_containeranalysis_v1beta1.dart';

/// Identifies all appearances of this vulnerability in the package for a specific distro/location. For example: glibc in cpe:/o:debian:debian_linux:8 for versions 2.1 - 2.2
class DetailContaineranalysisV1beta1 {
  /// The CPE URI in [cpe format](https://cpe.mitre.org/specification/) in which the vulnerability manifests. Examples include distro or storage location for vulnerable jar.
  final pulumi.Input<String> cpeUri;
  /// A vendor-specific description of this note.
  final pulumi.Input<String>? description;
  /// The fix for this specific package version.
  final pulumi.Input<VulnerabilityLocationContaineranalysisV1beta1>? fixedLocation;
  /// Whether this detail is obsolete. Occurrences are expected not to point to obsolete details.
  final pulumi.Input<bool>? isObsolete;
  /// The max version of the package in which the vulnerability exists.
  final pulumi.Input<VersionContaineranalysisV1beta1>? maxAffectedVersion;
  /// The min version of the package in which the vulnerability exists.
  final pulumi.Input<VersionContaineranalysisV1beta1>? minAffectedVersion;
  /// The name of the package where the vulnerability was found.
  final pulumi.Input<String> package;
  /// The type of package; whether native or non native(ruby gems, node.js packages etc).
  final pulumi.Input<String>? packageType;
  /// The severity (eg: distro assigned severity) for this vulnerability.
  final pulumi.Input<String>? severityName;
  /// The source from which the information in this Detail was obtained.
  final pulumi.Input<String>? source;
  /// The time this information was last changed at the source. This is an upstream timestamp from the underlying information source - e.g. Ubuntu security tracker.
  final pulumi.Input<String>? sourceUpdateTime;
  /// The name of the vendor of the product.
  final pulumi.Input<String>? vendor;

  /// Creates a new [DetailContaineranalysisV1beta1].
  /// [cpeUri] The CPE URI in [cpe format](https://cpe.mitre.org/specification/) in which the vulnerability manifests. Examples include distro or storage location for vulnerable jar.
  /// [description] A vendor-specific description of this note.
  /// [fixedLocation] The fix for this specific package version.
  /// [isObsolete] Whether this detail is obsolete. Occurrences are expected not to point to obsolete details.
  /// [maxAffectedVersion] The max version of the package in which the vulnerability exists.
  /// [minAffectedVersion] The min version of the package in which the vulnerability exists.
  /// [package] The name of the package where the vulnerability was found.
  /// [packageType] The type of package; whether native or non native(ruby gems, node.js packages etc).
  /// [severityName] The severity (eg: distro assigned severity) for this vulnerability.
  /// [source] The source from which the information in this Detail was obtained.
  /// [sourceUpdateTime] The time this information was last changed at the source. This is an upstream timestamp from the underlying information source - e.g. Ubuntu security tracker.
  /// [vendor] The name of the vendor of the product.
  DetailContaineranalysisV1beta1({
    required this.cpeUri,
    this.description,
    this.fixedLocation,
    this.isObsolete,
    this.maxAffectedVersion,
    this.minAffectedVersion,
    required this.package,
    this.packageType,
    this.severityName,
    this.source,
    this.sourceUpdateTime,
    this.vendor,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpeUri': cpeUri,
      'description': ?description,
      'fixedLocation': ?pulumi.Input.mapOptionalInputValue<VulnerabilityLocationContaineranalysisV1beta1, Map<String, dynamic>>(fixedLocation, (value) => value.toMap()),
      'isObsolete': ?isObsolete,
      'maxAffectedVersion': ?pulumi.Input.mapOptionalInputValue<VersionContaineranalysisV1beta1, Map<String, dynamic>>(maxAffectedVersion, (value) => value.toMap()),
      'minAffectedVersion': ?pulumi.Input.mapOptionalInputValue<VersionContaineranalysisV1beta1, Map<String, dynamic>>(minAffectedVersion, (value) => value.toMap()),
      'package': package,
      'packageType': ?packageType,
      'severityName': ?severityName,
      'source': ?source,
      'sourceUpdateTime': ?sourceUpdateTime,
      'vendor': ?vendor,
    };
  }

  factory DetailContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return DetailContaineranalysisV1beta1(
      cpeUri: (map['cpeUri'] as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      fixedLocation: map['fixedLocation'] == null ? null : (VulnerabilityLocationContaineranalysisV1beta1.fromMap((map['fixedLocation']! as Map).cast<String, dynamic>())).input(),
      isObsolete: map['isObsolete'] == null ? null : (map['isObsolete']! as bool).input(),
      maxAffectedVersion: map['maxAffectedVersion'] == null ? null : (VersionContaineranalysisV1beta1.fromMap((map['maxAffectedVersion']! as Map).cast<String, dynamic>())).input(),
      minAffectedVersion: map['minAffectedVersion'] == null ? null : (VersionContaineranalysisV1beta1.fromMap((map['minAffectedVersion']! as Map).cast<String, dynamic>())).input(),
      package: (map['package'] as String).input(),
      packageType: map['packageType'] == null ? null : (map['packageType']! as String).input(),
      severityName: map['severityName'] == null ? null : (map['severityName']! as String).input(),
      source: map['source'] == null ? null : (map['source']! as String).input(),
      sourceUpdateTime: map['sourceUpdateTime'] == null ? null : (map['sourceUpdateTime']! as String).input(),
      vendor: map['vendor'] == null ? null : (map['vendor']! as String).input(),
    );
  }
}

