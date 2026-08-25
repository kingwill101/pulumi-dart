// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_page_form_parameter_advanced_settings.dart';
import 'cx_page_form_parameter_fill_behavior.dart';

class CxPageFormParameter {
  /// Hierarchical advanced settings for this parameter. The settings exposed at the lower level overrides the settings exposed at the higher level.
  /// Hierarchy: Agent-&gt;Flow-&gt;Page-&gt;Fulfillment/Parameter.
  /// Structure is documented below.
  final pulumi.Input<CxPageFormParameterAdvancedSettings?>? advancedSettings;
  /// The default value of an optional parameter. If the parameter is required, the default value will be ignored.
  final pulumi.Input<String?>? defaultValue;
  /// The human-readable name of the parameter, unique within the form.
  final pulumi.Input<String?>? displayName;
  /// The entity type of the parameter.
  /// Format: projects/-/locations/-/agents/-/entityTypes/&lt;System Entity Type ID&gt; for system entity types (for example, projects/-/locations/-/agents/-/entityTypes/sys.date), or projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/entityTypes/&lt;Entity Type ID&gt; for developer entity types.
  final pulumi.Input<String?>? entityType;
  /// Defines fill behavior for the parameter.
  /// Structure is documented below.
  final pulumi.Input<CxPageFormParameterFillBehavior?>? fillBehavior;
  /// Indicates whether the parameter represents a list of values.
  final pulumi.Input<bool?>? isList;
  /// Indicates whether the parameter content should be redacted in log.
  /// If redaction is enabled, the parameter content will be replaced by parameter name during logging. Note: the parameter content is subject to redaction if either parameter level redaction or entity type level redaction is enabled.
  final pulumi.Input<bool?>? redact;
  /// Indicates whether the parameter is required. Optional parameters will not trigger prompts; however, they are filled if the user specifies them.
  /// Required parameters must be filled before form filling concludes.
  final pulumi.Input<bool?>? required;

  /// Creates a new [CxPageFormParameter].
  /// [advancedSettings] Hierarchical advanced settings for this parameter. The settings exposed at the lower level overrides the settings exposed at the higher level.
  /// [defaultValue] The default value of an optional parameter. If the parameter is required, the default value will be ignored.
  /// [displayName] The human-readable name of the parameter, unique within the form.
  /// [entityType] The entity type of the parameter.
  /// [fillBehavior] Defines fill behavior for the parameter.
  /// [isList] Indicates whether the parameter represents a list of values.
  /// [redact] Indicates whether the parameter content should be redacted in log.
  /// [required] Indicates whether the parameter is required. Optional parameters will not trigger prompts; however, they are filled if the user specifies them.
  const CxPageFormParameter({
    this.advancedSettings,
    this.defaultValue,
    this.displayName,
    this.entityType,
    this.fillBehavior,
    this.isList,
    this.redact,
    this.required,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedSettings': ?pulumi.Input.mapOptionalInputValue<CxPageFormParameterAdvancedSettings, Map<String, dynamic>>(advancedSettings, (value) => value.toMap()),
      'defaultValue': ?defaultValue,
      'displayName': ?displayName,
      'entityType': ?entityType,
      'fillBehavior': ?pulumi.Input.mapOptionalInputValue<CxPageFormParameterFillBehavior, Map<String, dynamic>>(fillBehavior, (value) => value.toMap()),
      'isList': ?isList,
      'redact': ?redact,
      'required': ?required,
    };
  }

  factory CxPageFormParameter.fromMap(Map<String, dynamic> map) {
    return CxPageFormParameter(
      advancedSettings: (() { final guardedValue = map['advancedSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CxPageFormParameterAdvancedSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      defaultValue: (() { final guardedValue = map['defaultValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      entityType: (() { final guardedValue = map['entityType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fillBehavior: (() { final guardedValue = map['fillBehavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CxPageFormParameterFillBehavior.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      isList: (() { final guardedValue = map['isList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      redact: (() { final guardedValue = map['redact']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      required: (() { final guardedValue = map['required']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
