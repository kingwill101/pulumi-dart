import 'package:pulumi/pulumi.dart' as pulumi;
import 'example_args.dart';

class Example extends pulumi.CustomResource {
  late final pulumi.Output<Map<String, Map<String, dynamic>>?> mapMapUnionProperty;
  late final pulumi.Output<List<dynamic>?> stringEnumUnionListProperty;
  late final pulumi.Output<dynamic> stringOrIntegerProperty;
  late final pulumi.Output<dynamic> typedEnumProperty;

  /// Creates a new [Example].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Example]. {@macro pulumi_index_example_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Example(
    String name, {
    ExampleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'union:index:Example',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '18.0.0').merge(options),
        ) {
    mapMapUnionProperty = registerOutput<Map<String, Map<String, dynamic>>?>('mapMapUnionProperty', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<Map<String, dynamic>>(guardedValue, (value) => (value as Map).cast<String, dynamic>()); });
    stringEnumUnionListProperty = registerOutput<List<dynamic>?>('stringEnumUnionListProperty', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<dynamic>(); });
    stringOrIntegerProperty = registerOutput<dynamic>('stringOrIntegerProperty');
    typedEnumProperty = registerOutput<dynamic>('typedEnumProperty');
  }
}
