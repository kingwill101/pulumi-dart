import 'package:pulumi/pulumi.dart';

class RandomStack extends Stack {
  RandomStack() {
    final petName = Output.create('pulumi-dart-random-template-disabled');

    registerOutputs({'petName': petName});
  }
}

Future<void> main() async {
  await Deployment.runOrThrow(() => RandomStack());
}
