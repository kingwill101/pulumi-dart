// ignore_for_file: non_constant_identifier_names

library pulumi_command;

import 'package:pulumi_command/local.dart' as _local;
import 'package:pulumi_command/providers.dart' as _providers;
import 'package:pulumi_command/remote.dart' as _remote;

final local = _LocalModuleNamespace();
final providers = _ProvidersModuleNamespace();
final remote = _RemoteModuleNamespace();

class _LocalModuleNamespace {
  _LocalModuleNamespace();
  final Command = _local.Command.new;
  final CommandArgs = _local.CommandArgs.new;
  final Logging = _local.Logging.values;
  final RunArgs = _local.RunArgs.new;
  final RunResult = _local.RunResult.new;
  final RunResultArgs = _local.RunResult.new;
  final run = _local.run;
}

class _ProvidersModuleNamespace {
  _ProvidersModuleNamespace();
  final Command = _providers.ProviderProvider.new;
}

class _RemoteModuleNamespace {
  _RemoteModuleNamespace();
  final Command = _remote.Command.new;
  final CommandArgs = _remote.CommandArgs.new;
  final Connection = _remote.Connection.new;
  final ConnectionArgs = _remote.Connection.new;
  final CopyFile = _remote.CopyFile.new;
  final CopyFileArgs = _remote.CopyFileArgs.new;
  final CopyToRemote = _remote.CopyToRemote.new;
  final CopyToRemoteArgs = _remote.CopyToRemoteArgs.new;
  final Logging = _remote.Logging.values;
  final ProxyConnection = _remote.ProxyConnection.new;
  final ProxyConnectionArgs = _remote.ProxyConnection.new;
}

