// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents an intent parameter.
class GoogleCloudDialogflowCxV3beta1IntentParameter {
  /// The entity type of the parameter. Format: `projects/-/locations/-/agents/-/entityTypes/` for system entity types (for example, `projects/-/locations/-/agents/-/entityTypes/sys.date`), or `projects//locations//agents//entityTypes/` for developer entity types.
  final pulumi.Input<String> entityType;
  /// The unique identifier of the parameter. This field is used by training phrases to annotate their parts.
  final pulumi.Input<String> id;
  /// Indicates whether the parameter represents a list of values.
  final pulumi.Input<bool>? isList;
  /// Indicates whether the parameter content should be redacted in log. If redaction is enabled, the parameter content will be replaced by parameter name during logging. Note: the parameter content is subject to redaction if either parameter level redaction or entity type level redaction is enabled.
  final pulumi.Input<bool>? redact;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1IntentParameter].
  /// [entityType] The entity type of the parameter. Format: `projects/-/locations/-/agents/-/entityTypes/` for system entity types (for example, `projects/-/locations/-/agents/-/entityTypes/sys.date`), or `projects//locations//agents//entityTypes/` for developer entity types.
  /// [id] The unique identifier of the parameter. This field is used by training phrases to annotate their parts.
  /// [isList] Indicates whether the parameter represents a list of values.
  /// [redact] Indicates whether the parameter content should be redacted in log. If redaction is enabled, the parameter content will be replaced by parameter name during logging. Note: the parameter content is subject to redaction if either parameter level redaction or entity type level redaction is enabled.
  GoogleCloudDialogflowCxV3beta1IntentParameter({
    required this.entityType,
    required this.id,
    this.isList,
    this.redact,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entityType': entityType,
      'id': id,
      'isList': ?isList,
      'redact': ?redact,
    };
  }

  factory GoogleCloudDialogflowCxV3beta1IntentParameter.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1IntentParameter(
      entityType: pulumi.Input.fromValue(map['entityType'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      isList: (() { final guardedValue = map['isList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      redact: (() { final guardedValue = map['redact']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

