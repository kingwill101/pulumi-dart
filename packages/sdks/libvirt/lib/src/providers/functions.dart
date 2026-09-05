import 'package:pulumi/pulumi.dart' as pulumi;
import 'terraform_config_args.dart';
import 'terraform_config_result.dart';
import '../internal/package_registration.dart' as package_registration;

/// This function returns a Terraform config object with terraform-namecased keys,to be used with the Terraform Module Provider.
/// [args] Arguments passed to this invoke. {@macro pulumi_providers_terraform_config_args_doc}
/// [options] Invoke options controlling this call.
Future<TerraformConfigResult> terraformConfig(
  TerraformConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'pulumi:providers:libvirt/terraformConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
    registerPackageRequest: package_registration.registerPackageRequest,
  );
  return TerraformConfigResult.fromMap(result);
}

pulumi.Output<TerraformConfigResult> terraformConfigOutput(
  TerraformConfigArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'pulumi:providers:libvirt/terraformConfig',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
    registerPackageRequest: package_registration.registerPackageRequest,
  ).apply(TerraformConfigResult.fromMap);
}
