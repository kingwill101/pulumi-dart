import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_args.dart';
import 'gateway_state.dart';

/// A consumable API that can be used by multiple Gateways.
///
/// &gt; **Warning:** This resource is in beta, and should be used with the terraform-provider-google-beta provider.
/// See Provider Versions for more details on beta resources.
///
/// To get more information about Gateway, see:
///
/// * [API documentation](https://cloud.google.com/api-gateway/docs/reference/rest/v1beta/projects.locations.apis)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/api-gateway/docs/quickstart)
///
/// ## Example Usage
///
/// ## Import
///
/// Gateway can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/gateways/{{gateway_id}}`
/// * `{{project}}/{{region}}/{{gateway_id}}`
/// * `{{region}}/{{gateway_id}}`
/// * `{{gateway_id}}`
///
///
/// When using the `pulumi import` command, Gateway can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apigateway/gateway:Gateway default projects/{{project}}/locations/{{region}}/gateways/{{gateway_id}}
/// $ pulumi import gcp:apigateway/gateway:Gateway default {{project}}/{{region}}/{{gateway_id}}
/// $ pulumi import gcp:apigateway/gateway:Gateway default {{region}}/{{gateway_id}}
/// $ pulumi import gcp:apigateway/gateway:Gateway default {{gateway_id}}
/// ```
class Gateway extends pulumi.CustomResource {
  /// Resource name of the API Config for this Gateway. Format: projects/{project}/locations/global/apis/{api}/configs/{apiConfig}.
  /// When changing api configs please ensure the new config is a new resource and the
  /// lifecycle rule `createBeforeDestroy` is set.
  late final pulumi.Output<String> apiConfig;
  /// The default API Gateway host name of the form {gatewayId}-{hash}.{region_code}.gateway.dev.
  late final pulumi.Output<String> defaultHostname;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// A user-visible name for the API.
  late final pulumi.Output<String> displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Identifier to assign to the Gateway. Must be unique within scope of the parent resource(project).
  late final pulumi.Output<String> gatewayId;
  /// Resource labels to represent user-provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Resource name of the Gateway. Format: projects/{project}/locations/{region}/gateways/{gateway}
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The region of the gateway for the API.
  late final pulumi.Output<String> region;

  /// Creates a new [Gateway].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Gateway]. {@macro pulumi_apigateway_gateway_gateway_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Gateway(
    String name, {
    GatewayArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apigateway/gateway:Gateway',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    apiConfig = registerOutput<String>('apiConfig');
    defaultHostname = registerOutput<String>('defaultHostname');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    gatewayId = registerOutput<String>('gatewayId');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    region = registerOutput<String>('region');
  }

  /// Gets an existing [Gateway] resource's state with the given [name] and [id].
  static Gateway get(
    String name,
    pulumi.Input<String> id, {
    GatewayState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Gateway._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Gateway._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apigateway/gateway:Gateway',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiConfig = registerOutput<String>('apiConfig');
    defaultHostname = registerOutput<String>('defaultHostname');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    gatewayId = registerOutput<String>('gatewayId');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    region = registerOutput<String>('region');
  }

  /// Creates a typed reference to an existing [Gateway] resource.
  Gateway.reference(String urn)
    : super(
        'gcp:apigateway/gateway:Gateway',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    apiConfig = registerOutput<String>('apiConfig');
    defaultHostname = registerOutput<String>('defaultHostname');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    gatewayId = registerOutput<String>('gatewayId');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    region = registerOutput<String>('region');
  }
}
