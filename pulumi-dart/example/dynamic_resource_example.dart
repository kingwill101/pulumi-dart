import 'package:pulumi/dynamic.dart' as dyn;
import 'package:pulumi/pulumi.dart' as pulumi;

class ExampleDynamicResource extends dyn.Resource {
  ExampleDynamicResource(String name)
    : super(
        dyn.SerializedProviderReference.fromValue(
          '<serialized-provider-payload>',
        ),
        name,
        pulumi.Input.mapToInputs(<String, dynamic>{'message': 'hello'}),
        module: 'example',
        type: 'ExampleResource',
      );
}

class DynamicStack extends pulumi.Stack {
  late final pulumi.Output<Object?> resourceId;

  DynamicStack() {
    final resource = ExampleDynamicResource('example');
    resourceId = resource.id.apply<Object?>((value) => value);
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return <pulumi.OutputProperty>[
      pulumi.OutputProperty('resourceId', resourceId),
    ];
  }
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => DynamicStack());
}
