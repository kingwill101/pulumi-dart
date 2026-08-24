// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'element_type.dart';

/// {@template pulumi_index_element_type_args_doc}
/// The set of arguments for ElementType.
/// {@endtemplate}
/// {@macro pulumi_index_element_type_args_doc}
class ElementTypeArgs {
  final pulumi.Input<ElementType> elementType;

  /// Creates a new [ElementTypeArgs].
  /// [elementType] Required.
  const ElementTypeArgs({
    required this.elementType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'elementType': pulumi.Input.mapInputValue<ElementType, Map<String, dynamic>>(elementType, (value) => value.toMap()),
    };
  }

  factory ElementTypeArgs.fromMap(Map<String, dynamic> map) {
    return ElementTypeArgs(
      elementType: pulumi.Input.fromValue(ElementType.fromMap((map['elementType']! as Map).cast<String, dynamic>())),
    );
  }
}
