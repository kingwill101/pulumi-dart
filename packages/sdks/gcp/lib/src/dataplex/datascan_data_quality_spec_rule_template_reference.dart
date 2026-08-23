// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'datascan_data_quality_spec_rule_template_reference_value.dart';

class DatascanDataQualitySpecRuleTemplateReference {
  /// The resource name of the template entry.
  final pulumi.Input<String> name;
  /// The map of parameter name and value.
  /// Structure is documented below.
  final pulumi.Input<List<DatascanDataQualitySpecRuleTemplateReferenceValue>>? values;

  /// Creates a new [DatascanDataQualitySpecRuleTemplateReference].
  /// [name] The resource name of the template entry.
  /// [values] The map of parameter name and value.
  const DatascanDataQualitySpecRuleTemplateReference({
    required this.name,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'values': ?pulumi.Input.mapOptionalInputValue<List<DatascanDataQualitySpecRuleTemplateReferenceValue>, List<Map<String, dynamic>>>(values, (value) => pulumi.Input.encodeList<DatascanDataQualitySpecRuleTemplateReferenceValue, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DatascanDataQualitySpecRuleTemplateReference.fromMap(Map<String, dynamic> map) {
    return DatascanDataQualitySpecRuleTemplateReference(
      name: pulumi.Input.fromValue(map['name'] as String),
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DatascanDataQualitySpecRuleTemplateReferenceValue>(guardedValue, (value) => DatascanDataQualitySpecRuleTemplateReferenceValue.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
