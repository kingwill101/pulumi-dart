import 'dart:async';

import 'package:pulumi/src/output.dart';
import 'package:pulumi/src/pulumirpc/pulumi/resource.pb.dart';

import '../input.dart';
import 'provider_resource.dart';
import 'resource.dart';
import 'resource_hooks.dart';
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
    ResourceHookBinding? hooks,
    super.aliases,
    super.version,
    super.pluginDownloadURL,
    super.deletedWith,
    super.additionalSecretOutputs,
  }) : super(
         resourceTransformations: transformations ?? [],
         resourceTransforms: resourceTransforms ?? [],
         hooks: hooks,
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
    RegisterResourceRequest? registerPackageRequest,
  }) : super(
         type,
         name,
         true,
         props,
         options,
         remote: remote,
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
