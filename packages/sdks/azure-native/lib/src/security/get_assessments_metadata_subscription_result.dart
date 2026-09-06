// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAssessmentsMetadataSubscription.
class GetAssessmentsMetadataSubscriptionResult {
  /// BuiltIn if the assessment based on built-in Azure Policy definition, Custom if the assessment based on custom Azure Policy definition
  final String? assessmentType;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  final List<String>? categories;
  /// Human readable description of the assessment
  final String? description;
  /// User friendly display name of the assessment
  final String? displayName;
  /// Resource Id
  final String? id;
  /// The implementation effort required to remediate this assessment
  final String? implementationEffort;
  /// Resource name
  final String? name;
  /// Azure resource ID of the policy definition that turns this assessment calculation on
  final String? policyDefinitionId;
  /// True if this assessment is in preview release status
  final bool? preview;
  /// Human readable description of what you should do to mitigate this security issue
  final String? remediationDescription;
  /// The severity level of the assessment
  final String? severity;
  final List<String>? threats;
  /// Resource type
  final String? type;
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
  const GetAssessmentsMetadataSubscriptionResult({
    this.assessmentType,
    this.azureApiVersion,
    this.categories,
    this.description,
    this.displayName,
    this.id,
    this.implementationEffort,
    this.name,
    this.policyDefinitionId,
    this.preview,
    this.remediationDescription,
    this.severity,
    this.threats,
    this.type,
    this.userImpact,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessmentType': ?assessmentType,
      'azureApiVersion': ?azureApiVersion,
      'categories': ?categories,
      'description': ?description,
      'displayName': ?displayName,
      'id': ?id,
      'implementationEffort': ?implementationEffort,
      'name': ?name,
      'policyDefinitionId': ?policyDefinitionId,
      'preview': ?preview,
      'remediationDescription': ?remediationDescription,
      'severity': ?severity,
      'threats': ?threats,
      'type': ?type,
      'userImpact': ?userImpact,
    };
  }

  factory GetAssessmentsMetadataSubscriptionResult.fromMap(Map<String, dynamic> map) {
    return GetAssessmentsMetadataSubscriptionResult(
      assessmentType: (() { final guardedValue = map['assessmentType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      categories: (() { final guardedValue = map['categories']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      implementationEffort: (() { final guardedValue = map['implementationEffort']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policyDefinitionId: (() { final guardedValue = map['policyDefinitionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      preview: (() { final guardedValue = map['preview']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      remediationDescription: (() { final guardedValue = map['remediationDescription']; if (guardedValue == null) return null; return guardedValue as String; })(),
      severity: (() { final guardedValue = map['severity']; if (guardedValue == null) return null; return guardedValue as String; })(),
      threats: (() { final guardedValue = map['threats']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      userImpact: (() { final guardedValue = map['userImpact']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
