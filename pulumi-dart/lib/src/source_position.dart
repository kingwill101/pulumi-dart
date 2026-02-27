import 'package:pulumi/src/pulumirpc/pulumi/source.pb.dart' as pulumi_source;

class RequestSourceMetadata {
  final pulumi_source.SourcePosition? sourcePosition;
  final pulumi_source.StackTrace stackTrace;

  const RequestSourceMetadata({
    required this.sourcePosition,
    required this.stackTrace,
  });
}

RequestSourceMetadata captureRequestSourceMetadata(
  StackTrace stackTrace, {
  int maxFrames = 32,
}) {
  final parsedFrames = <pulumi_source.StackFrame>[];
  final userFrames = <pulumi_source.StackFrame>[];

  for (final line in stackTrace.toString().split('\n')) {
    final frame = _parseStackFrame(line.trim());
    if (frame == null) {
      continue;
    }

    parsedFrames.add(frame);
    if (!_isPulumiInternalFrame(frame.pc.uri)) {
      userFrames.add(frame);
    }

    if (parsedFrames.length >= maxFrames) {
      break;
    }
  }

  final frames = userFrames.isNotEmpty ? userFrames : parsedFrames;
  final sourcePosition = frames.isNotEmpty ? frames.first.pc : null;

  return RequestSourceMetadata(
    sourcePosition: sourcePosition,
    stackTrace: pulumi_source.StackTrace(frames: frames),
  );
}

void applyRequestSourceMetadata(dynamic request, StackTrace stackTrace) {
  final metadata = captureRequestSourceMetadata(stackTrace);
  if (metadata.sourcePosition != null) {
    request.sourcePosition = metadata.sourcePosition!;
  }
  request.stackTrace = metadata.stackTrace;
}

pulumi_source.StackFrame? _parseStackFrame(String line) {
  if (line.isEmpty || line == '<asynchronous suspension>') {
    return null;
  }

  final match = RegExp(r'^#\d+\s+.+ \((.+):(\d+):(\d+)\)$').firstMatch(line);
  if (match == null) {
    return null;
  }

  final uri = match.group(1);
  final lineNumber = int.tryParse(match.group(2) ?? '');
  final columnNumber = int.tryParse(match.group(3) ?? '');
  if (uri == null || lineNumber == null || columnNumber == null) {
    return null;
  }

  return pulumi_source.StackFrame(
    pc: pulumi_source.SourcePosition(
      uri: uri,
      line: lineNumber,
      column: columnNumber,
    ),
  );
}

bool _isPulumiInternalFrame(String uri) {
  final normalized = uri.replaceAll('\\', '/');
  return normalized.contains('/pulumi-dart/lib/src/') ||
      normalized.contains('package:pulumi/src/');
}
