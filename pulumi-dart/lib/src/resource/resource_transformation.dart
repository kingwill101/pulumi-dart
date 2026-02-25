import 'resource.dart';
import 'resource_args.dart';
import 'resource_options.dart';

typedef ResourceTransformation = ResourceTransformationResult? Function(ResourceTransformationArgs args);

class ResourceTransformationArgs {
  final Resource resource;
  final ResourceArgs args;
  final ResourceOptions options;

  ResourceTransformationArgs(this.resource, this.args, this.options);
}

class ResourceTransformationResult {
  final ResourceArgs args;
  final ResourceOptions options;

  ResourceTransformationResult(this.args, this.options);
}
