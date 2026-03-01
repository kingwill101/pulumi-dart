import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_peered_dns_domain_args.dart';
import 'get_peered_dns_domain_result.dart';

/// [args] Arguments passed to this invoke. {@macro pulumi_servicenetworking_get_peered_dns_domain_get_peered_dns_domain_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPeeredDnsDomainResult> getPeeredDnsDomain(
  GetPeeredDnsDomainArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:servicenetworking/getPeeredDnsDomain:getPeeredDnsDomain',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPeeredDnsDomainResult.fromMap(result);
}
