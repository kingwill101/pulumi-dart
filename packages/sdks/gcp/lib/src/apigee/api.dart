import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_args.dart';
import 'api_meta_data.dart';
import 'api_state.dart';

/// To get more information about API proxies see, see:
///
/// * [API documentation](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.apis)
/// * How-to Guides
/// * [API proxies](https://cloud.google.com/apigee/docs/resources)
///
///
/// ## Import
///
/// An API proxy can be imported using any of these accepted formats:
///
/// * `{{org_id}}/apis/{{name}}`
/// * `{{org_id}}/{{name}}`
///
///
/// When using the `pulumi import` command, API proxy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apigee/api:Api default {{org_id}}/apis/{{name}}
/// $ pulumi import gcp:apigee/api:Api default {{org_id}}/{{name}}
/// ```
class Api extends pulumi.CustomResource {
  /// Path to the config zip bundle.
  late final pulumi.Output<String> configBundle;
  /// (Optional) Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  ///
  /// - - -
  late final pulumi.Output<String> deletionPolicy;
  /// (Optional) Detect changes to local config bundle file or changes made outside of Terraform. MD5 hash of the data, encoded using base64. Hash is automatically computed without need for user input.
  late final pulumi.Output<String> detectMd5hash;
  /// The id of the most recently created revision for this API proxy.
  late final pulumi.Output<String> latestRevisionId;
  /// (Computed) Base 64 MD5 hash of the uploaded data. It is speculative as remote does not return hash of the bundle. Remote changes are detected using returned lastModified timestamp.
  late final pulumi.Output<String> md5hash;
  /// Metadata describing the API proxy.
  /// Structure is documented below.
  late final pulumi.Output<List<ApiMetaData>> metaDatas;
  /// The ID of the API proxy.
  late final pulumi.Output<String> name;
  /// The Apigee Organization name associated with the Apigee instance.
  late final pulumi.Output<String> orgId;
  /// A list of revisions of this API proxy.
  late final pulumi.Output<List<String>> revisions;

  /// Creates a new [Api].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Api]. {@macro pulumi_apigee_api_api_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Api(
    String name, {
    ApiArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/api:Api',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    configBundle = registerOutput<String>('configBundle');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    detectMd5hash = registerOutput<String>('detectMd5hash');
    latestRevisionId = registerOutput<String>('latestRevisionId');
    md5hash = registerOutput<String>('md5hash');
    metaDatas = registerOutput<List<ApiMetaData>>('metaDatas', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApiMetaData>(guardedValue, (value) => ApiMetaData.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    orgId = registerOutput<String>('orgId');
    revisions = registerOutput<List<String>>('revisions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }

  /// Gets an existing [Api] resource's state with the given [name] and [id].
  static Api get(
    String name,
    pulumi.Input<String> id, {
    ApiState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Api._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Api._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/api:Api',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    configBundle = registerOutput<String>('configBundle');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    detectMd5hash = registerOutput<String>('detectMd5hash');
    latestRevisionId = registerOutput<String>('latestRevisionId');
    md5hash = registerOutput<String>('md5hash');
    metaDatas = registerOutput<List<ApiMetaData>>('metaDatas', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApiMetaData>(guardedValue, (value) => ApiMetaData.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    orgId = registerOutput<String>('orgId');
    revisions = registerOutput<List<String>>('revisions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }

  /// Creates a typed reference to an existing [Api] resource.
  Api.reference(String urn)
    : super(
        'gcp:apigee/api:Api',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    configBundle = registerOutput<String>('configBundle');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    detectMd5hash = registerOutput<String>('detectMd5hash');
    latestRevisionId = registerOutput<String>('latestRevisionId');
    md5hash = registerOutput<String>('md5hash');
    metaDatas = registerOutput<List<ApiMetaData>>('metaDatas', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApiMetaData>(guardedValue, (value) => ApiMetaData.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    orgId = registerOutput<String>('orgId');
    revisions = registerOutput<List<String>>('revisions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }
}
