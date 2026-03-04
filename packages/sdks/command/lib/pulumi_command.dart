// ignore_for_file: non_constant_identifier_names

import 'package:pulumi_command/local.dart' as module_local;
import 'package:pulumi_command/providers.dart' as module_providers;
import 'package:pulumi_command/remote.dart' as module_remote;

final local = _LocalModuleNamespace();
final providers = _ProvidersModuleNamespace();
final remote = _RemoteModuleNamespace();

class _LocalModuleNamespace {
  _LocalModuleNamespace();
  final Command = module_local.Command.new;
  final CommandArgs = module_local.CommandArgs.new;
  final Logging = module_local.Logging.values;
  final RunArgs = module_local.RunArgs.new;
  final RunResult = module_local.RunResult.new;
  final RunResultArgs = module_local.RunResult.new;
  final run = module_local.run;
}

class _ProvidersModuleNamespace {
  _ProvidersModuleNamespace();
  final Command = module_providers.ProviderProvider.new;
}

class _RemoteModuleNamespace {
  _RemoteModuleNamespace();
  final Command = module_remote.Command.new;
  final CommandArgs = module_remote.CommandArgs.new;
  final Connection = module_remote.Connection.new;
  final ConnectionArgs = module_remote.Connection.new;
  final CopyFile = module_remote.CopyFile.new;
  final CopyFileArgs = module_remote.CopyFileArgs.new;
  final CopyToRemote = module_remote.CopyToRemote.new;
  final CopyToRemoteArgs = module_remote.CopyToRemoteArgs.new;
  final Logging = module_remote.Logging.values;
  final ProxyConnection = module_remote.ProxyConnection.new;
  final ProxyConnectionArgs = module_remote.ProxyConnection.new;
}
