// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3_advanced_settings.dart';
import 'google_cloud_dialogflow_cx_v3_form_parameter_fill_behavior.dart';

/// Represents a form parameter.
class GoogleCloudDialogflowCxV3FormParameter {
  /// Hierarchical advanced settings for this parameter. The settings exposed at the lower level overrides the settings exposed at the higher level.
  final pulumi.Input<GoogleCloudDialogflowCxV3AdvancedSettings>? advancedSettings;
  /// The default value of an optional parameter. If the parameter is required, the default value will be ignored.
  final pulumi.Input<dynamic>? defaultValue;
  /// The human-readable name of the parameter, unique within the form.
  final pulumi.Input<String> displayName;
  /// The entity type of the parameter. Format: `projects/-/locations/-/agents/-/entityTypes/` for system entity types (for example, `projects/-/locations/-/agents/-/entityTypes/sys.date`), or `projects//locations//agents//entityTypes/` for developer entity types.
  final pulumi.Input<String> entityType;
  /// Defines fill behavior for the parameter.
  final pulumi.Input<GoogleCloudDialogflowCxV3FormParameterFillBehavior> fillBehavior;
  /// Indicates whether the parameter represents a list of values.
  final pulumi.Input<bool>? isList;
  /// Indicates whether the parameter content should be redacted in log. If redaction is enabled, the parameter content will be replaced by parameter name during logging. Note: the parameter content is subject to redaction if either parameter level redaction or entity type level redaction is enabled.
  final pulumi.Input<bool>? redact;
  /// Indicates whether the parameter is required. Optional parameters will not trigger prompts; however, they are filled if the user specifies them. Required parameters must be filled before form filling concludes.
  final pulumi.Input<bool>? required;

  /// Creates a new [GoogleCloudDialogflowCxV3FormParameter].
  /// [advancedSettings] Hierarchical advanced settings for this parameter. The settings exposed at the lower level overrides the settings exposed at the higher level.
  /// [defaultValue] The default value of an optional parameter. If the parameter is required, the default value will be ignored.
  /// [displayName] The human-readable name of the parameter, unique within the form.
  /// [entityType] The entity type of the parameter. Format: `projects/-/locations/-/agents/-/entityTypes/` for system entity types (for example, `projects/-/locations/-/agents/-/entityTypes/sys.date`), or `projects//locations//agents//entityTypes/` for developer entity types.
  /// [fillBehavior] Defines fill behavior for the parameter.
  /// [isList] Indicates whether the parameter represents a list of values.
  /// [redact] Indicates whether the parameter content should be redacted in log. If redaction is enabled, the parameter content will be replaced by parameter name during logging. Note: the parameter content is subject to redaction if either parameter level redaction or entity type level redaction is enabled.
  /// [required] Indicates whether the parameter is required. Optional parameters will not trigger prompts; however, they are filled if the user specifies them. Required parameters must be filled before form filling concludes.
  const GoogleCloudDialogflowCxV3FormParameter({
    this.advancedSettings,
    this.defaultValue,
    required this.displayName,
    required this.entityType,
    required this.fillBehavior,
    this.isList,
    this.redact,
    this.required,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedSettings': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3AdvancedSettings, Map<String, dynamic>>(advancedSettings, (value) => value.toMap()),
      'defaultValue': ?defaultValue,
      'displayName': displayName,
      'entityType': entityType,
      'fillBehavior': pulumi.Input.mapInputValue<GoogleCloudDialogflowCxV3FormParameterFillBehavior, Map<String, dynamic>>(fillBehavior, (value) => value.toMap()),
      'isList': ?isList,
      'redact': ?redact,
      'required': ?required,
    };
  }

  factory GoogleCloudDialogflowCxV3FormParameter.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3FormParameter(
      advancedSettings: (() { final guardedValue = map['advancedSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDialogflowCxV3AdvancedSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      defaultValue: (() { final guardedValue = map['defaultValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      entityType: pulumi.Input.fromValue(map['entityType'] as String),
      fillBehavior: pulumi.Input.fromValue(GoogleCloudDialogflowCxV3FormParameterFillBehavior.fromMap((map['fillBehavior']! as Map).cast<String, dynamic>())),
      isList: (() { final guardedValue = map['isList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      redact: (() { final guardedValue = map['redact']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      required: (() { final guardedValue = map['required']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

