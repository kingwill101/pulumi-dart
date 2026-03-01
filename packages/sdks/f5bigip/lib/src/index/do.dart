import 'package:pulumi/pulumi.dart' as pulumi;
import 'do_args.dart';
import 'do_state.dart';

class Do extends pulumi.CustomResource {
  /// IP Address of BIGIP Host to be used for this resource,this is optional parameter.
  /// whenever we specify this parameter it gets overwrite provider configuration
  late final pulumi.Output<String?> bigipAddress;
  /// Password of  BIGIP host to be used for this resource
  late final pulumi.Output<String?> bigipPassword;
  /// Port number of BIGIP host to be used for this resource,this is optional parameter.
  /// whenever we specify this parameter it gets overwrite provider configuration
  late final pulumi.Output<String?> bigipPort;
  /// Enable to use an external authentication source (LDAP, TACACS, etc)
  late final pulumi.Output<bool?> bigipTokenAuth;
  /// UserName of BIGIP host to be used for this resource,this is optional parameter.
  /// whenever we specify this parameter it gets overwrite provider configuration
  late final pulumi.Output<String?> bigipUser;
  /// Name of the of the Declarative DO JSON file
  late final pulumi.Output<String> doJson;
  /// unique identifier for DO resource
  late final pulumi.Output<String?> tenantName;
  /// DO json
  late final pulumi.Output<int?> timeout;

  /// Creates a new [Do].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Do]. {@macro pulumi_index_do_do_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Do(
    String name, {
    DoArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:index/do:Do',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bigipAddress = registerOutput<String?>('bigipAddress');
    this.bigipPassword = registerOutput<String?>('bigipPassword');
    this.bigipPort = registerOutput<String?>('bigipPort');
    this.bigipTokenAuth = registerOutput<bool?>('bigipTokenAuth');
    this.bigipUser = registerOutput<String?>('bigipUser');
    this.doJson = registerOutput<String>('doJson');
    this.tenantName = registerOutput<String?>('tenantName');
    this.timeout = registerOutput<int?>('timeout');
  }

  /// Gets an existing [Do] resource's state with the given [name] and [id].
  static Do get(
    String name,
    pulumi.Input<String> id, {
    DoState? state,
  }) {
    return Do._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Do._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:index/do:Do',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bigipAddress = registerOutput<String?>('bigipAddress');
    this.bigipPassword = registerOutput<String?>('bigipPassword');
    this.bigipPort = registerOutput<String?>('bigipPort');
    this.bigipTokenAuth = registerOutput<bool?>('bigipTokenAuth');
    this.bigipUser = registerOutput<String?>('bigipUser');
    this.doJson = registerOutput<String>('doJson');
    this.tenantName = registerOutput<String?>('tenantName');
    this.timeout = registerOutput<int?>('timeout');
  }
}
