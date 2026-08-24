import 'package:pulumi/pulumi.dart' as pulumi;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    _outputProperties = [
      pulumi.OutputProperty('zero', pulumi.output(0).apply<Object?>((value) => value)),
      pulumi.OutputProperty('one', pulumi.output(1).apply<Object?>((value) => value)),
      pulumi.OutputProperty('e', pulumi.output(2.718).apply<Object?>((value) => value)),
      pulumi.OutputProperty('minInt32', pulumi.output(-2147483648).apply<Object?>((value) => value)),
      pulumi.OutputProperty('max', pulumi.output(179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368).apply<Object?>((value) => value)),
      pulumi.OutputProperty('min', pulumi.output(4.940656458412465441765687928682213723650598026143247644255856825006755072702087518652998363616359923797965646954457177309266567103559397963987747960107819e-324).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
