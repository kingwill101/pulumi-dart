import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_args.dart';

/// Creates a new Api in a given project and location.
/// Auto-naming is currently not supported for this resource.
class Api extends pulumi.CustomResource {
  /// Required. Identifier to assign to the API. Must be unique within scope of the parent resource.
  late final pulumi.Output<String> apiId;

  /// Created time.
  late final pulumi.Output<String> createTime;

  /// Optional. Display name.
  late final pulumi.Output<String> displayName;

  /// Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// Optional. Immutable. The name of a Google Managed Service ( https://cloud.google.com/service-infrastructure/docs/glossary#managed). If not specified, a new Service will automatically be created in the same project as this API.
  late final pulumi.Output<String> managedService;

  /// Resource name of the API. Format: projects/{project}/locations/global/apis/{api}
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// State of the API.
  late final pulumi.Output<String> state;

  /// Updated time.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Api].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Api]. {@macro pulumi_apigateway_v1_api_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Api(String name, {ApiArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'google-native:apigateway/v1:Api',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    apiId = registerOutput<String>('apiId');
    createTime = registerOutput<String>('createTime');
    displayName = registerOutput<String>('displayName');
    labels = registerOutput<Map<String, String>>('labels');
    location = registerOutput<String>('location');
    managedService = registerOutput<String>('managedService');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
  }
}
