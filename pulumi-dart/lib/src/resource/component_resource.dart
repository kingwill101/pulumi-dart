import '../deployment/deployment.dart';
import '../input.dart';
import '../output.dart';
import 'resource.dart';
import 'resource_options.dart';
import 'resource_transformation.dart';

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

  void registerOutputs([Map<String, dynamic>? outputs]) {
    final resolvedOutputs = outputs ?? _collectOutputs();
    registerOutputsOutput(Output.create(resolvedOutputs));
  }

  Future<void> registerOutputsAsync(
    Future<Map<String, dynamic>> outputs,
  ) async {
    registerOutputsOutput(Output.create(await outputs));
  }

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

class ComponentResourceOptions extends ResourceOptions {
  ComponentResourceOptions({
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
    super.replacementOptions,
    super.customTimeouts,
    super.deleteBeforeReplace,
    super.retainOnDelete,
    super.deletedWith,
    super.additionalSecretOutputs,
    super.ignoreChanges,
    List<ResourceTransform>? resourceTransforms,
    super.hooks,
  }) : super(
         resourceTransformations: resourceTransformations ?? [],
         resourceTransforms: resourceTransforms ?? [],
       );
}
