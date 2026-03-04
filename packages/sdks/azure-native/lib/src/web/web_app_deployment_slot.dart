import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_app_deployment_slot_args.dart';

/// User credentials used for publishing activity.
///
/// Uses Azure REST API version 2024-04-01. In version 2.x of the Azure Native provider, it used API version 2022-09-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:web:WebAppDeploymentSlot myresource1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Web/sites/{name}/slots/{slot}/deployments/{id}
/// ```
class WebAppDeploymentSlot extends pulumi.CustomResource {
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

  /// Resource Name.
  late final pulumi.Output<String> name;

  /// Start time.
  late final pulumi.Output<String?> startTime;

  /// Deployment status.
  late final pulumi.Output<int?> status;

  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [WebAppDeploymentSlot].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WebAppDeploymentSlot]. {@macro pulumi_web_web_app_deployment_slot_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WebAppDeploymentSlot(
    String name, {
    WebAppDeploymentSlotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:web:WebAppDeploymentSlot',
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
    type = registerOutput<String>('type');
  }
}
