import 'package:pulumi/pulumi.dart' as pulumi;
import 'keystores_aliases_key_cert_file_args.dart';
import 'keystores_aliases_key_cert_file_certs_info.dart';
import 'keystores_aliases_key_cert_file_state.dart';
import 'keystores_aliases_key_cert_file_timeouts.dart';

/// An alias from a key/certificate pair.
///
/// To get more information about KeystoresAliasesKeyCertFile, see:
///
/// * [API documentation](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.environments.keystores.aliases)
/// * How-to Guides
/// * [Keystores Aliases](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.environments.keystores.aliases)
///
/// ## Import
///
/// KeystoresAliasesKeyCertFile can be imported using any of these accepted formats:
///
/// * `organizations/{{org_id}}/environments/{{environment}}/keystores/{{keystore}}/aliases/{{alias}}`
///
/// * `{{org_id}}/{{environment}}/{{keystore}}/{{alias}}`
///
/// When using the `pulumi import` command, KeystoresAliasesKeyCertFile can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apigee/keystoresAliasesKeyCertFile:KeystoresAliasesKeyCertFile default organizations/{{org_id}}/environments/{{environment}}/keystores/{{keystore}}/aliases/{{alias}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apigee/keystoresAliasesKeyCertFile:KeystoresAliasesKeyCertFile default {{org_id}}/{{environment}}/{{keystore}}/{{alias}}
/// ```
class KeystoresAliasesKeyCertFile extends pulumi.CustomResource {
  /// Alias Name
  late final pulumi.Output<String> alias;
  /// Cert content
  ///
  ///
  /// - - -
  late final pulumi.Output<String> cert;
  /// Chain of certificates under this alias.
  /// Structure is documented below.
  late final pulumi.Output<List<KeystoresAliasesKeyCertFileCertsInfo>> certsInfos;
  /// Environment associated with the alias
  late final pulumi.Output<String> environment;
  /// Private Key content, omit if uploading to truststore
  late final pulumi.Output<String?> key;
  /// Keystore Name
  late final pulumi.Output<String> keystore;
  /// Organization ID associated with the alias, without organization/ prefix
  late final pulumi.Output<String> orgId;
  /// Password for the Private Key if it's encrypted
  late final pulumi.Output<String?> password;
  late final pulumi.Output<KeystoresAliasesKeyCertFileTimeouts?> timeouts;
  /// Optional.Type of Alias
  late final pulumi.Output<String> type;

  /// Creates a new [KeystoresAliasesKeyCertFile].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [KeystoresAliasesKeyCertFile]. {@macro pulumi_apigee_keystores_aliases_key_cert_file_keystores_aliases_key_cert_file_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  KeystoresAliasesKeyCertFile(
    String name, {
    KeystoresAliasesKeyCertFileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/keystoresAliasesKeyCertFile:KeystoresAliasesKeyCertFile',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.alias = registerOutput<String>('alias');
    this.cert = registerOutput<String>('cert');
    this.certsInfos = registerOutput<List<KeystoresAliasesKeyCertFileCertsInfo>>('certsInfos');
    this.environment = registerOutput<String>('environment');
    this.key = registerOutput<String?>('key');
    this.keystore = registerOutput<String>('keystore');
    this.orgId = registerOutput<String>('orgId');
    this.password = registerOutput<String?>('password');
    this.timeouts = registerOutput<KeystoresAliasesKeyCertFileTimeouts?>('timeouts');
    this.type = registerOutput<String>('type');
  }

  /// Gets an existing [KeystoresAliasesKeyCertFile] resource's state with the given [name] and [id].
  static KeystoresAliasesKeyCertFile get(
    String name,
    pulumi.Input<String> id, {
    KeystoresAliasesKeyCertFileState? state,
  }) {
    return KeystoresAliasesKeyCertFile._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  KeystoresAliasesKeyCertFile._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/keystoresAliasesKeyCertFile:KeystoresAliasesKeyCertFile',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.alias = registerOutput<String>('alias');
    this.cert = registerOutput<String>('cert');
    this.certsInfos = registerOutput<List<KeystoresAliasesKeyCertFileCertsInfo>>('certsInfos');
    this.environment = registerOutput<String>('environment');
    this.key = registerOutput<String?>('key');
    this.keystore = registerOutput<String>('keystore');
    this.orgId = registerOutput<String>('orgId');
    this.password = registerOutput<String?>('password');
    this.timeouts = registerOutput<KeystoresAliasesKeyCertFileTimeouts?>('timeouts');
    this.type = registerOutput<String>('type');
  }
}
