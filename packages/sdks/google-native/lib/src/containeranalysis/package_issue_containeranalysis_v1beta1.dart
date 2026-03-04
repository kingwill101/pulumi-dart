// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vulnerability_location_containeranalysis_v1beta1.dart';

/// This message wraps a location affected by a vulnerability and its associated fix (if one is available).
class PackageIssueContaineranalysisV1beta1 {
  /// The location of the vulnerability.
  final pulumi.Input<VulnerabilityLocationContaineranalysisV1beta1>
  affectedLocation;

  /// The location of the available fix for vulnerability.
  final pulumi.Input<VulnerabilityLocationContaineranalysisV1beta1>?
  fixedLocation;

  /// The type of package (e.g. OS, MAVEN, GO).
  final pulumi.Input<String>? packageType;

  /// Deprecated, use Details.effective_severity instead The severity (e.g., distro assigned severity) for this vulnerability.
  final pulumi.Input<String>? severityName;

  /// Creates a new [PackageIssueContaineranalysisV1beta1].
  /// [affectedLocation] The location of the vulnerability.
  /// [fixedLocation] The location of the available fix for vulnerability.
  /// [packageType] The type of package (e.g. OS, MAVEN, GO).
  /// [severityName] Deprecated, use Details.effective_severity instead The severity (e.g., distro assigned severity) for this vulnerability.
  PackageIssueContaineranalysisV1beta1({
    required this.affectedLocation,
    this.fixedLocation,
    this.packageType,
    this.severityName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'affectedLocation':
          pulumi.Input.mapInputValue<
            VulnerabilityLocationContaineranalysisV1beta1,
            Map<String, dynamic>
          >(affectedLocation, (value) => value.toMap()),
      'fixedLocation':
          ?pulumi.Input.mapOptionalInputValue<
            VulnerabilityLocationContaineranalysisV1beta1,
            Map<String, dynamic>
          >(fixedLocation, (value) => value.toMap()),
      'packageType': ?packageType,
      'severityName': ?severityName,
    };
  }

  factory PackageIssueContaineranalysisV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return PackageIssueContaineranalysisV1beta1(
      affectedLocation: pulumi.Input.fromValue(
        VulnerabilityLocationContaineranalysisV1beta1.fromMap(
          (map['affectedLocation']! as Map).cast<String, dynamic>(),
        ),
      ),
      fixedLocation: (() {
        final guardedValue = map['fixedLocation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VulnerabilityLocationContaineranalysisV1beta1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      packageType: (() {
        final guardedValue = map['packageType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      severityName: (() {
        final guardedValue = map['severityName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
