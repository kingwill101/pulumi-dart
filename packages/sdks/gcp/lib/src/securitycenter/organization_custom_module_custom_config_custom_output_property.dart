// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_custom_module_custom_config_custom_output_property_value_expression.dart';

class OrganizationCustomModuleCustomConfigCustomOutputProperty {
  /// Name of the property for the custom output.
  final pulumi.Input<String>? name;
  /// The CEL expression for the custom output. A resource property can be specified
  /// to return the value of the property or a text string enclosed in quotation marks.
  /// Structure is documented below.
  final pulumi.Input<OrganizationCustomModuleCustomConfigCustomOutputPropertyValueExpression>? valueExpression;

  /// Creates a new [OrganizationCustomModuleCustomConfigCustomOutputProperty].
  /// [name] Name of the property for the custom output.
  /// [valueExpression] The CEL expression for the custom output. A resource property can be specified
  const OrganizationCustomModuleCustomConfigCustomOutputProperty({
    this.name,
    this.valueExpression,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'valueExpression': ?pulumi.Input.mapOptionalInputValue<OrganizationCustomModuleCustomConfigCustomOutputPropertyValueExpression, Map<String, dynamic>>(valueExpression, (value) => value.toMap()),
    };
  }

  factory OrganizationCustomModuleCustomConfigCustomOutputProperty.fromMap(Map<String, dynamic> map) {
    return OrganizationCustomModuleCustomConfigCustomOutputProperty(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      valueExpression: (() { final guardedValue = map['valueExpression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OrganizationCustomModuleCustomConfigCustomOutputPropertyValueExpression.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

