// ignore_for_file: unused_import
import 'package:pulumi/pulumi.dart';
import 'package:pulumi_terraform/pulumi_terraform.dart' as provider;

class ExampleStack extends Stack {
  ExampleStack() {
    // Add resources from package:pulumi_terraform.
    // Example:
    // final resource = provider.YourResource("example");
  }
}

Future<void> main() async {
  await Deployment.runOrThrow(() => ExampleStack());
}
