import 'package:pulumi/pulumi.dart' as pulumi;
import 'bar.dart';
import 'foo_args.dart';

class Foo extends pulumi.CustomResource {
  late final pulumi.Output<List<List<List<Bar>>>> conditionSets;
  late final pulumi.Output<Map<String, Map<String, Map<String, String>>>> privateEndpoint;

  /// Creates a new [Foo].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Foo]. {@macro pulumi_index_foo_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Foo(
    String name, {
    FooArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'nestedcollections:index:Foo',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '50.0.0').merge(options),
        ) {
    conditionSets = registerOutput<List<List<List<Bar>>>>('conditionSets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<List<List<Bar>>>(guardedValue, (value) => pulumi.Input.decodeList<List<Bar>>(value, (value) => pulumi.Input.decodeList<Bar>(value, (value) => Bar.fromMap((value as Map).cast<String, dynamic>())))); });
    privateEndpoint = registerOutput<Map<String, Map<String, Map<String, String>>>>('privateEndpoint', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<Map<String, Map<String, String>>>(guardedValue, (value) => pulumi.Input.decodeMapValues<Map<String, String>>(value, (value) => (value as Map).cast<String, String>())); });
  }
}
