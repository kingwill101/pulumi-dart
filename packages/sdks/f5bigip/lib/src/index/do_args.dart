// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_do_do_args_doc}
/// The set of arguments for Do.
/// {@endtemplate}
/// {@macro pulumi_index_do_do_args_doc}
class DoArgs {
  /// IP Address of BIGIP Host to be used for this resource,this is optional parameter.
  /// whenever we specify this parameter it gets overwrite provider configuration
  final pulumi.Input<String>? bigipAddress;
  /// Password of  BIGIP host to be used for this resource
  final pulumi.Input<String>? bigipPassword;
  /// Port number of BIGIP host to be used for this resource,this is optional parameter.
  /// whenever we specify this parameter it gets overwrite provider configuration
  final pulumi.Input<String>? bigipPort;
  /// Enable to use an external authentication source (LDAP, TACACS, etc)
  final pulumi.Input<bool>? bigipTokenAuth;
  /// UserName of BIGIP host to be used for this resource,this is optional parameter.
  /// whenever we specify this parameter it gets overwrite provider configuration
  final pulumi.Input<String>? bigipUser;
  /// Name of the of the Declarative DO JSON file
  final pulumi.Input<String> doJson;
  /// unique identifier for DO resource
  final pulumi.Input<String>? tenantName;
  /// DO json
  final pulumi.Input<int>? timeout;

  /// Creates a new [DoArgs].
  /// [bigipAddress] IP Address of BIGIP Host to be used for this resource,this is optional parameter.
  /// [bigipPassword] Password of  BIGIP host to be used for this resource
  /// [bigipPort] Port number of BIGIP host to be used for this resource,this is optional parameter.
  /// [bigipTokenAuth] Enable to use an external authentication source (LDAP, TACACS, etc)
  /// [bigipUser] UserName of BIGIP host to be used for this resource,this is optional parameter.
  /// [doJson] Name of the of the Declarative DO JSON file
  /// [tenantName] unique identifier for DO resource
  /// [timeout] DO json
  DoArgs({
    this.bigipAddress,
    this.bigipPassword,
    this.bigipPort,
    this.bigipTokenAuth,
    this.bigipUser,
    required this.doJson,
    this.tenantName,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigipAddress': ?bigipAddress,
      'bigipPassword': ?bigipPassword,
      'bigipPort': ?bigipPort,
      'bigipTokenAuth': ?bigipTokenAuth,
      'bigipUser': ?bigipUser,
      'doJson': doJson,
      'tenantName': ?tenantName,
      'timeout': ?timeout,
    };
  }

  factory DoArgs.fromMap(Map<String, dynamic> map) {
    return DoArgs(
      bigipAddress: (() { final guardedValue = map['bigipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bigipPassword: (() { final guardedValue = map['bigipPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bigipPort: (() { final guardedValue = map['bigipPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bigipTokenAuth: (() { final guardedValue = map['bigipTokenAuth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      bigipUser: (() { final guardedValue = map['bigipUser']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      doJson: pulumi.Input.fromValue(map['doJson'] as String),
      tenantName: (() { final guardedValue = map['tenantName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

