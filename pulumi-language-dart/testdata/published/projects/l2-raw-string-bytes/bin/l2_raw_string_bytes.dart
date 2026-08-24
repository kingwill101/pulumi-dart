import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_bytesink/index.dart' as pulumi_bytesink_index;
import 'package:pulumi_bytesource/index.dart' as pulumi_bytesource_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final source = pulumi_bytesource_index.ResourceType('source', args: pulumi_bytesource_index.ResourceArgs(base64: pulumi.Input.asInput('AGhlbGxvIID+/yB3b3JsZPAo'), ));
    final sink = pulumi_bytesink_index.ResourceType('sink', args: pulumi_bytesink_index.ResourceArgs(bytes: pulumi.Input.asInput(pulumi.output(source.bytes).apply<String>((value) => (value).toString())), expectBase64: pulumi.Input.asInput(pulumi.output(source.base64).apply<String>((value) => (value).toString())), ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
