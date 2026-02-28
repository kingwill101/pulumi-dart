// ignore_for_file: unnecessary_library_name

/// Pulumi Automation API for Dart.
///
/// This library provides a Dart interface for driving Pulumi CLI workflows in
/// code. It follows the same conceptual model as other Pulumi language SDKs:
/// a [LocalWorkspace] that owns execution context and a [Stack] handle for
/// lifecycle operations.
///
/// ## Example
/// ```dart
/// import 'package:pulumi/automation.dart' as automation;
///
/// Future<void> main() async {
///   final stack = await automation.LocalWorkspace.createOrSelectStack(
///     const automation.LocalProgramArgs(
///       stackName: 'dev',
///       workDir: '.',
///     ),
///     options: const automation.LocalWorkspaceOptions(
///       environmentVariables: {
///         'PULUMI_CONFIG_PASSPHRASE': 'pulumi-dart-dev',
///       },
///     ),
///   );
///
///   await stack.setConfig('name', 'dart');
///   await stack.preview();
/// }
/// ```
library automation;

export 'src/automation/command.dart';
export 'src/automation/config.dart';
export 'src/automation/events.dart';
export 'src/automation/local_workspace.dart';
export 'src/automation/remote_workspace.dart';
export 'src/automation/stack.dart';
export 'src/automation/version.dart';
