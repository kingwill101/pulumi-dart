import 'package:pulumi/pulumi.dart' as pulumi;
import 'resourcefile_args.dart';

/// Creates a resource file. Specify the `Content-Type` as `application/octet-stream` or `multipart/form-data`. For more information about resource files, see [Resource files](https://cloud.google.com/apigee/docs/api-platform/develop/resource-files).
/// Auto-naming is currently not supported for this resource.
class Resourcefile extends pulumi.CustomResource {
  /// The HTTP Content-Type header value specifying the content type of the body.
  late final pulumi.Output<String> contentType;
  /// The HTTP request/response body as raw binary.
  late final pulumi.Output<String> data;
  late final pulumi.Output<String> environmentId;
  /// Application specific response metadata. Must be set in the first response for streaming APIs.
  late final pulumi.Output<List<Map<String, String>>> extensions;
  /// Required. Name of the resource file. Must match the regular expression: [a-zA-Z0-9:/\\!@#$%^&{}\[\]()+\-=,.~'` ]{1,255}
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> organizationId;
  /// Required. Resource file type. {{ resource_file_type }}
  late final pulumi.Output<String> type;

  /// Creates a new [Resourcefile].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Resourcefile]. {@macro pulumi_apigee_v1_resourcefile_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Resourcefile(
    String name, {
    ResourcefileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:apigee/v1:Resourcefile',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '0.32.0', replaceOnChanges: ['environmentId', 'name', 'organizationId', 'type']).merge(options),
        ) {
    contentType = registerOutput<String>('contentType');
    data = registerOutput<String>('data');
    environmentId = registerOutput<String>('environmentId');
    extensions = registerOutput<List<Map<String, String>>>('extensions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<Map<String, String>>(guardedValue, (value) => (value as Map).cast<String, String>()); });
    this.name = registerOutput<String>('name');
    organizationId = registerOutput<String>('organizationId');
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [Resourcefile] resource.
  Resourcefile.reference(String urn)
    : super(
        'google-native:apigee/v1:Resourcefile',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    contentType = registerOutput<String>('contentType');
    data = registerOutput<String>('data');
    environmentId = registerOutput<String>('environmentId');
    extensions = registerOutput<List<Map<String, String>>>('extensions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<Map<String, String>>(guardedValue, (value) => (value as Map).cast<String, String>()); });
    this.name = registerOutput<String>('name');
    organizationId = registerOutput<String>('organizationId');
    type = registerOutput<String>('type');
  }
}
