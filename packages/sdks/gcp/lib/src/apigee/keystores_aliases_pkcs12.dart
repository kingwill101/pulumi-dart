import 'package:pulumi/pulumi.dart' as pulumi;
import 'keystores_aliases_pkcs12_args.dart';
import 'keystores_aliases_pkcs12_certs_info.dart';
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
/// * `{{org_id}}/{{environment}}/{{keystore}}/{{alias}}`
///
///
/// When using the `pulumi import` command, KeystoresAliasesPkcs12 can be imported using one of the formats above. For example:
///
///
/// ```sh
/// $ pulumi import gcp:apigee/keystoresAliasesPkcs12:KeystoresAliasesPkcs12 default organizations/{{org_id}}/environments/{{environment}}/keystores/{{keystore}}/aliases/{{alias}}
/// $ pulumi import gcp:apigee/keystoresAliasesPkcs12:KeystoresAliasesPkcs12 default {{org_id}}/{{environment}}/{{keystore}}/{{alias}}
/// ```
class KeystoresAliasesPkcs12 extends pulumi.CustomResource {
  /// Alias Name
  late final pulumi.Output<String> alias;
  /// Chain of certificates under this alias.
  /// Structure is documented below.
  late final pulumi.Output<List<KeystoresAliasesPkcs12CertsInfo>> certsInfos;
  /// (Optional) Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  ///
  /// - - -
  late final pulumi.Output<String> deletionPolicy;
  /// Environment associated with the alias
  late final pulumi.Output<String> environment;
  /// PKCS12 file content
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
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    alias = registerOutput<String>('alias');
    certsInfos = registerOutput<List<KeystoresAliasesPkcs12CertsInfo>>('certsInfos', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<KeystoresAliasesPkcs12CertsInfo>(guardedValue, (value) => KeystoresAliasesPkcs12CertsInfo.fromMap((value as Map).cast<String, dynamic>())); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
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
    pulumi.CustomResourceOptions? options,
  }) {
    return KeystoresAliasesPkcs12._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
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
    certsInfos = registerOutput<List<KeystoresAliasesPkcs12CertsInfo>>('certsInfos', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<KeystoresAliasesPkcs12CertsInfo>(guardedValue, (value) => KeystoresAliasesPkcs12CertsInfo.fromMap((value as Map).cast<String, dynamic>())); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    environment = registerOutput<String>('environment');
    file = registerOutput<String>('file');
    filehash = registerOutput<String>('filehash');
    keystore = registerOutput<String>('keystore');
    orgId = registerOutput<String>('orgId');
    password = registerOutput<String>('password');
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [KeystoresAliasesPkcs12] resource.
  KeystoresAliasesPkcs12.reference(String urn)
    : super(
        'gcp:apigee/keystoresAliasesPkcs12:KeystoresAliasesPkcs12',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    alias = registerOutput<String>('alias');
    certsInfos = registerOutput<List<KeystoresAliasesPkcs12CertsInfo>>('certsInfos', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<KeystoresAliasesPkcs12CertsInfo>(guardedValue, (value) => KeystoresAliasesPkcs12CertsInfo.fromMap((value as Map).cast<String, dynamic>())); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    environment = registerOutput<String>('environment');
    file = registerOutput<String>('file');
    filehash = registerOutput<String>('filehash');
    keystore = registerOutput<String>('keystore');
    orgId = registerOutput<String>('orgId');
    password = registerOutput<String>('password');
    type = registerOutput<String>('type');
  }
}
