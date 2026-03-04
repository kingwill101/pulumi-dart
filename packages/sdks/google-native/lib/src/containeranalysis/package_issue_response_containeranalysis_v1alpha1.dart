// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vulnerability_location_response.dart';

/// This message wraps a location affected by a vulnerability and its associated fix (if one is available).
class PackageIssueResponseContaineranalysisV1alpha1 {
  /// The location of the vulnerability.
  final pulumi.Input<VulnerabilityLocationResponse> affectedLocation;

  /// The distro or language system assigned severity for this vulnerability when that is available and note provider assigned severity when distro or language system has not yet assigned a severity for this vulnerability.
  final pulumi.Input<String> effectiveSeverity;

  /// The location of the available fix for vulnerability.
  final pulumi.Input<VulnerabilityLocationResponse> fixedLocation;

  /// The type of package (e.g. OS, MAVEN, GO).
  final pulumi.Input<String> packageType;
  final pulumi.Input<String> severityName;

  /// Creates a new [PackageIssueResponseContaineranalysisV1alpha1].
  /// [affectedLocation] The location of the vulnerability.
  /// [effectiveSeverity] The distro or language system assigned severity for this vulnerability when that is available and note provider assigned severity when distro or language system has not yet assigned a severity for this vulnerability.
  /// [fixedLocation] The location of the available fix for vulnerability.
  /// [packageType] The type of package (e.g. OS, MAVEN, GO).
  /// [severityName] Required.
  PackageIssueResponseContaineranalysisV1alpha1({
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
            VulnerabilityLocationResponse,
            Map<String, dynamic>
          >(affectedLocation, (value) => value.toMap()),
      'effectiveSeverity': effectiveSeverity,
      'fixedLocation':
          pulumi.Input.mapInputValue<
            VulnerabilityLocationResponse,
            Map<String, dynamic>
          >(fixedLocation, (value) => value.toMap()),
      'packageType': packageType,
      'severityName': severityName,
    };
  }

  factory PackageIssueResponseContaineranalysisV1alpha1.fromMap(
    Map<String, dynamic> map,
  ) {
    return PackageIssueResponseContaineranalysisV1alpha1(
      affectedLocation: pulumi.Input.fromValue(
        VulnerabilityLocationResponse.fromMap(
          (map['affectedLocation']! as Map).cast<String, dynamic>(),
        ),
      ),
      effectiveSeverity: pulumi.Input.fromValue(
        map['effectiveSeverity'] as String,
      ),
      fixedLocation: pulumi.Input.fromValue(
        VulnerabilityLocationResponse.fromMap(
          (map['fixedLocation']! as Map).cast<String, dynamic>(),
        ),
      ),
      packageType: pulumi.Input.fromValue(map['packageType'] as String),
      severityName: pulumi.Input.fromValue(map['severityName'] as String),
    );
  }
}
