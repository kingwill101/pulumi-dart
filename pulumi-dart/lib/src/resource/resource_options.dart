import 'package:pulumi/src/alias.dart';

import 'provider_resource.dart';
import 'resource.dart';
import 'resource_hooks.dart';
import 'resource_transformation.dart';

class CustomTimeouts {
  final String? create;
  final String? update;
  final String? delete;

  const CustomTimeouts({this.create, this.update, this.delete});
}

class ResourceOptions {
  final Resource? parent;
  final List<Resource>? dependsOn;
  final bool? protect;
  final ProviderResource? provider;
  final List<ProviderResource> providers;
  final List<Alias>? aliases;
  final CustomTimeouts? customTimeouts;
  final bool? deleteBeforeReplace;
  final bool? retainOnDelete;
  final Resource? deletedWith;
  final List<String>? additionalSecretOutputs;
  final bool? ignoreChanges;
  final String? version;
  final String? pluginDownloadURL;
  final String? replacementOptions;
  final List<ResourceTransformation> resourceTransformations;
  final List<ResourceTransform> resourceTransforms;
  final ResourceHookBinding? hooks;

  const ResourceOptions({
    this.parent,
    this.dependsOn,
    this.protect,
    this.provider,
    List<ProviderResource>? providers,
    this.aliases,
    this.customTimeouts,
    this.deleteBeforeReplace,
    this.retainOnDelete,
    this.deletedWith,
    this.additionalSecretOutputs,
    this.ignoreChanges,
    this.version,
    this.pluginDownloadURL,
    this.replacementOptions,
    this.resourceTransformations = const [],
    this.resourceTransforms = const [],
    this.hooks,
  }) : providers = providers ?? const [];

  ResourceOptions merge(ResourceOptions? options) {
    if (options == null) return this;

    options = createComponentResourceOptionsCopy(options);
    var options2 = createComponentResourceOptionsCopy(this);

    return ResourceOptions(
      parent: options.parent ?? parent,
      dependsOn: [...?dependsOn, ...?options.dependsOn],
      protect: options.protect ?? protect,
      resourceTransformations: [
        ...options.resourceTransformations,
        ...options2.resourceTransformations,
      ],
      resourceTransforms: [
        ...options.resourceTransforms,
        ...options2.resourceTransforms,
      ],
      provider: options.provider ?? provider,
      providers: mergeProviders(options.providers, options2.providers),
      aliases: [...?aliases, ...?options.aliases],
      customTimeouts: options.customTimeouts ?? customTimeouts,
      deleteBeforeReplace: options.deleteBeforeReplace ?? deleteBeforeReplace,
      retainOnDelete: options.retainOnDelete ?? retainOnDelete,
      deletedWith: options.deletedWith ?? deletedWith,
      additionalSecretOutputs: [
        ...?additionalSecretOutputs,
        ...?options.additionalSecretOutputs,
      ],
      ignoreChanges: options.ignoreChanges ?? ignoreChanges,
      version: options.version ?? version,
      pluginDownloadURL: options.pluginDownloadURL ?? pluginDownloadURL,
      replacementOptions: options.replacementOptions ?? replacementOptions,
      hooks: options.hooks ?? hooks,
    );
  }

  ResourceOptions clone() => createComponentResourceOptionsCopy(this);
}

List<ProviderResource> mergeProviders(
  List<ProviderResource> prov1,
  List<ProviderResource> prov2,
) {
  var result = <ProviderResource>[];
  var taken = <String>{};

  void addProviders(List<ProviderResource> list) {
    for (var i = list.length - 1; i >= 0; i--) {
      var p = list[i];
      if (!taken.contains(p.package)) {
        result.add(p);
        taken.add(p.package);
      }
    }
  }

  addProviders(prov2);
  addProviders(prov1);

  // Reverse the list to keep the order as much as possible
  return result.reversed.toList();
}

ResourceOptions createComponentResourceOptionsCopy(ResourceOptions options) {
  return ResourceOptions(
    parent: options.parent,
    dependsOn: options.dependsOn != null ? List.from(options.dependsOn!) : null,
    protect: options.protect,
    provider: options.provider,
    providers: List.from(options.providers),
    resourceTransformations: List.from(options.resourceTransformations),
    resourceTransforms: List.from(options.resourceTransforms),
    aliases: options.aliases != null ? List.from(options.aliases!) : null,
    version: options.version,
    pluginDownloadURL: options.pluginDownloadURL,
    customTimeouts: options.customTimeouts,
    deleteBeforeReplace: options.deleteBeforeReplace,
    retainOnDelete: options.retainOnDelete,
    deletedWith: options.deletedWith,
    additionalSecretOutputs: options.additionalSecretOutputs != null
        ? List.from(options.additionalSecretOutputs!)
        : null,
    ignoreChanges: options.ignoreChanges,
    replacementOptions: options.replacementOptions,
    hooks: options.hooks == null
        ? null
        : ResourceHookBinding(
            beforeCreate: List.from(options.hooks!.beforeCreate),
            afterCreate: List.from(options.hooks!.afterCreate),
            beforeUpdate: List.from(options.hooks!.beforeUpdate),
            afterUpdate: List.from(options.hooks!.afterUpdate),
            beforeDelete: List.from(options.hooks!.beforeDelete),
            afterDelete: List.from(options.hooks!.afterDelete),
          ),
  );
}
