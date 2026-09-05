import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_endpoint_association_args.dart';
import 'firewall_endpoint_association_state.dart';

/// Firewall endpoint association links a firewall endpoint to a VPC network in
/// the same zone. After you define this association, Cloud Firewall forwards the
/// zonal workload traffic in your VPC network that requires layer 7 inspection to
/// the attached firewall endpoint.
///
///
/// To get more information about FirewallEndpointAssociation, see:
///
/// * [API documentation](https://cloud.google.com/firewall/docs/reference/network-security/rest/v1/projects.locations.firewallEndpointAssociations#FirewallEndpointAssociation)
/// * How-to Guides
/// * [Create and associate firewall endpoints](https://cloud.google.com/firewall/docs/configure-firewall-endpoints)
/// * [Firewall endpoint overview](https://cloud.google.com/firewall/docs/about-firewall-endpoints)
///
/// &gt; **Warning:** If you are using User ADCs (Application Default Credentials) with this resource,
/// you must specify a `billingProjectId` and set `userProjectOverride` to true
/// in the provider configuration. Otherwise the ACM API will return a 403 error.
/// Your account must have the `serviceusage.services.use` permission on the
/// `billingProjectId` you defined.
///
/// ## Example Usage
///
/// ## Import
///
/// FirewallEndpointAssociation can be imported using any of these accepted formats:
///
/// * `{{parent}}/locations/{{location}}/firewallEndpointAssociations/{{name}}`
///
///
/// When using the `pulumi import` command, FirewallEndpointAssociation can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networksecurity/firewallEndpointAssociation:FirewallEndpointAssociation default {{parent}}/locations/{{location}}/firewallEndpointAssociations/{{name}}
/// ```
class FirewallEndpointAssociation extends pulumi.CustomResource {
  /// Time the firewall endpoint was created in UTC.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Whether the association is disabled. True indicates that traffic will not be intercepted.
  /// &gt; **Note:** The API will reject the request if this value is set to true when creating the resource,
  /// otherwise on an update the association can be disabled.
  late final pulumi.Output<bool?> disabled;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// The URL of the firewall endpoint that is being associated.
  late final pulumi.Output<String> firewallEndpoint;
  /// A map of key/value label pairs to assign to the resource.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The location (zone) of the firewall endpoint association.
  late final pulumi.Output<String> location;
  /// The name of the firewall endpoint association resource.
  late final pulumi.Output<String> name;
  /// The URL of the network that is being associated.
  late final pulumi.Output<String> network;
  /// The name of the parent this firewall endpoint association belongs to.
  /// Format: projects/{project_id}.
  late final pulumi.Output<String?> parent;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Whether reconciling is in progress, recommended per https://google.aip.dev/128.
  late final pulumi.Output<bool> reconciling;
  /// Server-defined URL of this resource.
  late final pulumi.Output<String> selfLink;
  /// The current state of the endpoint.
  late final pulumi.Output<String> state;
  /// The URL of the TlsInspectionPolicy that is being associated.
  late final pulumi.Output<String?> tlsInspectionPolicy;
  /// Time the firewall endpoint was updated in UTC.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [FirewallEndpointAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FirewallEndpointAssociation]. {@macro pulumi_networksecurity_firewall_endpoint_association_firewall_endpoint_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FirewallEndpointAssociation(
    String name, {
    FirewallEndpointAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networksecurity/firewallEndpointAssociation:FirewallEndpointAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    disabled = registerOutput<bool?>('disabled');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    firewallEndpoint = registerOutput<String>('firewallEndpoint');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    network = registerOutput<String>('network');
    parent = registerOutput<String?>('parent');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    reconciling = registerOutput<bool>('reconciling');
    selfLink = registerOutput<String>('selfLink');
    state = registerOutput<String>('state');
    tlsInspectionPolicy = registerOutput<String?>('tlsInspectionPolicy');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [FirewallEndpointAssociation] resource's state with the given [name] and [id].
  static FirewallEndpointAssociation get(
    String name,
    pulumi.Input<String> id, {
    FirewallEndpointAssociationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return FirewallEndpointAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  FirewallEndpointAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networksecurity/firewallEndpointAssociation:FirewallEndpointAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    disabled = registerOutput<bool?>('disabled');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    firewallEndpoint = registerOutput<String>('firewallEndpoint');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    network = registerOutput<String>('network');
    parent = registerOutput<String?>('parent');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    reconciling = registerOutput<bool>('reconciling');
    selfLink = registerOutput<String>('selfLink');
    this.state = registerOutput<String>('state');
    tlsInspectionPolicy = registerOutput<String?>('tlsInspectionPolicy');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [FirewallEndpointAssociation] resource.
  FirewallEndpointAssociation.reference(String urn)
    : super(
        'gcp:networksecurity/firewallEndpointAssociation:FirewallEndpointAssociation',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    disabled = registerOutput<bool?>('disabled');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    firewallEndpoint = registerOutput<String>('firewallEndpoint');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    network = registerOutput<String>('network');
    parent = registerOutput<String?>('parent');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    reconciling = registerOutput<bool>('reconciling');
    selfLink = registerOutput<String>('selfLink');
    state = registerOutput<String>('state');
    tlsInspectionPolicy = registerOutput<String?>('tlsInspectionPolicy');
    updateTime = registerOutput<String>('updateTime');
  }
}
