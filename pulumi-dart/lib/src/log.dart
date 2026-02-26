import 'package:pulumi/src/resource/resource.dart';

import 'pulumirpc/pulumi/engine.pbgrpc.dart';
import 'settings.dart';
import 'store/store.dart';

Future<void> lastLog = Future.value();

const messageLevels = {
  LogSeverity.DEBUG: "debug",
  LogSeverity.INFO: "info",
  LogSeverity.WARNING: "warn",
  LogSeverity.ERROR: "error",
};

/// Returns true if any errors have occurred in the program.
bool hasErrors() {
  return getStore().logErrorCount > 0;
}

/// Logs a debug-level message that is generally hidden from end-users.
Future<void> debug(
  String msg, {
  Resource? resource,
  int? streamId,
  bool? ephemeral,
}) {
  final engine = Runtime().getEngine();
  if (engine != null) {
    return log(engine, LogSeverity.DEBUG, msg, resource, streamId, ephemeral);
  } else {
    return Future.value();
  }
}

/// Logs an informational message that is generally printed to standard output
/// during resource operations.
Future<void> info(
  String msg, {
  Resource? resource,
  int? streamId,
  bool? ephemeral,
}) {
  final engine = Runtime().getEngine();
  if (engine != null) {
    return log(engine, LogSeverity.INFO, msg, resource, streamId, ephemeral);
  } else {
    print("info: [runtime] $msg");
    return Future.value();
  }
}

/// Logs a warning to indicate that something went wrong, but not catastrophically so.
Future<void> warn(
  String msg, {
  Resource? resource,
  int? streamId,
  bool? ephemeral,
}) {
  final engine = Runtime().getEngine();
  if (engine != null) {
    return log(engine, LogSeverity.WARNING, msg, resource, streamId, ephemeral);
  } else {
    print("warning: [runtime] $msg");
    return Future.value();
  }
}

/// Logs a fatal condition. Consider raising an exception after calling error to stop the Pulumi program.
Future<void> error(
  String msg, {
  Resource? resource,
  int? streamId,
  bool? ephemeral,
}) {
  getStore().logErrorCount++;

  final engine = Runtime().getEngine();
  if (engine != null) {
    return log(engine, LogSeverity.ERROR, msg, resource, streamId, ephemeral);
  } else {
    print("error: [runtime] $msg");
    return Future.value();
  }
}

Future<void> log(
  EngineClient engine,
  LogSeverity sev,
  String msg,
  Resource? resource,
  int? streamId,
  bool? ephemeral,
) async {
  // Ensure we log everything in serial order.
  final keepAlive = Runtime().rpcKeepAlive();

  final urn = resource != null ? (await resource.urn.getValue()) : "";

  lastLog = lastLog.then((_) async {
    try {
      final req = LogRequest()
        ..severity = sev
        ..message = msg
        ..urn = urn
        ..streamId = streamId ?? 0
        ..ephemeral = ephemeral ?? false;
      await engine.log(req);
      keepAlive(); // permit RPC channel tear-downs
    } catch (err) {
      if (sev != LogSeverity.DEBUG) {
        print(
          "failed to deliver log message.\nerror: $err\noriginal message: $msg\nmessage severity: ${messageLevels[sev]}",
        );
      }
      keepAlive(); // free up the outstanding promise chain
    }
  });

  return lastLog;
}
