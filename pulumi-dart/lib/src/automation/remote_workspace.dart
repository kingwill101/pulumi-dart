import 'local_workspace.dart';
import 'stack.dart';

/// Authentication options for a remote Git repository.
class RemoteGitAuthArgs {
  const RemoteGitAuthArgs({
    this.personalAccessToken,
    this.sshPrivateKey,
    this.sshPrivateKeyPath,
    this.username,
    this.password,
  });

  final String? personalAccessToken;
  final String? sshPrivateKey;
  final String? sshPrivateKeyPath;
  final String? username;
  final String? password;
}

/// Program source configuration for remote Pulumi operations.
class RemoteGitProgramArgs {
  const RemoteGitProgramArgs({
    required this.stackName,
    this.url,
    this.projectPath,
    this.branch,
    this.commitHash,
    this.auth,
  });

  final String stackName;
  final String? url;
  final String? projectPath;
  final String? branch;
  final String? commitHash;
  final RemoteGitAuthArgs? auth;
}

/// Secret wrapper for remote environment variable values.
class RemoteSecret {
  const RemoteSecret(this.secret);

  final String secret;
}

/// Docker image credentials for remote executor images.
class DockerImageCredentials {
  const DockerImageCredentials({
    required this.username,
    required this.password,
  });

  final String username;
  final String password;
}

/// Remote executor image settings.
class ExecutorImage {
  const ExecutorImage({required this.image, this.credentials});

  final String image;
  final DockerImageCredentials? credentials;
}

/// Options used when constructing remote automation command arguments.
class RemoteWorkspaceOptions {
  const RemoteWorkspaceOptions({
    this.envVars = const <String, Object>{},
    this.preRunCommands = const <String>[],
    this.skipInstallDependencies = false,
    this.inheritSettings = false,
    this.executorImage,
  });

  final Map<String, Object> envVars;
  final List<String> preRunCommands;
  final bool skipInstallDependencies;
  final bool inheritSettings;
  final ExecutorImage? executorImage;
}

/// Remote workspace helpers for Pulumi Deployments-backed operations.
class RemoteWorkspace {
  /// Creates a new stack bound to a remote source program.
  static Future<Stack> createStack(
    RemoteGitProgramArgs args, {
    RemoteWorkspaceOptions remoteOptions = const RemoteWorkspaceOptions(),
    LocalWorkspaceOptions workspaceOptions = const LocalWorkspaceOptions(),
  }) async {
    final workspace = await _createRemoteWorkspace(
      args,
      remoteOptions: remoteOptions,
      workspaceOptions: workspaceOptions,
    );
    return Stack.create(args.stackName, workspace);
  }

  /// Selects an existing stack bound to a remote source program.
  static Future<Stack> selectStack(
    RemoteGitProgramArgs args, {
    RemoteWorkspaceOptions remoteOptions = const RemoteWorkspaceOptions(),
    LocalWorkspaceOptions workspaceOptions = const LocalWorkspaceOptions(),
  }) async {
    final workspace = await _createRemoteWorkspace(
      args,
      remoteOptions: remoteOptions,
      workspaceOptions: workspaceOptions,
    );
    return Stack.select(args.stackName, workspace);
  }

  /// Creates the stack when missing, otherwise selects it.
  static Future<Stack> createOrSelectStack(
    RemoteGitProgramArgs args, {
    RemoteWorkspaceOptions remoteOptions = const RemoteWorkspaceOptions(),
    LocalWorkspaceOptions workspaceOptions = const LocalWorkspaceOptions(),
  }) async {
    final workspace = await _createRemoteWorkspace(
      args,
      remoteOptions: remoteOptions,
      workspaceOptions: workspaceOptions,
    );
    return Stack.createOrSelect(args.stackName, workspace);
  }

  static Future<LocalWorkspace> _createRemoteWorkspace(
    RemoteGitProgramArgs args, {
    required RemoteWorkspaceOptions remoteOptions,
    required LocalWorkspaceOptions workspaceOptions,
  }) {
    final remoteArgs = buildRemoteWorkspaceArgs(args, options: remoteOptions);
    return LocalWorkspace.create(
      workspaceOptions.copyWith(remote: true, remoteArgs: remoteArgs),
    );
  }
}

/// Returns true when [stackName] is `owner/project/stack`.
bool isFullyQualifiedStackName(String stackName) {
  if (stackName.isEmpty) {
    return false;
  }
  final parts = stackName.split('/');
  return parts.length == 3 &&
      parts[0].isNotEmpty &&
      parts[1].isNotEmpty &&
      parts[2].isNotEmpty;
}

