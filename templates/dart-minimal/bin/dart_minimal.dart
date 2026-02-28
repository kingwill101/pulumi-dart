import 'package:pulumi/pulumi.dart';

class AppStack extends Stack {
  AppStack() {
    registerOutputs({'message': Output.create<Object?>('hello from dart')});
  }
}

Future<void> main() async {
  await Deployment.runOrThrow(() => AppStack());
}
