import 'package:pulumi/pulumi.dart';

class ExampleStack extends Stack {
  late final Output<Object?> greeting;
  late final Output<Object?> stack;
  late final Output<Object?> project;

  ExampleStack() {
    final config = Config();
    final name = config.get('name') ?? 'world';

    greeting = Output.create<Object?>('hello-$name');
    stack = Output.create<Object?>(Deployment.instance.stackName);
    project = Output.create<Object?>(Deployment.instance.projectName);
  }

  @override
  List<OutputProperty> getOutputProperties() {
    return [
      OutputProperty('greeting', greeting),
      OutputProperty('stack', stack),
      OutputProperty('project', project),
    ];
  }
}

Future<void> main() async {
  await Deployment.runOrThrow(() => ExampleStack());
}