/// Validates remote program arguments using upstream Pulumi Automation rules.
void validateRemoteGitProgramArgs(
  RemoteGitProgramArgs args, {
  bool inheritSettings = false,
}) {
  if (!isFullyQualifiedStackName(args.stackName)) {
    throw ArgumentError(
      'stack name "${args.stackName}" must be fully qualified.',
    );
  }

  if ((args.url == null || args.url!.isEmpty) && !inheritSettings) {
    throw ArgumentError('url is required if inheritSettings is not set.');
  }

  if (args.branch != null &&
      args.branch!.isNotEmpty &&
      args.commitHash != null &&
      args.commitHash!.isNotEmpty) {
    throw ArgumentError('branch and commitHash cannot both be specified.');
  }

  final branchMissing = args.branch == null || args.branch!.isEmpty;
  final commitMissing = args.commitHash == null || args.commitHash!.isEmpty;
  if (branchMissing && commitMissing && !inheritSettings) {
    throw ArgumentError(
      'either branch or commitHash is required if inheritSettings is not set.',
    );
  }

  if (args.auth?.sshPrivateKey != null &&
      args.auth!.sshPrivateKey!.isNotEmpty &&
      args.auth?.sshPrivateKeyPath != null &&
      args.auth!.sshPrivateKeyPath!.isNotEmpty) {
    throw ArgumentError(
      'sshPrivateKey and sshPrivateKeyPath cannot both be specified.',
    );
  }
}

/// Builds `pulumi` CLI arguments required for remote operations.
List<String> buildRemoteWorkspaceArgs(
  RemoteGitProgramArgs programArgs, {
  RemoteWorkspaceOptions options = const RemoteWorkspaceOptions(),
}) {
  validateRemoteGitProgramArgs(
    programArgs,
    inheritSettings: options.inheritSettings,
  );

  final args = <String>['--remote'];
  if (programArgs.url != null && programArgs.url!.isNotEmpty) {
    args.add(programArgs.url!);
  }

  if (programArgs.projectPath != null && programArgs.projectPath!.isNotEmpty) {
    args.addAll(<String>['--remote-git-repo-dir', programArgs.projectPath!]);
  }
  if (programArgs.branch != null && programArgs.branch!.isNotEmpty) {
    args.addAll(<String>['--remote-git-branch', programArgs.branch!]);
  }
  if (programArgs.commitHash != null && programArgs.commitHash!.isNotEmpty) {
    args.addAll(<String>['--remote-git-commit', programArgs.commitHash!]);
  }

  final auth = programArgs.auth;
  if (auth != null) {
    if (auth.personalAccessToken != null &&
        auth.personalAccessToken!.isNotEmpty) {
      args.addAll(<String>[
        '--remote-git-auth-access-token',
        auth.personalAccessToken!,
      ]);
    }
    if (auth.sshPrivateKey != null && auth.sshPrivateKey!.isNotEmpty) {
      args.addAll(<String>[
        '--remote-git-auth-ssh-private-key',
        auth.sshPrivateKey!,
      ]);
    }
    if (auth.sshPrivateKeyPath != null && auth.sshPrivateKeyPath!.isNotEmpty) {
      args.addAll(<String>[
        '--remote-git-auth-ssh-private-key-path',
        auth.sshPrivateKeyPath!,
      ]);
    }
    if (auth.password != null && auth.password!.isNotEmpty) {
      args.addAll(<String>['--remote-git-auth-password', auth.password!]);
    }
    if (auth.username != null && auth.username!.isNotEmpty) {
      args.addAll(<String>['--remote-git-auth-username', auth.username!]);
    }
  }

  for (final entry in options.envVars.entries) {
    final key = entry.key;
    final value = entry.value;
    if (value is String) {
      args.addAll(<String>['--remote-env', '$key=$value']);
      continue;
    }
    if (value is RemoteSecret) {
      args.addAll(<String>['--remote-env-secret', '$key=${value.secret}']);
      continue;
    }
    throw ArgumentError("unexpected env value '$value' for key '$key'");
  }

  for (final command in options.preRunCommands) {
    args.addAll(<String>['--remote-pre-run-command', command]);
  }

  if (options.skipInstallDependencies) {
    args.add('--remote-skip-install-dependencies');
  }

  if (options.executorImage != null) {
    args.add('--remote-executor-image=${options.executorImage!.image}');
    final credentials = options.executorImage!.credentials;
    if (credentials != null) {
      args.add('--remote-executor-image-username=${credentials.username}');
      args.add('--remote-executor-image-password=${credentials.password}');
    }
  }

  if (options.inheritSettings) {
    args.add('--remote-inherit-settings');
  }

  return args;
}
