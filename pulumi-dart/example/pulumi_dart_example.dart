import 'package:pulumi/pulumi.dart';

class RandomProvider extends ProviderResource {
  RandomProvider(String name)
    : super('random', name, const {}, CustomResourceOptions());
}

class RandomPet extends CustomResource {
  late final Output<String?> result;

  RandomPet(
    String name, {
    Input<int>? length,
    Input<String>? prefix,
    Input<String>? separator,
    CustomResourceOptions? options,
  }) : super(
         'random:index:RandomPet',
         name,
         _args(length, prefix, separator),
         options ?? CustomResourceOptions(),
       ) {
    result = registerOutput<String?>('id');
  }

  static Inputs _args(
    Input<int>? length,
    Input<String>? prefix,
    Input<String>? separator,
  ) {
    final args = <String, dynamic>{};
    if (length != null) args['length'] = length;
    if (prefix != null) args['prefix'] = prefix;
    if (separator != null) args['separator'] = separator;
    return Input.mapToInputs(args);
  }
}

class ExampleStack extends Stack {
  late final Output<Object?> petName;
  late final Output<Object?> providerUrn;
  late final Output<Object?> stack;
  late final Output<Object?> project;

  ExampleStack() {
    final config = Config();
    final name = config.get('name') ?? 'world';

    final provider = RandomProvider('default');
    final pet = RandomPet(
      'pet',
      length: Input.fromValue(2),
      prefix: Input.fromValue(name),
      separator: Input.fromValue('-'),
      options: CustomResourceOptions(provider: provider),
    );

    petName = pet.result.apply<Object?>((value) => value);
    providerUrn = provider.urn.apply<Object?>((value) => value);
    stack = Output.create<Object?>(Deployment.instance.stackName);
    project = Output.create<Object?>(Deployment.instance.projectName);
  }

  @override
  List<OutputProperty> getOutputProperties() {
    return [
      OutputProperty('petName', petName),
      OutputProperty('providerUrn', providerUrn),
      OutputProperty('stack', stack),
      OutputProperty('project', project),
    ];
  }
}

Future<void> main() async {
  await Deployment.runOrThrow(() => ExampleStack());
}
