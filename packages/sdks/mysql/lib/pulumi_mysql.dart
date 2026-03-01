// ignore_for_file: non_constant_identifier_names

library pulumi_mysql;

import 'package:pulumi_mysql/index.dart' as _index;
import 'package:pulumi_mysql/providers.dart' as _providers;

final index = _IndexModuleNamespace();
final providers = _ProvidersModuleNamespace();

class _IndexModuleNamespace {
  _IndexModuleNamespace();
  final Database = _index.Database.new;
  final DatabaseArgs = _index.DatabaseArgs.new;
  final DatabaseState = _index.DatabaseState.new;
  final DatabaseStateArgs = _index.DatabaseState.new;
  final Grant = _index.Grant.new;
  final GrantArgs = _index.GrantArgs.new;
  final GrantState = _index.GrantState.new;
  final GrantStateArgs = _index.GrantState.new;
  final Role = _index.Role.new;
  final RoleArgs = _index.RoleArgs.new;
  final RoleState = _index.RoleState.new;
  final RoleStateArgs = _index.RoleState.new;
  final User = _index.User.new;
  final UserArgs = _index.UserArgs.new;
  final UserPassword = _index.UserPassword.new;
  final UserPasswordArgs = _index.UserPasswordArgs.new;
  final UserPasswordState = _index.UserPasswordState.new;
  final UserPasswordStateArgs = _index.UserPasswordState.new;
  final UserState = _index.UserState.new;
  final UserStateArgs = _index.UserState.new;
}

class _ProvidersModuleNamespace {
  _ProvidersModuleNamespace();
  final Mysql = _providers.ProviderProvider.new;
  final MysqlArgs = _providers.ProviderArgs.new;
  final ProviderArgs = _providers.ProviderArgs.new;
  final ProviderTerraformConfigResult = _providers.ProviderTerraformConfigResult.new;
  final ProviderTerraformConfigResultArgs = _providers.ProviderTerraformConfigResult.new;
  final TerraformConfigArgs = _providers.TerraformConfigArgs.new;
  final TerraformConfigResult = _providers.TerraformConfigResult.new;
  final TerraformConfigResultArgs = _providers.TerraformConfigResult.new;
  final terraformConfig = _providers.terraformConfig;
}

