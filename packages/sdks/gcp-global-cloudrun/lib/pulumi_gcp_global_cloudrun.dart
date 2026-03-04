// ignore_for_file: non_constant_identifier_names

import 'package:pulumi_gcp_global_cloudrun/index.dart' as module_index;
import 'package:pulumi_gcp_global_cloudrun/providers.dart' as module_providers;

final index = _IndexModuleNamespace();
final providers = _ProvidersModuleNamespace();

class _IndexModuleNamespace {
  _IndexModuleNamespace();
  final DeploymentArgs = module_index.DeploymentArgs.new;
  final DeploymentType = module_index.DeploymentType.new;
}

class _ProvidersModuleNamespace {
  _ProvidersModuleNamespace();
  final GcpGlobalCloudrun = module_providers.ProviderProvider.new;
}
