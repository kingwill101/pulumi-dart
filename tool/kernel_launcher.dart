import 'dart:async';
import 'dart:io';

Future<void> main(List<String> arguments) async {
  final executable = File(Platform.resolvedExecutable).absolute;
  final artifactRoot = executable.parent.parent;
  final marker = File(
    '${Directory.current.path}${Platform.pathSeparator}.pulumi-dart-kernel',
  );

  if (!marker.existsSync()) {
    stderr.writeln(
      'Precompiled Dart kernel marker not found in ${Directory.current.path}.',
    );
    exit(66);
  }

  final fingerprint = marker.readAsStringSync().trim();
  if (!RegExp(r'^[a-f0-9]{64}$').hasMatch(fingerprint)) {
    stderr.writeln('Invalid precompiled Dart kernel fingerprint: $fingerprint');
    exit(65);
  }

  final kernel = File(
    '${artifactRoot.path}${Platform.pathSeparator}'
    'kernels${Platform.pathSeparator}$fingerprint.dill',
  );
  if (!kernel.existsSync()) {
    stderr.writeln('Precompiled Dart kernel not found: ${kernel.path}');
    exit(66);
  }

  final process = await Process.start(
    'dart',
    ['run', kernel.path, ...arguments],
    mode: ProcessStartMode.inheritStdio,
    environment: Platform.environment,
  );

  final subscriptions = <StreamSubscription<ProcessSignal>>[];
  if (!Platform.isWindows) {
    subscriptions.add(
      ProcessSignal.sigint.watch().listen(
        (_) => process.kill(ProcessSignal.sigint),
      ),
    );
    subscriptions.add(
      ProcessSignal.sigterm.watch().listen(
        (_) => process.kill(ProcessSignal.sigterm),
      ),
    );
  }

  final exitCode = await process.exitCode;
  for (final subscription in subscriptions) {
    await subscription.cancel();
  }
  exit(exitCode);
}
