// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CxIntentParameter {
  /// The entity type of the parameter.
  /// Format: projects/-/locations/-/agents/-/entityTypes/<System Entity Type ID> for system entity types (for example, projects/-/locations/-/agents/-/entityTypes/sys.date), or projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/entityTypes/<Entity Type ID> for developer entity types.
  final pulumi.Input<String> entityType;
  /// The unique identifier of the parameter. This field is used by training phrases to annotate their parts.
  final pulumi.Input<String> id;
  /// Indicates whether the parameter represents a list of values.
  final pulumi.Input<bool>? isList;
  /// Indicates whether the parameter content should be redacted in log. If redaction is enabled, the parameter content will be replaced by parameter name during logging.
  /// Note: the parameter content is subject to redaction if either parameter level redaction or entity type level redaction is enabled.
  final pulumi.Input<bool>? redact;

  /// Creates a new [CxIntentParameter].
  /// [entityType] The entity type of the parameter.
  /// [id] The unique identifier of the parameter. This field is used by training phrases to annotate their parts.
  /// [isList] Indicates whether the parameter represents a list of values.
  /// [redact] Indicates whether the parameter content should be redacted in log. If redaction is enabled, the parameter content will be replaced by parameter name during logging.
  CxIntentParameter({
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

  factory CxIntentParameter.fromMap(Map<String, dynamic> map) {
    return CxIntentParameter(
      entityType: (map['entityType'] as String).input(),
      id: (map['id'] as String).input(),
      isList: map['isList'] == null ? null : (map['isList'] as bool).input(),
      redact: map['redact'] == null ? null : (map['redact'] as bool).input(),
    );
  }
}

