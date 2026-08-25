import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_docker_build/index.dart' as pulumi_docker_build_index;

class DockerBuildStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  DockerBuildStack() {
    final image = pulumi_docker_build_index.Image(
      'image',
      args: pulumi_docker_build_index.ImageArgs(
        tags: pulumi.Input.asInput(<String>['alpine-local']),
        load: pulumi.Input.asInput(true),
        push: pulumi.Input.asInput(false),
        context: pulumi.Input.asInput(
          pulumi_docker_build_index.BuildContext(location: ('.').input()),
        ),
        dockerfile: pulumi.Input.asInput(
          pulumi_docker_build_index.Dockerfile(inline: ('FROM alpine').input()),
        ),
      ),
    );

    _outputProperties = [
      pulumi.OutputProperty(
        'imageRef',
        pulumi.output(image.ref).apply<Object?>((value) => value),
      ),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => DockerBuildStack());
}
