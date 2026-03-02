// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'expr.dart';

/// An individual name-value pair that defines a custom source property.
class GoogleCloudSecuritycenterV1Property {
  /// Name of the property for the custom output.
  final pulumi.Input<String>? name;
  /// The CEL expression for the custom output. A resource property can be specified to return the value of the property or a text string enclosed in quotation marks.
  final pulumi.Input<Expr>? valueExpression;

  /// Creates a new [GoogleCloudSecuritycenterV1Property].
  /// [name] Name of the property for the custom output.
  /// [valueExpression] The CEL expression for the custom output. A resource property can be specified to return the value of the property or a text string enclosed in quotation marks.
  GoogleCloudSecuritycenterV1Property({
    this.name,
    this.valueExpression,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'valueExpression': ?pulumi.Input.mapOptionalInputValue<Expr, Map<String, dynamic>>(valueExpression, (value) => value.toMap()),
    };
  }

  factory GoogleCloudSecuritycenterV1Property.fromMap(Map<String, dynamic> map) {
    return GoogleCloudSecuritycenterV1Property(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      valueExpression: map['valueExpression'] == null ? null : (Expr.fromMap((map['valueExpression'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

