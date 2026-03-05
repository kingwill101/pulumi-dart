import 'package:pulumi/pulumi.dart' as pulumi;
import 'auth_config_response.dart';
import 'custom_connector_version_args.dart';
import 'destination_config_response.dart';

/// Creates a new CustomConnectorVersion in a given project and location.
/// Auto-naming is currently not supported for this resource.
class CustomConnectorVersion extends pulumi.CustomResource {
  /// Configuration for establishing the authentication to the connector destination.
  late final pulumi.Output<AuthConfigResponse> authConfig;

  /// Created time.
  late final pulumi.Output<String> createTime;
  late final pulumi.Output<String> customConnectorId;

  /// Required. Identifier to assign to the CreateCustomConnectorVersion. Must be unique within scope of the parent resource.
  late final pulumi.Output<String> customConnectorVersionId;

  /// Configuration of the customConnector's destination.
  late final pulumi.Output<DestinationConfigResponse> destinationConfig;

  /// Optional. Whether to enable backend destination config. This is the backend server that the connector connects to.
  late final pulumi.Output<bool> enableBackendDestinationConfig;

  /// Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  late final pulumi.Output<Map<String, String>> labels;

  /// Identifier. Resource name of the Version. Format: projects/{project}/locations/{location}/customConnectors/{custom_connector}/customConnectorVersions/{custom_connector_version}
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Optional. Location of the custom connector spec.
  late final pulumi.Output<String> specLocation;

  /// Type of the customConnector.
  late final pulumi.Output<String> type;

  /// Updated time.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [CustomConnectorVersion].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomConnectorVersion]. {@macro pulumi_connectors_v1_custom_connector_version_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomConnectorVersion(
    String name, {
    CustomConnectorVersionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:connectors/v1:CustomConnectorVersion',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    authConfig = registerOutput<AuthConfigResponse>(
      'authConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AuthConfigResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    createTime = registerOutput<String>('createTime');
    customConnectorId = registerOutput<String>('customConnectorId');
    customConnectorVersionId = registerOutput<String>(
      'customConnectorVersionId',
    );
    destinationConfig = registerOutput<DestinationConfigResponse>(
      'destinationConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return DestinationConfigResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    enableBackendDestinationConfig = registerOutput<bool>(
      'enableBackendDestinationConfig',
    );
    labels = registerOutput<Map<String, String>>('labels');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    specLocation = registerOutput<String>('specLocation');
    type = registerOutput<String>('type');
    updateTime = registerOutput<String>('updateTime');
  }
}
