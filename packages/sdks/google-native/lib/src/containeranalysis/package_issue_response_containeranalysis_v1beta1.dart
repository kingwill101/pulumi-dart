// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vulnerability_location_response_containeranalysis_v1beta1.dart';

/// This message wraps a location affected by a vulnerability and its associated fix (if one is available).
class PackageIssueResponseContaineranalysisV1beta1 {
  /// The location of the vulnerability.
  final pulumi.Input<VulnerabilityLocationResponseContaineranalysisV1beta1>
  affectedLocation;

  /// The distro or language system assigned severity for this vulnerability when that is available and note provider assigned severity when it is not available.
  final pulumi.Input<String> effectiveSeverity;

  /// The location of the available fix for vulnerability.
  final pulumi.Input<VulnerabilityLocationResponseContaineranalysisV1beta1>
  fixedLocation;

  /// The type of package (e.g. OS, MAVEN, GO).
  final pulumi.Input<String> packageType;

  /// Deprecated, use Details.effective_severity instead The severity (e.g., distro assigned severity) for this vulnerability.
  final pulumi.Input<String> severityName;

  /// Creates a new [PackageIssueResponseContaineranalysisV1beta1].
  /// [affectedLocation] The location of the vulnerability.
  /// [effectiveSeverity] The distro or language system assigned severity for this vulnerability when that is available and note provider assigned severity when it is not available.
  /// [fixedLocation] The location of the available fix for vulnerability.
  /// [packageType] The type of package (e.g. OS, MAVEN, GO).
  /// [severityName] Deprecated, use Details.effective_severity instead The severity (e.g., distro assigned severity) for this vulnerability.
  PackageIssueResponseContaineranalysisV1beta1({
    required this.affectedLocation,
    required this.effectiveSeverity,
    required this.fixedLocation,
    required this.packageType,
    required this.severityName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'affectedLocation':
          pulumi.Input.mapInputValue<
            VulnerabilityLocationResponseContaineranalysisV1beta1,
            Map<String, dynamic>
          >(affectedLocation, (value) => value.toMap()),
      'effectiveSeverity': effectiveSeverity,
      'fixedLocation':
          pulumi.Input.mapInputValue<
            VulnerabilityLocationResponseContaineranalysisV1beta1,
            Map<String, dynamic>
          >(fixedLocation, (value) => value.toMap()),
      'packageType': packageType,
      'severityName': severityName,
    };
  }

  factory PackageIssueResponseContaineranalysisV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return PackageIssueResponseContaineranalysisV1beta1(
      affectedLocation: pulumi.Input.fromValue(
        VulnerabilityLocationResponseContaineranalysisV1beta1.fromMap(
          (map['affectedLocation']! as Map).cast<String, dynamic>(),
        ),
      ),
      effectiveSeverity: pulumi.Input.fromValue(
        map['effectiveSeverity'] as String,
      ),
      fixedLocation: pulumi.Input.fromValue(
        VulnerabilityLocationResponseContaineranalysisV1beta1.fromMap(
          (map['fixedLocation']! as Map).cast<String, dynamic>(),
        ),
      ),
      packageType: pulumi.Input.fromValue(map['packageType'] as String),
      severityName: pulumi.Input.fromValue(map['severityName'] as String),
    );
  }
}
