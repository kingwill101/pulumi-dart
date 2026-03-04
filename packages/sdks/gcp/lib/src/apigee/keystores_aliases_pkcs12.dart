import 'package:pulumi/pulumi.dart' as pulumi;
import 'keystores_aliases_pkcs12_args.dart';
import 'keystores_aliases_pkcs12_state.dart';

/// An alias from a pkcs12 file.
///
/// To get more information about KeystoresAliasesPkcs12, see:
///
/// * [API documentation](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.environments.keystores.aliases)
/// * How-to Guides
/// * [Keystores Aliases](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.environments.keystores.aliases)
///
/// ## Import
///
/// KeystoresAliasesPkcs12 can be imported using any of these accepted formats:
///
/// * `organizations/{{org_id}}/environments/{{environment}}/keystores/{{keystore}}/aliases/{{alias}}`
///
/// * `{{org_id}}/{{environment}}/{{keystore}}/{{alias}}`
///
/// When using the `pulumi import` command, KeystoresAliasesPkcs12 can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apigee/keystoresAliasesPkcs12:KeystoresAliasesPkcs12 default organizations/{{org_id}}/environments/{{environment}}/keystores/{{keystore}}/aliases/{{alias}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apigee/keystoresAliasesPkcs12:KeystoresAliasesPkcs12 default {{org_id}}/{{environment}}/{{keystore}}/{{alias}}
/// ```
class KeystoresAliasesPkcs12 extends pulumi.CustomResource {
  /// Alias Name
  late final pulumi.Output<String> alias;

  /// Chain of certificates under this alias.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> certsInfos;

  /// Environment associated with the alias
  late final pulumi.Output<String> environment;

  /// PKCS12 file content
  ///
  /// - - -
  late final pulumi.Output<String> file;

  /// Hash of the pkcs file
  late final pulumi.Output<String> filehash;

  /// Keystore Name
  late final pulumi.Output<String> keystore;

  /// Organization ID associated with the alias, without organization/ prefix
  late final pulumi.Output<String> orgId;

  /// Password for the PKCS12 file if it's encrypted
  late final pulumi.Output<String> password;

  /// Optional.Type of Alias
  late final pulumi.Output<String> type;

  /// Creates a new [KeystoresAliasesPkcs12].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [KeystoresAliasesPkcs12]. {@macro pulumi_apigee_keystores_aliases_pkcs12_keystores_aliases_pkcs12_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  KeystoresAliasesPkcs12(
    String name, {
    KeystoresAliasesPkcs12Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:apigee/keystoresAliasesPkcs12:KeystoresAliasesPkcs12',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    alias = registerOutput<String>('alias');
    certsInfos = registerOutput<List<Map<String, dynamic>>>('certsInfos');
    environment = registerOutput<String>('environment');
    file = registerOutput<String>('file');
    filehash = registerOutput<String>('filehash');
    keystore = registerOutput<String>('keystore');
    orgId = registerOutput<String>('orgId');
    password = registerOutput<String>('password');
    type = registerOutput<String>('type');
  }

  /// Gets an existing [KeystoresAliasesPkcs12] resource's state with the given [name] and [id].
  static KeystoresAliasesPkcs12 get(
    String name,
    pulumi.Input<String> id, {
    KeystoresAliasesPkcs12State? state,
  }) {
    return KeystoresAliasesPkcs12._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  KeystoresAliasesPkcs12._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:apigee/keystoresAliasesPkcs12:KeystoresAliasesPkcs12',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    alias = registerOutput<String>('alias');
    certsInfos = registerOutput<List<Map<String, dynamic>>>('certsInfos');
    environment = registerOutput<String>('environment');
    file = registerOutput<String>('file');
    filehash = registerOutput<String>('filehash');
    keystore = registerOutput<String>('keystore');
    orgId = registerOutput<String>('orgId');
    password = registerOutput<String>('password');
    type = registerOutput<String>('type');
  }
}
