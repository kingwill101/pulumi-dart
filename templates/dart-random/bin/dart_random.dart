import 'package:pulumi/pulumi.dart';
import 'package:pulumi_random/index.dart' as random;

class RandomStack extends Stack {
  RandomStack() {
    final pet = random.RandomPet(
      'pet',
      args: random.RandomPetArgs(prefix: 'dart'),
    );

    registerOutputs({'petName': pet.id});
  }
}

Future<void> main() async {
  await Deployment.runOrThrow(() => RandomStack());
}
