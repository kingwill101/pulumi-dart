// ignore_for_file: non_constant_identifier_names

import 'package:pulumi_docker_build/index.dart' as module_index;
import 'package:pulumi_docker_build/providers.dart' as module_providers;

final index = const _IndexModuleNamespace();
final providers = const _ProvidersModuleNamespace();

class _IndexModuleNamespace {
  const _IndexModuleNamespace();
  final BuildContext = module_index.BuildContext.new;
  final BuildContextArgs = module_index.BuildContext.new;
  final BuilderConfig = module_index.BuilderConfig.new;
  final BuilderConfigArgs = module_index.BuilderConfig.new;
  final CacheFrom = module_index.CacheFrom.new;
  final CacheFromArgs = module_index.CacheFrom.new;
  final CacheFromAzureBlob = module_index.CacheFromAzureBlob.new;
  final CacheFromAzureBlobArgs = module_index.CacheFromAzureBlob.new;
  final CacheFromGitHubActions = module_index.CacheFromGitHubActions.new;
  final CacheFromGitHubActionsArgs = module_index.CacheFromGitHubActions.new;
  final CacheFromLocal = module_index.CacheFromLocal.new;
  final CacheFromLocalArgs = module_index.CacheFromLocal.new;
  final CacheFromRegistry = module_index.CacheFromRegistry.new;
  final CacheFromRegistryArgs = module_index.CacheFromRegistry.new;
  final CacheFromS3 = module_index.CacheFromS3.new;
  final CacheFromS3Args = module_index.CacheFromS3.new;
  final CacheMode = module_index.CacheMode.values;
  final CacheTo = module_index.CacheTo.new;
  final CacheToArgs = module_index.CacheTo.new;
  final CacheToAzureBlob = module_index.CacheToAzureBlob.new;
  final CacheToAzureBlobArgs = module_index.CacheToAzureBlob.new;
  final CacheToGitHubActions = module_index.CacheToGitHubActions.new;
  final CacheToGitHubActionsArgs = module_index.CacheToGitHubActions.new;
  final CacheToLocal = module_index.CacheToLocal.new;
  final CacheToLocalArgs = module_index.CacheToLocal.new;
  final CacheToRegistry = module_index.CacheToRegistry.new;
  final CacheToRegistryArgs = module_index.CacheToRegistry.new;
  final CacheToS3 = module_index.CacheToS3.new;
  final CacheToS3Args = module_index.CacheToS3.new;
  final CompressionType = module_index.CompressionType.values;
  final Context = module_index.Context.new;
  final ContextArgs = module_index.Context.new;
  final Dockerfile = module_index.Dockerfile.new;
  final DockerfileArgs = module_index.Dockerfile.new;
  final Export = module_index.Export.new;
  final ExportArgs = module_index.Export.new;
  final ExportDocker = module_index.ExportDocker.new;
  final ExportDockerArgs = module_index.ExportDocker.new;
  final ExportImage = module_index.ExportImage.new;
  final ExportImageArgs = module_index.ExportImage.new;
  final ExportLocal = module_index.ExportLocal.new;
  final ExportLocalArgs = module_index.ExportLocal.new;
  final ExportOCI = module_index.ExportOCI.new;
  final ExportOCIArgs = module_index.ExportOCI.new;
  final ExportRegistry = module_index.ExportRegistry.new;
  final ExportRegistryArgs = module_index.ExportRegistry.new;
  final ExportTar = module_index.ExportTar.new;
  final ExportTarArgs = module_index.ExportTar.new;
  final Image = module_index.Image.new;
  final ImageArgs = module_index.ImageArgs.new;
  final Index = module_index.Index.new;
  final IndexArgs = module_index.IndexArgs.new;
  final NetworkMode = module_index.NetworkMode.values;
  final Platform = module_index.Platform.values;
  final Registry = module_index.Registry.new;
  final RegistryArgs = module_index.Registry.new;
  final SSH = module_index.SSH.new;
  final SSHArgs = module_index.SSH.new;
}

class _ProvidersModuleNamespace {
  const _ProvidersModuleNamespace();
  final DockerBuild = module_providers.ProviderProvider.new;
  final DockerBuildArgs = module_providers.ProviderArgs.new;
  final ProviderArgs = module_providers.ProviderArgs.new;
}
