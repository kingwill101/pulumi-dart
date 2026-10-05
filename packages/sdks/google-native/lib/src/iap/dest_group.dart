import 'package:pulumi/pulumi.dart' as pulumi;
import 'dest_group_args.dart';

/// Creates a new TunnelDestGroup.
class DestGroup extends pulumi.CustomResource {
  /// Unordered list. List of CIDRs that this group applies to.
  late final pulumi.Output<List<String>> cidrs;
  /// Unordered list. List of FQDNs that this group applies to.
  late final pulumi.Output<List<String>> fqdns;
  late final pulumi.Output<String> location;
  /// Immutable. Identifier for the TunnelDestGroup. Must be unique within the project and contain only lower case letters (a-z) and dashes (-).
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// Required. The ID to use for the TunnelDestGroup, which becomes the final component of the resource name. This value must be 4-63 characters, and valid characters are `[a-z]-`.
  late final pulumi.Output<String> tunnelDestGroupId;

  /// Creates a new [DestGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DestGroup]. {@macro pulumi_iap_v1_dest_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DestGroup(
    String name, {
    DestGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:iap/v1:DestGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '0.32.0', replaceOnChanges: ['location', 'project', 'tunnelDestGroupId']).merge(options),
        ) {
    cidrs = registerOutput<List<String>>('cidrs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    fqdns = registerOutput<List<String>>('fqdns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    tunnelDestGroupId = registerOutput<String>('tunnelDestGroupId');
  }

  /// Creates a typed reference to an existing [DestGroup] resource.
  DestGroup.reference(String urn)
    : super(
        'google-native:iap/v1:DestGroup',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    cidrs = registerOutput<List<String>>('cidrs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    fqdns = registerOutput<List<String>>('fqdns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    tunnelDestGroupId = registerOutput<String>('tunnelDestGroupId');
  }
}
