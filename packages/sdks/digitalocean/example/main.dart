import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_digitalocean/index.dart' as pulumi_digitalocean_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final tag = pulumi_digitalocean_index.Tag(
      'tag',
      args: pulumi_digitalocean_index.TagArgs(
        name: pulumi.Input.asInput('pulumi-dart-example'),
      ),
    );

    _outputProperties = [
      pulumi.OutputProperty(
        'tagId',
        pulumi.output(tag.id).apply<Object?>((value) => value),
      ),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
