// ignore_for_file: non_constant_identifier_names

library pulumi_gcp_global_cloudrun;

import 'package:pulumi_gcp_global_cloudrun/index.dart' as _index;
import 'package:pulumi_gcp_global_cloudrun/providers.dart' as _providers;

final index = _IndexModuleNamespace();
final providers = _ProvidersModuleNamespace();

class _IndexModuleNamespace {
  _IndexModuleNamespace();
  final DeploymentArgs = _index.DeploymentArgs.new;
  final DeploymentType = _index.DeploymentType.new;
}

class _ProvidersModuleNamespace {
  _ProvidersModuleNamespace();
  final GcpGlobalCloudrun = _providers.ProviderProvider.new;
}

