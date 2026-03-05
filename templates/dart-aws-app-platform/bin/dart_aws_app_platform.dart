import 'package:pulumi/pulumi.dart';
import 'package:pulumi_aws_app_platform/pulumi_aws_app_platform.dart'
    as app_platform;

class AppPlatformStack extends Stack {
  AppPlatformStack() {
    final app = app_platform.AwsDartWebService(
      'app',
      args: app_platform.AwsDartWebServiceArgs(
        sourcePath: './app'.input(),
        port: 8080.input(),
      ),
    );

    registerOutputs({'url': app.url, 'fqdn': app.fqdn});
  }
}

Future<void> main() async {
  await Deployment.runOrThrow(() => AppPlatformStack());
}

