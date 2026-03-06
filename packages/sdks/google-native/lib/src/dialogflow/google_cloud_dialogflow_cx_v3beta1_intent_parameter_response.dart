// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents an intent parameter.
class GoogleCloudDialogflowCxV3beta1IntentParameterResponse {
  /// The entity type of the parameter. Format: `projects/-/locations/-/agents/-/entityTypes/` for system entity types (for example, `projects/-/locations/-/agents/-/entityTypes/sys.date`), or `projects//locations//agents//entityTypes/` for developer entity types.
  final pulumi.Input<String> entityType;
  /// Indicates whether the parameter represents a list of values.
  final pulumi.Input<bool> isList;
  /// Indicates whether the parameter content should be redacted in log. If redaction is enabled, the parameter content will be replaced by parameter name during logging. Note: the parameter content is subject to redaction if either parameter level redaction or entity type level redaction is enabled.
  final pulumi.Input<bool> redact;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1IntentParameterResponse].
  /// [entityType] The entity type of the parameter. Format: `projects/-/locations/-/agents/-/entityTypes/` for system entity types (for example, `projects/-/locations/-/agents/-/entityTypes/sys.date`), or `projects//locations//agents//entityTypes/` for developer entity types.
  /// [isList] Indicates whether the parameter represents a list of values.
  /// [redact] Indicates whether the parameter content should be redacted in log. If redaction is enabled, the parameter content will be replaced by parameter name during logging. Note: the parameter content is subject to redaction if either parameter level redaction or entity type level redaction is enabled.
  const GoogleCloudDialogflowCxV3beta1IntentParameterResponse({
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

  factory GoogleCloudDialogflowCxV3beta1IntentParameterResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1IntentParameterResponse(
      entityType: pulumi.Input.fromValue(map['entityType'] as String),
      isList: pulumi.Input.fromValue(map['isList'] as bool),
      redact: pulumi.Input.fromValue(map['redact'] as bool),
    );
  }
}

