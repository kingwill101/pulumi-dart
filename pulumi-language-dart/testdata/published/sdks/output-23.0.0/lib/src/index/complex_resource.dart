import 'package:pulumi/pulumi.dart' as pulumi;
import 'complex_resource_args.dart';
import 'data.dart';

class ComplexResource extends pulumi.CustomResource {
  late final pulumi.Output<List<String>> outputArray;
  late final pulumi.Output<Map<String, String>> outputMap;
  late final pulumi.Output<Data> outputObject;
  late final pulumi.Output<double> value;

  /// Creates a new [ComplexResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ComplexResource]. {@macro pulumi_index_complex_resource_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ComplexResource(
    String name, {
    ComplexResourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'output:index:ComplexResource',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '23.0.0').merge(options),
        ) {
    outputArray = registerOutput<List<String>>('outputArray', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    outputMap = registerOutput<Map<String, String>>('outputMap', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    outputObject = registerOutput<Data>('outputObject', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return Data.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    value = registerOutput<double>('value');
  }
}
