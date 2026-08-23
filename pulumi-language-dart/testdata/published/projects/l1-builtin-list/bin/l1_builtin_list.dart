import 'package:pulumi/pulumi.dart' as pulumi;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final config = pulumi.Config();
    final aList = config.requireObject<List<dynamic>>('aList');
    final singleOrNoneList = config.requireObject<List<dynamic>>('singleOrNoneList');
    final aString = config.require('aString');

    _outputProperties = [
      pulumi.OutputProperty('elementOutput1', pulumi.output(pulumi.listElement(aList, (1).toInt())).apply<Object?>((value) => value)),
      pulumi.OutputProperty('elementOutput2', pulumi.output(pulumi.listElement(aList, (2).toInt())).apply<Object?>((value) => value)),
      pulumi.OutputProperty('joinOutput', pulumi.output((aList).join('|')).apply<Object?>((value) => value)),
      pulumi.OutputProperty('lengthOutput', pulumi.output((aList).length).apply<Object?>((value) => value)),
      pulumi.OutputProperty('splitOutput', pulumi.output((aString).split('-')).apply<Object?>((value) => value)),
      pulumi.OutputProperty('singleOrNoneOutput', pulumi.output([pulumi.singleOrNone(singleOrNoneList)]).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
