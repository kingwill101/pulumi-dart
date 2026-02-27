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
  final List<String>? ignoreChanges;
  final String? version;
  final String? pluginDownloadURL;
  final dynamic replacementTrigger;
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
    this.replacementTrigger,
    this.resourceTransformations = const [],
    this.resourceTransforms = const [],
    this.hooks,
  }) : providers = providers ?? const [];

  dynamic get effectiveReplacementTrigger => replacementTrigger;

  ResourceOptions merge(ResourceOptions? options) {
    if (options == null) return this;

    options = createComponentResourceOptionsCopy(options);
    var options2 = createComponentResourceOptionsCopy(this);

    return ResourceOptions(
      parent: options.parent ?? parent,
      dependsOn: [...?dependsOn, ...?options.dependsOn],
      protect: options.protect ?? protect,
      resourceTransformations: [
        ...options2.resourceTransformations,
        ...options.resourceTransformations,
      ],
      resourceTransforms: [
        ...options2.resourceTransforms,
        ...options.resourceTransforms,
      ],
      provider: options.provider ?? provider,
      providers: mergeProviders(options2.providers, options.providers),
      aliases: [...?aliases, ...?options.aliases],
      customTimeouts: options.customTimeouts ?? customTimeouts,
      deleteBeforeReplace: options.deleteBeforeReplace ?? deleteBeforeReplace,
      retainOnDelete: options.retainOnDelete ?? retainOnDelete,
      deletedWith: options.deletedWith ?? deletedWith,
      additionalSecretOutputs: [
        ...?additionalSecretOutputs,
        ...?options.additionalSecretOutputs,
      ],
      ignoreChanges: [...?ignoreChanges, ...?options.ignoreChanges],
      version: options.version ?? version,
      pluginDownloadURL: options.pluginDownloadURL ?? pluginDownloadURL,
      replacementTrigger: options.replacementTrigger ?? replacementTrigger,
      hooks: mergeHooks(hooks, options.hooks),
    );
  }

  ResourceOptions clone() => createComponentResourceOptionsCopy(this);
}

ResourceHookBinding? mergeHooks(
  ResourceHookBinding? binding1,
  ResourceHookBinding? binding2,
) {
  if (binding1 == null && binding2 == null) {
    return null;
  }

  return ResourceHookBinding(
    beforeCreate: [...?binding1?.beforeCreate, ...?binding2?.beforeCreate],
    afterCreate: [...?binding1?.afterCreate, ...?binding2?.afterCreate],
    beforeUpdate: [...?binding1?.beforeUpdate, ...?binding2?.beforeUpdate],
    afterUpdate: [...?binding1?.afterUpdate, ...?binding2?.afterUpdate],
    beforeDelete: [...?binding1?.beforeDelete, ...?binding2?.beforeDelete],
    afterDelete: [...?binding1?.afterDelete, ...?binding2?.afterDelete],
    onError: [...?binding1?.onError, ...?binding2?.onError],
  );
}

List<ProviderResource> mergeProviders(
  List<ProviderResource> prov1,
  List<ProviderResource> prov2,
) {
  final byPackage = <String, ProviderResource>{};
  for (final provider in [...prov1, ...prov2]) {
    // Keep one provider per package while preserving stable "last writer wins"
    // ordering by moving overwritten keys to the end.
    byPackage.remove(provider.package);
    byPackage[provider.package] = provider;
  }
  return byPackage.values.toList(growable: false);
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
    replacementTrigger: options.replacementTrigger,
    hooks: options.hooks == null
        ? null
        : ResourceHookBinding(
            beforeCreate: List.from(options.hooks!.beforeCreate),
            afterCreate: List.from(options.hooks!.afterCreate),
            beforeUpdate: List.from(options.hooks!.beforeUpdate),
            afterUpdate: List.from(options.hooks!.afterUpdate),
            beforeDelete: List.from(options.hooks!.beforeDelete),
            afterDelete: List.from(options.hooks!.afterDelete),
            onError: List.from(options.hooks!.onError),
          ),
  );
}
