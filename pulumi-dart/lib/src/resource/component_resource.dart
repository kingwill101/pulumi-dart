import '../deployment/deployment.dart';
import '../input.dart';
import '../output.dart';
import 'resource.dart';
import 'resource_options.dart';
import 'resource_transformation.dart';

/// {@template pulumi.component_resource.summary}
/// A logical resource that groups and orchestrates child resources.
///
/// Component resources do not have provider-managed CRUD operations; they are
/// used to model reusable infrastructure abstractions.
///
/// ## Example
/// ```dart
/// class Network extends ComponentResource {
///   Network(String name)
///       : super('acme:infra:Network', name, {}, ComponentResourceOptions());
/// }
/// ```
/// {@endtemplate}
///
class ComponentResource extends Resource {
  ComponentResource(
    String type,
    String name,
    Inputs? args,
    ComponentResourceOptions? options, {
    bool remote = false,
  }) : super(
         type,
         name,
         false,
         args ?? {},
         options ?? ComponentResourceOptions(),
         remote: remote,
       );

  /// Registers component outputs with the engine.
  void registerOutputs([Map<String, dynamic>? outputs]) {
    final resolvedOutputs = outputs ?? _collectOutputs();
    registerOutputsOutput(Output.create(resolvedOutputs));
  }

  /// Async variant of [registerOutputs].
  Future<void> registerOutputsAsync(
    Future<Map<String, dynamic>> outputs,
  ) async {
    registerOutputsOutput(Output.create(await outputs));
  }

  /// Registers an already-computed output map.
  void registerOutputsOutput(Output<Map<String, dynamic>> outputs) {
    final operation = DeploymentImpl.instance.registerResourceOutputs(
      this,
      outputs,
    );
    DeploymentImpl.instance.registerResourceOperation(operation);
  }

  Map<String, dynamic> _collectOutputs() {
    // Since we're not using mirrors, we need to manually define the outputs.
    // This method should be overridden in subclasses to provide the correct outputs.
    return {};
  }
}

/// Resource options specialized for [ComponentResource].
class ComponentResourceOptions extends ResourceOptions {
  ComponentResourceOptions({
    super.id,
    super.parent,
    super.dependsOn,
    super.protect,
    super.provider,
    super.providers,
    List<ResourceTransformation>? resourceTransformations,
    super.aliases,
    super.version,
    super.pluginDownloadURL,
    super.replacementTrigger,
    super.customTimeouts,
    super.deleteBeforeReplace,
    super.retainOnDelete,
    super.deletedWith,
    super.additionalSecretOutputs,
    super.ignoreChanges,
    super.replaceOnChanges,
    List<ResourceTransform>? resourceTransforms,
    super.hooks,
  }) : super(
         resourceTransformations: resourceTransformations ?? [],
         resourceTransforms: resourceTransforms ?? [],
       );
}
