// ignore_for_file: unused_import
import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_openstack/pulumi_openstack.dart' as provider;

class ExampleStack extends pulumi.Stack {
  ExampleStack() {
    // Add resources from package:pulumi_openstack.
    // Example:
    // final resource = provider.YourResource("example");
  }
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => ExampleStack());
}
