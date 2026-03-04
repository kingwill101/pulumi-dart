import 'package:pulumi/pulumi.dart' as pulumi;
import 'reference_args.dart';

/// Creates a Reference in the specified environment.
class Reference extends pulumi.CustomResource {
  /// Optional. A human-readable description of this reference.
  late final pulumi.Output<String> description;
  late final pulumi.Output<String> environmentId;

  /// The resource id of this reference. Values must match the regular expression [\w\s\-.]+.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> organizationId;

  /// The id of the resource to which this reference refers. Must be the id of a resource that exists in the parent environment and is of the given resource_type.
  late final pulumi.Output<String> refers;

  /// The type of resource referred to by this reference. Valid values are 'KeyStore' or 'TrustStore'.
  late final pulumi.Output<String> resourceType;

  /// Creates a new [Reference].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Reference]. {@macro pulumi_apigee_v1_reference_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Reference(
    String name, {
    ReferenceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:apigee/v1:Reference',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    description = registerOutput<String>('description');
    environmentId = registerOutput<String>('environmentId');
    this.name = registerOutput<String>('name');
    organizationId = registerOutput<String>('organizationId');
    refers = registerOutput<String>('refers');
    resourceType = registerOutput<String>('resourceType');
  }
}
