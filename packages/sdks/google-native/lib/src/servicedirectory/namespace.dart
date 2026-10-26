import 'package:pulumi/pulumi.dart' as pulumi;
import 'namespace_args.dart';

/// Creates a namespace, and returns the new namespace.
class Namespace extends pulumi.CustomResource {
  /// Optional. Resource labels associated with this namespace. No more than 64 user labels can be associated with a given resource. Label keys and values can be no longer than 63 characters.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;
  /// Immutable. The resource name for the namespace in the format `projects/*/locations/*/namespaces/*`.
  late final pulumi.Output<String> name;
  /// Required. The Resource ID must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  late final pulumi.Output<String> namespaceId;
  late final pulumi.Output<String> project;
  /// The globally unique identifier of the namespace in the UUID4 format.
  late final pulumi.Output<String> uid;

  /// Creates a new [Namespace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Namespace]. {@macro pulumi_servicedirectory_v1_namespace_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Namespace(
    String name, {
    NamespaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:servicedirectory/v1:Namespace',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '0.32.0', replaceOnChanges: ['location', 'namespaceId', 'project']).merge(options),
        ) {
    labels = registerOutput<Map<String, String>>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    namespaceId = registerOutput<String>('namespaceId');
    project = registerOutput<String>('project');
    uid = registerOutput<String>('uid');
  }

  /// Creates a typed reference to an existing [Namespace] resource.
  Namespace.reference(String urn)
    : super(
        'google-native:servicedirectory/v1:Namespace',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    labels = registerOutput<Map<String, String>>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    namespaceId = registerOutput<String>('namespaceId');
    project = registerOutput<String>('project');
    uid = registerOutput<String>('uid');
  }
}
