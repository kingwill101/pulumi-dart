import 'package:pulumi/pulumi.dart' as pulumi;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    _outputProperties = [
      pulumi.OutputProperty('zero', pulumi.output(0).apply<Object?>((value) => value)),
      pulumi.OutputProperty('one', pulumi.output(1).apply<Object?>((value) => value)),
      pulumi.OutputProperty('e', pulumi.output(2.718).apply<Object?>((value) => value)),
      pulumi.OutputProperty('minInt32', pulumi.output(-2.147483648e+09).apply<Object?>((value) => value)),
      pulumi.OutputProperty('max', pulumi.output(1.7976931348623157081452742373170435679807056752584499659891747680315726078002853876058955863276687817154045895351438246423432132688946418276846754670353752e+308).apply<Object?>((value) => value)),
      pulumi.OutputProperty('min', pulumi.output(4.940656458412465441765687928682213723650598026143247644255856825006755072702087518652998363616359923797965646954457177309266567103559397963987747960107819e-324).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
