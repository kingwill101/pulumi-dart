import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_docker/index.dart' as pulumi_docker_index;

class DockerStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  DockerStack() {
    final demoImage = pulumi_docker_index.Image(
      'demo-image',
      args: pulumi_docker_index.ImageArgs(
        imageName: pulumi.Input.asInput('username/image:local'),
        skipPush: pulumi.Input.asInput(true),
        build: pulumi.Input.asInput(
          pulumi_docker_index.DockerBuild(
            dockerfile: ('Dockerfile').input(),
            context: ('.').input(),
            platform: ('linux/amd64').input(),
          ),
        ),
      ),
    );

    _outputProperties = [
      pulumi.OutputProperty(
        'imageName',
        pulumi.output(demoImage.imageName).apply<Object?>((value) => value),
      ),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => DockerStack());
}
