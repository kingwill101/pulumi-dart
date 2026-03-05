import 'package:pulumi/pulumi.dart' as pulumi;
import 'run_args.dart';
import 'run_result.dart';

/// A local command to be executed unconditionally.
/// This command will always be run on any preview or deployment. Use `local.Command` to conditionally execute commands as part of the resource lifecycle.
/// [args] Arguments passed to this invoke. {@macro pulumi_local_run_args_doc}
/// [options] Invoke options controlling this call.
Future<RunResult> run(
  RunArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'command:local:run',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return RunResult.fromMap(result);
}
