import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_args.dart';
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
///
/// * `{{org_id}}/{{name}}`
///
/// When using the `pulumi import` command, API proxy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apigee/api:Api default {{org_id}}/apis/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apigee/api:Api default {{org_id}}/{{name}}
/// ```
class Api extends pulumi.CustomResource {
  /// Path to the config zip bundle.
  ///
  /// - - -
  late final pulumi.Output<String> configBundle;
  late final pulumi.Output<String?> detectMd5hash;
  /// The id of the most recently created revision for this API proxy.
  late final pulumi.Output<String> latestRevisionId;
  /// (Computed) Base 64 MD5 hash of the uploaded data. It is speculative as remote does not return hash of the bundle. Remote changes are detected using returned last_modified timestamp.
  late final pulumi.Output<String> md5hash;
  /// Metadata describing the API proxy.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> metaDatas;
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
          options ?? pulumi.CustomResourceOptions(),
        ) {
    configBundle = registerOutput<String>('configBundle');
    detectMd5hash = registerOutput<String?>('detectMd5hash');
    latestRevisionId = registerOutput<String>('latestRevisionId');
    md5hash = registerOutput<String>('md5hash');
    metaDatas = registerOutput<List<Map<String, dynamic>>>('metaDatas');
    this.name = registerOutput<String>('name');
    orgId = registerOutput<String>('orgId');
    revisions = registerOutput<List<String>>('revisions');
  }

  /// Gets an existing [Api] resource's state with the given [name] and [id].
  static Api get(
    String name,
    pulumi.Input<String> id, {
    ApiState? state,
  }) {
    return Api._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
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
    detectMd5hash = registerOutput<String?>('detectMd5hash');
    latestRevisionId = registerOutput<String>('latestRevisionId');
    md5hash = registerOutput<String>('md5hash');
    metaDatas = registerOutput<List<Map<String, dynamic>>>('metaDatas');
    this.name = registerOutput<String>('name');
    orgId = registerOutput<String>('orgId');
    revisions = registerOutput<List<String>>('revisions');
  }
}
