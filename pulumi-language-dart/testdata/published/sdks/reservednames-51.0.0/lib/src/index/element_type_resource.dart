import 'package:pulumi/pulumi.dart' as pulumi;
import 'element_type.dart';
import 'element_type_args.dart';

class ElementTypeResource extends pulumi.CustomResource {
  late final pulumi.Output<ElementType> elementType;

  /// Creates a new [ElementTypeResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ElementTypeResource]. {@macro pulumi_index_element_type_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ElementTypeResource(
    String name, {
    ElementTypeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'reservednames:index:ElementType',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '51.0.0').merge(options),
        ) {
    elementType = registerOutput<ElementType>('elementType', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ElementType.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
