// ignore_for_file: unused_element, unnecessary_cast

import 'folder_custom_module_custom_config_custom_output_property_value_expression.dart';

class FolderCustomModuleCustomConfigCustomOutputProperty {
  /// Name of the property for the custom output.
  final String? name;
  /// The CEL expression for the custom output. A resource property can be specified
  /// to return the value of the property or a text string enclosed in quotation marks.
  /// Structure is documented below.
  final FolderCustomModuleCustomConfigCustomOutputPropertyValueExpression? valueExpression;

  /// Creates a new [FolderCustomModuleCustomConfigCustomOutputProperty].
  /// [name] Name of the property for the custom output.
  /// [valueExpression] The CEL expression for the custom output. A resource property can be specified
  FolderCustomModuleCustomConfigCustomOutputProperty({
    this.name,
    this.valueExpression,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'valueExpression': ?valueExpression == null ? null : valueExpression!.toMap(),
    };
  }

  factory FolderCustomModuleCustomConfigCustomOutputProperty.fromMap(Map<String, dynamic> map) {
    return FolderCustomModuleCustomConfigCustomOutputProperty(
      name: map['name'] == null ? null : map['name'] as String,
      valueExpression: map['valueExpression'] == null ? null : FolderCustomModuleCustomConfigCustomOutputPropertyValueExpression.fromMap((map['valueExpression'] as Map).cast<String, dynamic>()),
    );
  }
}

