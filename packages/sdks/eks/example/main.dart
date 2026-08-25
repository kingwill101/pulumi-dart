import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_eks/index.dart' as eks;

class EksStack extends pulumi.Stack {
  EksStack() {
    final cluster = eks.Cluster(
      'cluster',
      args: eks.ClusterArgs(skipDefaultNodeGroup: true.input()),
    );
    registerOutputs({'oidcIssuer': cluster.oidcIssuer});
  }
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => EksStack());
}
