import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_hcloud/index.dart' as pulumi_hcloud_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final firewall = pulumi_hcloud_index.Firewall(
      'firewall',
      args: pulumi_hcloud_index.FirewallArgs(
        name: pulumi.Input.asInput('pulumi-dart-example'),
      ),
    );

    _outputProperties = [
      pulumi.OutputProperty(
        'firewallId',
        pulumi.output(firewall.id).apply<Object?>((value) => value),
      ),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
