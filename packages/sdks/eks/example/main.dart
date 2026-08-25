import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_eks/index.dart' as eks;

class ExampleStack extends pulumi.Stack {
  ExampleStack() {
    final cluster = eks.Cluster(
      'cluster',
      args: eks.ClusterArgs(skipDefaultNodeGroup: true.input()),
    );
    registerOutputs({'oidcIssuer': cluster.oidcIssuer});
  }
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => ExampleStack());
}
