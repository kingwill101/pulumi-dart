import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_random/index.dart' as pulumi_random_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final pet = pulumi_random_index.RandomPet(
      'pet',
      args: pulumi_random_index.RandomPetArgs(length: pulumi.Input.asInput(2)),
    );

    _outputProperties = [
      pulumi.OutputProperty(
        'petName',
        pulumi.output(pet.id).apply<Object?>((value) => value),
      ),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
