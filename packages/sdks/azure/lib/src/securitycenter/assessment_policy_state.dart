// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AssessmentPolicy resources.
class AssessmentPolicyState {
  /// A list of the categories of resource that is at risk when the Security Center Assessment is unhealthy. Possible values are `Unknown`, `Compute`, `Data`, `IdentityAndAccess`, `IoT` and `Networking`.
  final pulumi.Input<List<String>>? categories;
  /// The description of the Security Center Assessment.
  final pulumi.Input<String>? description;
  /// The user-friendly display name of the Security Center Assessment.
  final pulumi.Input<String>? displayName;
  /// The implementation effort which is used to remediate the Security Center Assessment. Possible values are `Low`, `Moderate` and `High`.
  final pulumi.Input<String>? implementationEffort;
  /// The GUID as the name of the Security Center Assessment Policy.
  final pulumi.Input<String>? name;
  /// The description which is used to mitigate the security issue.
  final pulumi.Input<String>? remediationDescription;
  /// The severity level of the Security Center Assessment. Possible values are `Low`, `Medium` and `High`. Defaults to `Medium`.
  final pulumi.Input<String>? severity;
  /// A list of the threat impacts for the Security Center Assessment. Possible values are `AccountBreach`, `DataExfiltration`, `DataSpillage`, `DenialOfService`, `ElevationOfPrivilege`, `MaliciousInsider`, `MissingCoverage` and `ThreatResistance`.
  final pulumi.Input<List<String>>? threats;
  /// The user impact of the Security Center Assessment. Possible values are `Low`, `Moderate` and `High`.
  final pulumi.Input<String>? userImpact;

  /// Creates a new [AssessmentPolicyState].
  /// [categories] A list of the categories of resource that is at risk when the Security Center Assessment is unhealthy. Possible values are `Unknown`, `Compute`, `Data`, `IdentityAndAccess`, `IoT` and `Networking`.
  /// [description] The description of the Security Center Assessment.
  /// [displayName] The user-friendly display name of the Security Center Assessment.
  /// [implementationEffort] The implementation effort which is used to remediate the Security Center Assessment. Possible values are `Low`, `Moderate` and `High`.
  /// [name] The GUID as the name of the Security Center Assessment Policy.
  /// [remediationDescription] The description which is used to mitigate the security issue.
  /// [severity] The severity level of the Security Center Assessment. Possible values are `Low`, `Medium` and `High`. Defaults to `Medium`.
  /// [threats] A list of the threat impacts for the Security Center Assessment. Possible values are `AccountBreach`, `DataExfiltration`, `DataSpillage`, `DenialOfService`, `ElevationOfPrivilege`, `MaliciousInsider`, `MissingCoverage` and `ThreatResistance`.
  /// [userImpact] The user impact of the Security Center Assessment. Possible values are `Low`, `Moderate` and `High`.
  AssessmentPolicyState({
    this.categories,
    this.description,
    this.displayName,
    this.implementationEffort,
    this.name,
    this.remediationDescription,
    this.severity,
    this.threats,
    this.userImpact,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'categories': ?categories,
      'description': ?description,
      'displayName': ?displayName,
      'implementationEffort': ?implementationEffort,
      'name': ?name,
      'remediationDescription': ?remediationDescription,
      'severity': ?severity,
      'threats': ?threats,
      'userImpact': ?userImpact,
    };
  }

  factory AssessmentPolicyState.fromMap(Map<String, dynamic> map) {
    return AssessmentPolicyState(
      categories: map['categories'] == null ? null : ((map['categories']! as List).cast<String>()).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      implementationEffort: map['implementationEffort'] == null ? null : (map['implementationEffort']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      remediationDescription: map['remediationDescription'] == null ? null : (map['remediationDescription']! as String).input(),
      severity: map['severity'] == null ? null : (map['severity']! as String).input(),
      threats: map['threats'] == null ? null : ((map['threats']! as List).cast<String>()).input(),
      userImpact: map['userImpact'] == null ? null : (map['userImpact']! as String).input(),
    );
  }
}

