import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_libvirt/index.dart' as pulumi_libvirt_index;

class LibvirtStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  LibvirtStack() {
    final pool = pulumi_libvirt_index.Pool(
      'pool',
      args: pulumi_libvirt_index.PoolArgs(type: pulumi.Input.asInput('dir')),
    );

    _outputProperties = [
      pulumi.OutputProperty(
        'poolName',
        pulumi.output(pool.name).apply<Object?>((value) => value),
      ),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => LibvirtStack());
}
