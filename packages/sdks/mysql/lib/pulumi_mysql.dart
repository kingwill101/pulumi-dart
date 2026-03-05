// ignore_for_file: non_constant_identifier_names

import 'package:pulumi_mysql/index.dart' as module_index;
import 'package:pulumi_mysql/providers.dart' as module_providers;

final index = _IndexModuleNamespace();
final providers = _ProvidersModuleNamespace();

class _IndexModuleNamespace {
  _IndexModuleNamespace();
  final Database = module_index.Database.new;
  final DatabaseArgs = module_index.DatabaseArgs.new;
  final DatabaseState = module_index.DatabaseState.new;
  final DatabaseStateArgs = module_index.DatabaseState.new;
  final Grant = module_index.Grant.new;
  final GrantArgs = module_index.GrantArgs.new;
  final GrantState = module_index.GrantState.new;
  final GrantStateArgs = module_index.GrantState.new;
  final Role = module_index.Role.new;
  final RoleArgs = module_index.RoleArgs.new;
  final RoleState = module_index.RoleState.new;
  final RoleStateArgs = module_index.RoleState.new;
  final User = module_index.User.new;
  final UserArgs = module_index.UserArgs.new;
  final UserPassword = module_index.UserPassword.new;
  final UserPasswordArgs = module_index.UserPasswordArgs.new;
  final UserPasswordState = module_index.UserPasswordState.new;
  final UserPasswordStateArgs = module_index.UserPasswordState.new;
  final UserState = module_index.UserState.new;
  final UserStateArgs = module_index.UserState.new;
}

class _ProvidersModuleNamespace {
  _ProvidersModuleNamespace();
  final Mysql = module_providers.ProviderProvider.new;
  final MysqlArgs = module_providers.ProviderArgs.new;
  final ProviderArgs = module_providers.ProviderArgs.new;
  final ProviderTerraformConfigResult = module_providers.ProviderTerraformConfigResult.new;
  final ProviderTerraformConfigResultArgs = module_providers.ProviderTerraformConfigResult.new;
  final TerraformConfigArgs = module_providers.TerraformConfigArgs.new;
  final TerraformConfigResult = module_providers.TerraformConfigResult.new;
  final TerraformConfigResultArgs = module_providers.TerraformConfigResult.new;
  final terraformConfig = module_providers.terraformConfig;
}
