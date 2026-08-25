import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_connector_args.dart';
import 'app_connector_principal_info.dart';
import 'app_connector_state.dart';

/// A BeyondCorp AppConnector resource represents an application facing component deployed proximal to
/// and with direct access to the application instances. It is used to establish connectivity between the
/// remote enterprise environment and GCP. It initiates connections to the applications and can proxy the
/// data from users over the connection.
///
///
/// To get more information about AppConnector, see:
///
/// * [API documentation](https://cloud.google.com/beyondcorp/docs/reference/rest#rest-resource:-v1.projects.locations.appconnectors)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/beyondcorp-enterprise/docs/enable-app-connector)
///
/// ## Import
///
/// AppConnector can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/appConnectors/{{name}}`
/// * `{{project}}/{{region}}/{{name}}`
/// * `{{region}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, AppConnector can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:beyondcorp/appConnector:AppConnector default projects/{{project}}/locations/{{region}}/appConnectors/{{name}}
/// $ pulumi import gcp:beyondcorp/appConnector:AppConnector default {{project}}/{{region}}/{{name}}
/// $ pulumi import gcp:beyondcorp/appConnector:AppConnector default {{region}}/{{name}}
/// $ pulumi import gcp:beyondcorp/appConnector:AppConnector default {{name}}
/// ```
class AppConnector extends pulumi.CustomResource {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// An arbitrary user-provided name for the AppConnector.
  late final pulumi.Output<String?> displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Resource labels to represent user provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// ID of the AppConnector.
  late final pulumi.Output<String> name;
  /// Principal information about the Identity of the AppConnector.
  /// Structure is documented below.
  late final pulumi.Output<AppConnectorPrincipalInfo> principalInfo;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The region of the AppConnector.
  late final pulumi.Output<String?> region;
  /// Represents the different states of a AppConnector.
  late final pulumi.Output<String> state;

  /// Creates a new [AppConnector].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AppConnector]. {@macro pulumi_beyondcorp_app_connector_app_connector_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AppConnector(
    String name, {
    AppConnectorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:beyondcorp/appConnector:AppConnector',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    principalInfo = registerOutput<AppConnectorPrincipalInfo>('principalInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppConnectorPrincipalInfo.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    region = registerOutput<String?>('region');
    state = registerOutput<String>('state');
  }

  /// Gets an existing [AppConnector] resource's state with the given [name] and [id].
  static AppConnector get(
    String name,
    pulumi.Input<String> id, {
    AppConnectorState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AppConnector._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AppConnector._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:beyondcorp/appConnector:AppConnector',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    principalInfo = registerOutput<AppConnectorPrincipalInfo>('principalInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppConnectorPrincipalInfo.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    region = registerOutput<String?>('region');
    this.state = registerOutput<String>('state');
  }

  /// Creates a typed reference to an existing [AppConnector] resource.
  AppConnector.reference(String urn)
    : super(
        'gcp:beyondcorp/appConnector:AppConnector',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    principalInfo = registerOutput<AppConnectorPrincipalInfo>('principalInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppConnectorPrincipalInfo.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    region = registerOutput<String?>('region');
    state = registerOutput<String>('state');
  }
}
