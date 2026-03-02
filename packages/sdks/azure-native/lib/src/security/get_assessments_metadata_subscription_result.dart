// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAssessmentsMetadataSubscription.
class GetAssessmentsMetadataSubscriptionResult {
  /// BuiltIn if the assessment based on built-in Azure Policy definition, Custom if the assessment based on custom Azure Policy definition
  final String assessmentType;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  final List<String>? categories;
  /// Human readable description of the assessment
  final String? description;
  /// User friendly display name of the assessment
  final String displayName;
  /// Resource Id
  final String id;
  /// The implementation effort required to remediate this assessment
  final String? implementationEffort;
  /// Resource name
  final String name;
  /// Azure resource ID of the policy definition that turns this assessment calculation on
  final String policyDefinitionId;
  /// True if this assessment is in preview release status
  final bool? preview;
  /// Human readable description of what you should do to mitigate this security issue
  final String? remediationDescription;
  /// The severity level of the assessment
  final String severity;
  final List<String>? threats;
  /// Resource type
  final String type;
  /// The user impact of the assessment
  final String? userImpact;

  /// Creates a new [GetAssessmentsMetadataSubscriptionResult].
  /// [assessmentType] BuiltIn if the assessment based on built-in Azure Policy definition, Custom if the assessment based on custom Azure Policy definition
  /// [azureApiVersion] The Azure API version of the resource.
  /// [categories] Optional.
  /// [description] Human readable description of the assessment
  /// [displayName] User friendly display name of the assessment
  /// [id] Resource Id
  /// [implementationEffort] The implementation effort required to remediate this assessment
  /// [name] Resource name
  /// [policyDefinitionId] Azure resource ID of the policy definition that turns this assessment calculation on
  /// [preview] True if this assessment is in preview release status
  /// [remediationDescription] Human readable description of what you should do to mitigate this security issue
  /// [severity] The severity level of the assessment
  /// [threats] Optional.
  /// [type] Resource type
  /// [userImpact] The user impact of the assessment
  GetAssessmentsMetadataSubscriptionResult({
    required this.assessmentType,
    required this.azureApiVersion,
    this.categories,
    this.description,
    required this.displayName,
    required this.id,
    this.implementationEffort,
    required this.name,
    required this.policyDefinitionId,
    this.preview,
    this.remediationDescription,
    required this.severity,
    this.threats,
    required this.type,
    this.userImpact,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessmentType': assessmentType,
      'azureApiVersion': azureApiVersion,
      'categories': ?categories,
      'description': ?description,
      'displayName': displayName,
      'id': id,
      'implementationEffort': ?implementationEffort,
      'name': name,
      'policyDefinitionId': policyDefinitionId,
      'preview': ?preview,
      'remediationDescription': ?remediationDescription,
      'severity': severity,
      'threats': ?threats,
      'type': type,
      'userImpact': ?userImpact,
    };
  }

  factory GetAssessmentsMetadataSubscriptionResult.fromMap(Map<String, dynamic> map) {
    return GetAssessmentsMetadataSubscriptionResult(
      assessmentType: map['assessmentType'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      categories: map['categories'] == null ? null : (map['categories']! as List).cast<String>(),
      description: map['description'] == null ? null : map['description']! as String,
      displayName: map['displayName'] as String,
      id: map['id'] as String,
      implementationEffort: map['implementationEffort'] == null ? null : map['implementationEffort']! as String,
      name: map['name'] as String,
      policyDefinitionId: map['policyDefinitionId'] as String,
      preview: map['preview'] == null ? null : map['preview']! as bool,
      remediationDescription: map['remediationDescription'] == null ? null : map['remediationDescription']! as String,
      severity: map['severity'] as String,
      threats: map['threats'] == null ? null : (map['threats']! as List).cast<String>(),
      type: map['type'] as String,
      userImpact: map['userImpact'] == null ? null : map['userImpact']! as String,
    );
  }
}

