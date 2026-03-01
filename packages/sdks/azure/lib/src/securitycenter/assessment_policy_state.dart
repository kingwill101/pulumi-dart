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
    pulumi.Output<List<String>>? categories,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? implementationEffort,
    pulumi.Output<String>? name,
    pulumi.Output<String>? remediationDescription,
    pulumi.Output<String>? severity,
    pulumi.Output<List<String>>? threats,
    pulumi.Output<String>? userImpact,
  }) :
      categories = pulumi.Input.asOptionalInput<List<String>>(categories),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      implementationEffort = pulumi.Input.asOptionalInput<String>(implementationEffort),
      name = pulumi.Input.asOptionalInput<String>(name),
      remediationDescription = pulumi.Input.asOptionalInput<String>(remediationDescription),
      severity = pulumi.Input.asOptionalInput<String>(severity),
      threats = pulumi.Input.asOptionalInput<List<String>>(threats),
      userImpact = pulumi.Input.asOptionalInput<String>(userImpact);

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
      categories: map['categories'] == null ? null : pulumi.Output.create<List<String>>((map['categories'] as List).cast<String>()),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      implementationEffort: map['implementationEffort'] == null ? null : pulumi.Output.create<String>(map['implementationEffort'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      remediationDescription: map['remediationDescription'] == null ? null : pulumi.Output.create<String>(map['remediationDescription'] as String),
      severity: map['severity'] == null ? null : pulumi.Output.create<String>(map['severity'] as String),
      threats: map['threats'] == null ? null : pulumi.Output.create<List<String>>((map['threats'] as List).cast<String>()),
      userImpact: map['userImpact'] == null ? null : pulumi.Output.create<String>(map['userImpact'] as String),
    );
  }
}

