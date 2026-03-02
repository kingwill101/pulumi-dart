// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Do resources.
class DoState {
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
  final pulumi.Input<String>? doJson;
  /// unique identifier for DO resource
  final pulumi.Input<String>? tenantName;
  /// DO json
  final pulumi.Input<int>? timeout;

  /// Creates a new [DoState].
  /// [bigipAddress] IP Address of BIGIP Host to be used for this resource,this is optional parameter.
  /// [bigipPassword] Password of  BIGIP host to be used for this resource
  /// [bigipPort] Port number of BIGIP host to be used for this resource,this is optional parameter.
  /// [bigipTokenAuth] Enable to use an external authentication source (LDAP, TACACS, etc)
  /// [bigipUser] UserName of BIGIP host to be used for this resource,this is optional parameter.
  /// [doJson] Name of the of the Declarative DO JSON file
  /// [tenantName] unique identifier for DO resource
  /// [timeout] DO json
  DoState({
    this.bigipAddress,
    this.bigipPassword,
    this.bigipPort,
    this.bigipTokenAuth,
    this.bigipUser,
    this.doJson,
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
      'doJson': ?doJson,
      'tenantName': ?tenantName,
      'timeout': ?timeout,
    };
  }

  factory DoState.fromMap(Map<String, dynamic> map) {
    return DoState(
      bigipAddress: map['bigipAddress'] == null ? null : (map['bigipAddress']! as String).input(),
      bigipPassword: map['bigipPassword'] == null ? null : (map['bigipPassword']! as String).input(),
      bigipPort: map['bigipPort'] == null ? null : (map['bigipPort']! as String).input(),
      bigipTokenAuth: map['bigipTokenAuth'] == null ? null : (map['bigipTokenAuth']! as bool).input(),
      bigipUser: map['bigipUser'] == null ? null : (map['bigipUser']! as String).input(),
      doJson: map['doJson'] == null ? null : (map['doJson']! as String).input(),
      tenantName: map['tenantName'] == null ? null : (map['tenantName']! as String).input(),
      timeout: map['timeout'] == null ? null : (map['timeout']! as int).input(),
    );
  }
}

