import 'package:pulumi/pulumi.dart';

class RawInvokeStack extends Stack {
  late final Output<Object?> accountId;
  late final Output<Object?> arn;

  RawInvokeStack() {
    final callerIdentity = Deployment.instance.invoke<Map<String, dynamic>>(
      'aws:index/getCallerIdentity:getCallerIdentity',
      const {},
    );

    accountId = Output.create(
      callerIdentity.then((result) => result['accountId']),
    );
    arn = Output.create(callerIdentity.then((result) => result['arn']));
  }

  @override
  List<OutputProperty> getOutputProperties() {
    return [OutputProperty('accountId', accountId), OutputProperty('arn', arn)];
  }
}

Future<void> main() async {
  await Deployment.runOrThrow(() => RawInvokeStack());
}
