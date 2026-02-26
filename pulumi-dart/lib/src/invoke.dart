import 'dart:async';

import 'package:pulumi/src/deployment/models.dart' as deployment_models;
import 'package:pulumi/src/input.dart';
import 'package:pulumi/src/resource/resource.dart';
import 'resource/provider_resource.dart';

/// [InvokeOptions] is a bag of options that control the behavior of a call
/// to `runtime.invoke`.
class InvokeOptions {
  /// An optional parent to use for default options for this invoke (e.g. the default provider to use).
  Resource? parent;

  /// An optional provider to use for this invocation. If no provider is supplied, the default provider for the
  /// invoked function's package will be used.
  ProviderResource? provider;

  /// An optional version, corresponding to the version of the provider plugin
  /// that should be used when performing this invoke.
  String? version;

  /// An option to specify the URL from which to download this resources
  /// associated plugin. This version overrides the URL information inferred
  /// from the current package and should rarely be used.
  String? pluginDownloadURL;

  /// Invoke this data source function asynchronously. Defaults to `true` if unspecified.
  ///
  /// When `true`, only the `Future<>` side of the invoke result is present. Explicitly pass in
  /// `false` to get the non-Future side of the result. Invoking data source functions
  /// synchronously is deprecated. The ability to do this will be removed at a later point in
  /// time.
  bool? async;

  InvokeOptions({
    this.parent,
    this.provider,
    this.version,
    this.pluginDownloadURL,
    this.async,
  });
}

deployment_models.InvokeOptions? toDeploymentInvokeOptions(
  InvokeOptions? options,
) {
  if (options == null) {
    return null;
  }

  return deployment_models.InvokeOptions(
    parent: options.parent,
    provider: options.provider,
    version: options.version,
    pluginDownloadURL: options.pluginDownloadURL,
  );
}

/// [InvokeTransform] is the callback signature for the `transforms`
/// resource option for invokes. A transform is passed the same set of inputs
/// provided to the [Invoke] constructor, and can optionally return back
/// alternate values for the `args` and/or `opts` prior to the invoke actually
/// being executed. The effect will be as though those args and opts were passed
/// in place of the original call to the [Invoke]. If the transform
/// returns null, this indicates
/// that the Invoke should proceed with the original arguments.
typedef InvokeTransform =
    FutureOr<InvokeTransformResult?> Function(InvokeTransformArgs args);

/// [InvokeTransformArgs] is the argument bag passed to an invoke transform.
class InvokeTransformArgs {
  /// The token of the Invoke.
  final String token;

  /// The original args passed to the Invoke constructor.
  final Inputs args;

  /// The original invoke options passed to the Invoke constructor.
  final InvokeOptions opts;

  InvokeTransformArgs({
    required this.token,
    required this.args,
    required this.opts,
  });
}

/// [InvokeTransformResult] is the result that must be returned by an invoke
/// transform callback. It includes new values to use for the `args` and `opts`
/// of the `Invoke` in place of the originally provided values.
class InvokeTransformResult {
  /// The new properties to use in place of the original `args`.
  final Inputs args;

  /// The new resource options to use in place of the original `opts`.
  final InvokeOptions opts;

  InvokeTransformResult({required this.args, required this.opts});
}
