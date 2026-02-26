import 'dart:async';

import 'package:pulumi/src/deployment/models.dart' as models;
import 'package:pulumi/src/output.dart';

import '../input.dart';
import 'provider_resource.dart';
import 'resource.dart';
import 'resource_options.dart';
import 'resource_transformation.dart';

class CustomResourceOptions extends ResourceOptions {
  CustomResourceOptions({
    super.parent,
    super.dependsOn,
    super.protect,
    super.provider,
    List<ProviderResource>? providers,
    List<ResourceTransformation>? transformations,
    List<ResourceTransform>? resourceTransforms,
    super.hooks,
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
  }) : super(
         providers: providers,
         resourceTransformations: transformations ?? [],
         resourceTransforms: resourceTransforms ?? [],
       );
}

class CustomResource extends Resource {
  late Output<String?> id;
  final Completer<OutputData<String?>> _idCompleter =
      Completer<OutputData<String?>>();

  CustomResource(
    String type,
    String name,
    Inputs props,
    CustomResourceOptions options, {
    bool remote = false,
    bool dependency = false,
    models.RegisterPackageRequest? registerPackageRequest,
  }) : super(
         type,
         name,
         true,
         props,
         options,
         remote: remote,
         dependency: dependency,
         registerPackageRequest: registerPackageRequest,
       ) {
    id = Output<String?>(_idCompleter.future);
  }

  void resolveId(String? value, {required bool isKnown}) {
    if (_idCompleter.isCompleted) {
      return;
    }
    _idCompleter.complete(
      OutputData<String?>(
        value: value,
        isKnown: isKnown,
        isSecret: false,
        resources: {this},
      ),
    );
  }
}
