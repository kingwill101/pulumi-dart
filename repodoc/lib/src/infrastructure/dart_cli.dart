import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;

final class DartCli {
  DartCli._(this.executable, this.prefixArguments);

  final String executable;
  final List<String> prefixArguments;

  factory DartCli.resolve({
    Map<String, String>? environment,
    String? resolvedExecutable,
    bool? isWindows,
  }) {
    final env = environment ?? Platform.environment;
    final windows = isWindows ?? Platform.isWindows;
    final override = env['PULUMI_DART_EXECUTABLE']?.trim();
    if (override != null && override.isNotEmpty) {
      return DartCli._(override, const []);
    }
    final current = resolvedExecutable ?? Platform.resolvedExecutable;
    if (p.basenameWithoutExtension(current).toLowerCase() == 'dart') {
      return DartCli._(current, const []);
    }
    final dart = windows ? 'dart.exe' : 'dart';
    if (_onPath(dart, env, isWindows: windows)) {
      return DartCli._(dart, const []);
    }
    final fvm = windows ? 'fvm.exe' : 'fvm';
    if (_onPath(fvm, env, isWindows: windows)) {
      return DartCli._(fvm, const ['dart']);
    }
    throw StateError(
      'Dart was not found. Set PULUMI_DART_EXECUTABLE, add dart to PATH, '
      'or run repodoc with `fvm exec`.',
    );
  }

  Future<Process> start(
    List<String> arguments, {
    String? workingDirectory,
    ProcessStartMode mode = ProcessStartMode.normal,
  }) => Process.start(
    executable,
    [...prefixArguments, ...arguments],
    workingDirectory: workingDirectory,
    mode: mode,
  );

  Future<ProcessResult> run(
    List<String> arguments, {
    String? workingDirectory,
    Encoding? stdoutEncoding = systemEncoding,
    Encoding? stderrEncoding = systemEncoding,
  }) => Process.run(
    executable,
    [...prefixArguments, ...arguments],
    workingDirectory: workingDirectory,
    stdoutEncoding: stdoutEncoding,
    stderrEncoding: stderrEncoding,
  );

  static bool _onPath(
    String executable,
    Map<String, String> environment, {
    required bool isWindows,
  }) {
    final separator = isWindows ? ';' : ':';
    return (environment['PATH'] ?? '')
        .split(separator)
        .any(
          (directory) =>
              directory.isNotEmpty &&
              File(p.join(directory, executable)).existsSync(),
        );
  }
}
