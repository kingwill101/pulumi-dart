// ignore_for_file: unused_element, unnecessary_cast


/// Represents an intent parameter.
class GoogleCloudDialogflowCxV3IntentParameterResponse {
  /// The entity type of the parameter. Format: `projects/-/locations/-/agents/-/entityTypes/` for system entity types (for example, `projects/-/locations/-/agents/-/entityTypes/sys.date`), or `projects//locations//agents//entityTypes/` for developer entity types.
  final String entityType;
  /// Indicates whether the parameter represents a list of values.
  final bool isList;
  /// Indicates whether the parameter content should be redacted in log. If redaction is enabled, the parameter content will be replaced by parameter name during logging. Note: the parameter content is subject to redaction if either parameter level redaction or entity type level redaction is enabled.
  final bool redact;

  /// Creates a new [GoogleCloudDialogflowCxV3IntentParameterResponse].
  /// [entityType] The entity type of the parameter. Format: `projects/-/locations/-/agents/-/entityTypes/` for system entity types (for example, `projects/-/locations/-/agents/-/entityTypes/sys.date`), or `projects//locations//agents//entityTypes/` for developer entity types.
  /// [isList] Indicates whether the parameter represents a list of values.
  /// [redact] Indicates whether the parameter content should be redacted in log. If redaction is enabled, the parameter content will be replaced by parameter name during logging. Note: the parameter content is subject to redaction if either parameter level redaction or entity type level redaction is enabled.
  GoogleCloudDialogflowCxV3IntentParameterResponse({
    required this.entityType,
    required this.isList,
    required this.redact,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entityType': entityType,
      'isList': isList,
      'redact': redact,
    };
  }

  factory GoogleCloudDialogflowCxV3IntentParameterResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3IntentParameterResponse(
      entityType: map['entityType'] as String,
      isList: map['isList'] as bool,
      redact: map['redact'] as bool,
    );
  }
}

