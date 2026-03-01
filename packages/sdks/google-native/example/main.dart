// ignore_for_file: unused_import
import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_google_native/pulumi_google_native.dart' as provider;

class ExampleStack extends pulumi.Stack {
  ExampleStack() {
    // Add resources from package:pulumi_google_native.
    // Example:
    // final resource = provider.YourResource("example");
  }
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => ExampleStack());
}
