// ignore_for_file: non_constant_identifier_names

import 'package:pulumi_random/index.dart' as module_index;
import 'package:pulumi_random/providers.dart' as module_providers;

final index = _IndexModuleNamespace();
final providers = _ProvidersModuleNamespace();

class _IndexModuleNamespace {
  _IndexModuleNamespace();
  final RandomBytes = module_index.RandomBytes.new;
  final RandomBytesArgs = module_index.RandomBytesArgs.new;
  final RandomBytesState = module_index.RandomBytesState.new;
  final RandomBytesStateArgs = module_index.RandomBytesState.new;
  final RandomId = module_index.RandomId.new;
  final RandomIdArgs = module_index.RandomIdArgs.new;
  final RandomIdState = module_index.RandomIdState.new;
  final RandomIdStateArgs = module_index.RandomIdState.new;
  final RandomInteger = module_index.RandomInteger.new;
  final RandomIntegerArgs = module_index.RandomIntegerArgs.new;
  final RandomIntegerState = module_index.RandomIntegerState.new;
  final RandomIntegerStateArgs = module_index.RandomIntegerState.new;
  final RandomPassword = module_index.RandomPassword.new;
  final RandomPasswordArgs = module_index.RandomPasswordArgs.new;
  final RandomPasswordState = module_index.RandomPasswordState.new;
  final RandomPasswordStateArgs = module_index.RandomPasswordState.new;
  final RandomPet = module_index.RandomPet.new;
  final RandomPetArgs = module_index.RandomPetArgs.new;
  final RandomPetState = module_index.RandomPetState.new;
  final RandomPetStateArgs = module_index.RandomPetState.new;
  final RandomShuffle = module_index.RandomShuffle.new;
  final RandomShuffleArgs = module_index.RandomShuffleArgs.new;
  final RandomShuffleState = module_index.RandomShuffleState.new;
  final RandomShuffleStateArgs = module_index.RandomShuffleState.new;
  final RandomString = module_index.RandomString.new;
  final RandomStringArgs = module_index.RandomStringArgs.new;
  final RandomStringState = module_index.RandomStringState.new;
  final RandomStringStateArgs = module_index.RandomStringState.new;
  final RandomUuid = module_index.RandomUuid.new;
  final RandomUuid4 = module_index.RandomUuid4.new;
  final RandomUuid4Args = module_index.RandomUuid4Args.new;
  final RandomUuid4State = module_index.RandomUuid4State.new;
  final RandomUuid4StateArgs = module_index.RandomUuid4State.new;
  final RandomUuid7 = module_index.RandomUuid7.new;
  final RandomUuid7Args = module_index.RandomUuid7Args.new;
  final RandomUuid7State = module_index.RandomUuid7State.new;
  final RandomUuid7StateArgs = module_index.RandomUuid7State.new;
  final RandomUuidArgs = module_index.RandomUuidArgs.new;
  final RandomUuidState = module_index.RandomUuidState.new;
  final RandomUuidStateArgs = module_index.RandomUuidState.new;
}

class _ProvidersModuleNamespace {
  _ProvidersModuleNamespace();
  final ProviderTerraformConfigResult = module_providers.ProviderTerraformConfigResult.new;
  final ProviderTerraformConfigResultArgs = module_providers.ProviderTerraformConfigResult.new;
  final Random = module_providers.ProviderProvider.new;
  final TerraformConfigArgs = module_providers.TerraformConfigArgs.new;
  final TerraformConfigResult = module_providers.TerraformConfigResult.new;
  final TerraformConfigResultArgs = module_providers.TerraformConfigResult.new;
  final terraformConfig = module_providers.terraformConfig;
}
