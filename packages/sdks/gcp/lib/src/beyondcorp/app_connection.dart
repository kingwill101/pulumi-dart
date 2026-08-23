import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_connection_application_endpoint.dart';
import 'app_connection_args.dart';
import 'app_connection_gateway.dart';
import 'app_connection_state.dart';

/// A BeyondCorp AppConnection resource represents a BeyondCorp protected AppConnection to a remote application.
/// It creates all the necessary GCP components needed for creating a BeyondCorp protected AppConnection.
/// Multiple connectors can be authorised for a single AppConnection.
///
///
/// To get more information about AppConnection, see:
///
/// * [API documentation](https://cloud.google.com/beyondcorp/docs/reference/rest#rest-resource:-v1.projects.locations.appconnections)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/beyondcorp-enterprise/docs/enable-app-connector)
///
/// ## Import
///
/// AppConnection can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/appConnections/{{name}}`
/// * `{{project}}/{{region}}/{{name}}`
/// * `{{region}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, AppConnection can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:beyondcorp/appConnection:AppConnection default projects/{{project}}/locations/{{region}}/appConnections/{{name}}
/// $ pulumi import gcp:beyondcorp/appConnection:AppConnection default {{project}}/{{region}}/{{name}}
/// $ pulumi import gcp:beyondcorp/appConnection:AppConnection default {{region}}/{{name}}
/// $ pulumi import gcp:beyondcorp/appConnection:AppConnection default {{name}}
/// ```
class AppConnection extends pulumi.CustomResource {
  /// Address of the remote application endpoint for the BeyondCorp AppConnection.
  /// Structure is documented below.
  late final pulumi.Output<AppConnectionApplicationEndpoint> applicationEndpoint;
  /// List of AppConnectors that are authorised to be associated with this AppConnection
  late final pulumi.Output<List<String>?> connectors;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// An arbitrary user-provided name for the AppConnection.
  late final pulumi.Output<String?> displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Gateway used by the AppConnection.
  /// Structure is documented below.
  late final pulumi.Output<AppConnectionGateway> gateway;
  /// Resource labels to represent user provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// ID of the AppConnection.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The region of the AppConnection.
  late final pulumi.Output<String?> region;
  /// The type of network connectivity used by the AppConnection. Refer
  /// to https://cloud.google.com/beyondcorp/docs/reference/rest/v1/projects.locations.appConnections#type
  /// for a list of possible values.
  late final pulumi.Output<String?> type;

  /// Creates a new [AppConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AppConnection]. {@macro pulumi_beyondcorp_app_connection_app_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AppConnection(
    String name, {
    AppConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:beyondcorp/appConnection:AppConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    applicationEndpoint = registerOutput<AppConnectionApplicationEndpoint>('applicationEndpoint', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppConnectionApplicationEndpoint.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    connectors = registerOutput<List<String>?>('connectors');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    gateway = registerOutput<AppConnectionGateway>('gateway', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppConnectionGateway.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    region = registerOutput<String?>('region');
    type = registerOutput<String?>('type');
  }

  /// Gets an existing [AppConnection] resource's state with the given [name] and [id].
  static AppConnection get(
    String name,
    pulumi.Input<String> id, {
    AppConnectionState? state,
  }) {
    return AppConnection._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AppConnection._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:beyondcorp/appConnection:AppConnection',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    applicationEndpoint = registerOutput<AppConnectionApplicationEndpoint>('applicationEndpoint', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppConnectionApplicationEndpoint.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    connectors = registerOutput<List<String>?>('connectors');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    gateway = registerOutput<AppConnectionGateway>('gateway', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppConnectionGateway.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    region = registerOutput<String?>('region');
    type = registerOutput<String?>('type');
  }
}
