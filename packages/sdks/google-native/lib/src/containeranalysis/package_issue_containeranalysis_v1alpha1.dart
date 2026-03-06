// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vulnerability_location.dart';

/// This message wraps a location affected by a vulnerability and its associated fix (if one is available).
class PackageIssueContaineranalysisV1alpha1 {
  /// The location of the vulnerability.
  final pulumi.Input<VulnerabilityLocation>? affectedLocation;
  /// The location of the available fix for vulnerability.
  final pulumi.Input<VulnerabilityLocation>? fixedLocation;
  /// The type of package (e.g. OS, MAVEN, GO).
  final pulumi.Input<String>? packageType;
  final pulumi.Input<String>? severityName;

  /// Creates a new [PackageIssueContaineranalysisV1alpha1].
  /// [affectedLocation] The location of the vulnerability.
  /// [fixedLocation] The location of the available fix for vulnerability.
  /// [packageType] The type of package (e.g. OS, MAVEN, GO).
  /// [severityName] Optional.
  const PackageIssueContaineranalysisV1alpha1({
    this.affectedLocation,
    this.fixedLocation,
    this.packageType,
    this.severityName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'affectedLocation': ?pulumi.Input.mapOptionalInputValue<VulnerabilityLocation, Map<String, dynamic>>(affectedLocation, (value) => value.toMap()),
      'fixedLocation': ?pulumi.Input.mapOptionalInputValue<VulnerabilityLocation, Map<String, dynamic>>(fixedLocation, (value) => value.toMap()),
      'packageType': ?packageType,
      'severityName': ?severityName,
    };
  }

  factory PackageIssueContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return PackageIssueContaineranalysisV1alpha1(
      affectedLocation: (() { final guardedValue = map['affectedLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VulnerabilityLocation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fixedLocation: (() { final guardedValue = map['fixedLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VulnerabilityLocation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      packageType: (() { final guardedValue = map['packageType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      severityName: (() { final guardedValue = map['severityName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

