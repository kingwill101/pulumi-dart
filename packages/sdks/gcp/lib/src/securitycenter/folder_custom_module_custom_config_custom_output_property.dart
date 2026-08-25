// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'folder_custom_module_custom_config_custom_output_property_value_expression.dart';

class FolderCustomModuleCustomConfigCustomOutputProperty {
  /// Name of the property for the custom output.
  final pulumi.Input<String?>? name;
  /// The CEL expression for the custom output. A resource property can be specified
  /// to return the value of the property or a text string enclosed in quotation marks.
  /// Structure is documented below.
  final pulumi.Input<FolderCustomModuleCustomConfigCustomOutputPropertyValueExpression?>? valueExpression;

  /// Creates a new [FolderCustomModuleCustomConfigCustomOutputProperty].
  /// [name] Name of the property for the custom output.
  /// [valueExpression] The CEL expression for the custom output. A resource property can be specified
  const FolderCustomModuleCustomConfigCustomOutputProperty({
    this.name,
    this.valueExpression,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'valueExpression': ?pulumi.Input.mapOptionalInputValue<FolderCustomModuleCustomConfigCustomOutputPropertyValueExpression, Map<String, dynamic>>(valueExpression, (value) => value.toMap()),
    };
  }

  factory FolderCustomModuleCustomConfigCustomOutputProperty.fromMap(Map<String, dynamic> map) {
    return FolderCustomModuleCustomConfigCustomOutputProperty(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      valueExpression: (() { final guardedValue = map['valueExpression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FolderCustomModuleCustomConfigCustomOutputPropertyValueExpression.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
