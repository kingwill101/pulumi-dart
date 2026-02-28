import 'dart:async';

import '../input.dart';
import 'resource.dart';
import 'resource_options.dart';

/// {@template pulumi.resource_transformation.summary}
/// Legacy synchronous resource transformation callback.
///
/// Transformations run before resource registration and may replace arguments
/// and options.
/// {@endtemplate}
///
typedef ResourceTransformation =
    ResourceTransformationResult? Function(ResourceTransformationArgs args);

/// Arguments passed to a [ResourceTransformation].
class ResourceTransformationArgs {
  /// Resource instance being registered.
  final Resource resource;

  /// Input arguments provided at construction.
  final Inputs args;

  /// Resource options provided at construction.
  final ResourceOptions options;

  ResourceTransformationArgs(this.resource, this.args, this.options);
}

/// Result returned by a [ResourceTransformation].
class ResourceTransformationResult {
  /// Replacement argument map.
  final Inputs args;

  /// Replacement options.
  final ResourceOptions options;

  ResourceTransformationResult(this.args, this.options);
}

/// A ResourceTransform is a callback that takes the original arguments and options provided to the
/// Resource constructor and can optionally return modified values. The new values will be used in place
/// of the original arguments and options when creating the resource. If the transform returns null,
/// it indicates that the resource will not be transformed.
///
/// ## Example
/// ```dart
/// Future<ResourceTransformResult?> addTag(ResourceTransformArgs args, [CancellationToken? _]) async {
///   final props = Map<String, Object?>.from(args.args);
///   props['managedBy'] = 'pulumi-dart';
///   return ResourceTransformResult(props, args.options);
/// }
/// ```
typedef ResourceTransform =
    Future<ResourceTransformResult?> Function(
      ResourceTransformArgs args, [
      CancellationToken? cancellationToken,
    ]);

/// Arguments passed to a [ResourceTransform].
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

/// Result returned from a [ResourceTransform].
class ResourceTransformResult {
  /// The modified properties for the resource.
  final Map<String, Object?> args;

  /// The modified resource options.
  final ResourceOptions options;

  ResourceTransformResult(this.args, this.options);
}

/// {@template pulumi.cancellation_token.summary}
/// Cooperative cancellation token for async transforms.
/// {@endtemplate}
///
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
