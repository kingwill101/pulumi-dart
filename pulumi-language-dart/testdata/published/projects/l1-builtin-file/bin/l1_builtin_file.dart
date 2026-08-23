import 'package:pulumi/pulumi.dart' as pulumi;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final fileContent = pulumi.readTextFile('testfile.txt');
    final fileB64 = pulumi.fileBase64('testfile.txt');
    final fileSha = pulumi.fileBase64Sha256('testfile.txt');

    _outputProperties = [
      pulumi.OutputProperty('fileContent', pulumi.output(fileContent).apply<Object?>((value) => value)),
      pulumi.OutputProperty('fileB64', pulumi.output(fileB64).apply<Object?>((value) => value)),
      pulumi.OutputProperty('fileSha', pulumi.output(fileSha).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
