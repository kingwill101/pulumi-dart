import 'dart:async';

import '../input.dart';
import 'resource.dart';
import 'resource_options.dart';

typedef ResourceTransformation =
    ResourceTransformationResult? Function(ResourceTransformationArgs args);

class ResourceTransformationArgs {
  final Resource resource;
  final Inputs args;
  final ResourceOptions options;

  ResourceTransformationArgs(this.resource, this.args, this.options);
}

class ResourceTransformationResult {
  final Inputs args;
  final ResourceOptions options;

  ResourceTransformationResult(this.args, this.options);
}

/// A ResourceTransform is a callback that takes the original arguments and options provided to the
/// Resource constructor and can optionally return modified values. The new values will be used in place
/// of the original arguments and options when creating the resource. If the transform returns null,
/// it indicates that the resource will not be transformed.
typedef ResourceTransform =
    Future<ResourceTransformResult?> Function(
      ResourceTransformArgs args, [
      CancellationToken? cancellationToken,
    ]);

class ResourceTransformArgs {
  /// The name of the resource being transformed.
  final String name;

  /// The type of the resource being transformed.
  final String type;

  /// If this is a custom resource.
  final bool custom;

  /// The original properties passed to the Resource constructor.
  final Map<String, Object?> args;

  /// The original resource options passed to the Resource constructor.
  final ResourceOptions options;

  ResourceTransformArgs(
    this.name,
    this.type,
    this.custom,
    this.args,
    this.options,
  );
}

class ResourceTransformResult {
  /// The modified properties for the resource.
  final Map<String, Object?> args;

  /// The modified resource options.
  final ResourceOptions options;

  ResourceTransformResult(this.args, this.options);
}

class CancellationToken {
  final Completer<void> _completer = Completer<void>();

  /// Returns true if cancellation has been requested.
  bool get isCancellationRequested => _completer.isCompleted;

  /// A future that completes when cancellation is requested.
  Future<void> get cancellationRequested => _completer.future;

  /// Requests cancellation by completing the internal completer.
  void cancel() {
    if (!_completer.isCompleted) {
      _completer.complete();
    }
  }
}
