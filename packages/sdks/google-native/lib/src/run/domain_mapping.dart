import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_mapping_args.dart';
import 'domain_mapping_spec_response.dart';
import 'domain_mapping_status_response.dart';
import 'object_meta_response.dart';

/// Create a new domain mapping.
/// Auto-naming is currently not supported for this resource.
class DomainMapping extends pulumi.CustomResource {
  /// The API version for this call such as "domains.cloudrun.com/v1".
  late final pulumi.Output<String> apiVersion;

  /// Indicates that the server should validate the request and populate default values without persisting the request. Supported values: `all`
  late final pulumi.Output<String?> dryRun;

  /// The kind of resource, in this case "DomainMapping".
  late final pulumi.Output<String> kind;
  late final pulumi.Output<String> location;

  /// Metadata associated with this BuildTemplate.
  late final pulumi.Output<ObjectMetaResponse> metadata;
  late final pulumi.Output<String> project;

  /// The spec for this DomainMapping.
  late final pulumi.Output<DomainMappingSpecResponse> spec;

  /// The current status of the DomainMapping.
  late final pulumi.Output<DomainMappingStatusResponse> status;

  /// Creates a new [DomainMapping].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DomainMapping]. {@macro pulumi_run_v1_domain_mapping_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DomainMapping(
    String name, {
    DomainMappingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:run/v1:DomainMapping',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiVersion = registerOutput<String>('apiVersion');
    dryRun = registerOutput<String?>('dryRun');
    kind = registerOutput<String>('kind');
    location = registerOutput<String>('location');
    metadata = registerOutput<ObjectMetaResponse>('metadata');
    project = registerOutput<String>('project');
    spec = registerOutput<DomainMappingSpecResponse>('spec');
    status = registerOutput<DomainMappingStatusResponse>('status');
  }
}
