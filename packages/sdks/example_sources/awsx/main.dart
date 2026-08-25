import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_awsx/ecr.dart' as ecr;

class AwsxStack extends pulumi.Stack {
  AwsxStack() {
    final repository = ecr.Repository(
      'repository',
      args: ecr.RepositoryArgs(forceDelete: true.input()),
    );
    registerOutputs({'repositoryUrl': repository.url});
  }
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => AwsxStack());
}
