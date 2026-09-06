import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'web_app_deployment_args.dart';

/// User credentials used for publishing activity.
///
/// Uses Azure REST API version 2025-05-01. In version 2.x of the Azure Native provider, it used API version 2022-09-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:web:WebAppDeployment myresource1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Web/sites/{name}/deployments/{id}
/// ```
class WebAppDeployment extends pulumi.CustomResource {
  /// True if deployment is currently active, false if completed and null if not started.
  late final pulumi.Output<bool?> active;
  /// Who authored the deployment.
  late final pulumi.Output<String?> author;
  /// Author email.
  late final pulumi.Output<String?> authorEmail;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Who performed the deployment.
  late final pulumi.Output<String?> deployer;
  /// Details on deployment.
  late final pulumi.Output<String?> details;
  /// End time.
  late final pulumi.Output<String?> endTime;
  /// Kind of resource.
  late final pulumi.Output<String?> kind;
  /// Details about deployment status.
  late final pulumi.Output<String?> message;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Start time.
  late final pulumi.Output<String?> startTime;
  /// Deployment status.
  late final pulumi.Output<int?> status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [WebAppDeployment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WebAppDeployment]. {@macro pulumi_web_web_app_deployment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WebAppDeployment(
    String name, {
    WebAppDeploymentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:web:WebAppDeployment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    active = registerOutput<bool?>('active');
    author = registerOutput<String?>('author');
    authorEmail = registerOutput<String?>('authorEmail');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    deployer = registerOutput<String?>('deployer');
    details = registerOutput<String?>('details');
    endTime = registerOutput<String?>('endTime');
    kind = registerOutput<String?>('kind');
    message = registerOutput<String?>('message');
    this.name = registerOutput<String>('name');
    startTime = registerOutput<String?>('startTime');
    status = registerOutput<int?>('status');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [WebAppDeployment] resource.
  WebAppDeployment.reference(String urn)
    : super(
        'azure-native:web:WebAppDeployment',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    active = registerOutput<bool?>('active');
    author = registerOutput<String?>('author');
    authorEmail = registerOutput<String?>('authorEmail');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    deployer = registerOutput<String?>('deployer');
    details = registerOutput<String?>('details');
    endTime = registerOutput<String?>('endTime');
    kind = registerOutput<String?>('kind');
    message = registerOutput<String?>('message');
    this.name = registerOutput<String>('name');
    startTime = registerOutput<String?>('startTime');
    status = registerOutput<int?>('status');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
