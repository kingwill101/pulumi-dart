import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_terraform/state.dart' as terraform;

class ExampleStack extends pulumi.Stack {
  ExampleStack() {
    final state = pulumi.output(
      terraform.getLocalReference(
        terraform.GetLocalReferenceArgs(path: 'terraform.tfstate'.input()),
      ),
    );
    registerOutputs({
      'message': state.apply((result) => result.outputs['message']),
    });
  }
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => ExampleStack());
}
