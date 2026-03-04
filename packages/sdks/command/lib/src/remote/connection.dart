// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'proxy_connection.dart';

/// Instructions for how to connect to a remote endpoint.
class Connection {
  /// SSH Agent socket path. Default to environment variable SSH_AUTH_SOCK if present.
  final pulumi.Input<String>? agentSocketPath;

  /// Max allowed errors on trying to dial the remote host. -1 set count to unlimited. Default value is 10.
  final pulumi.Input<int>? dialErrorLimit;

  /// The address of the resource to connect to.
  final pulumi.Input<String> host;

  /// The expected host key to verify the server's identity. If not provided, the host key will be ignored.
  final pulumi.Input<String>? hostKey;

  /// The password we should use for the connection.
  final pulumi.Input<String>? password;

  /// Max number of seconds for each dial attempt. 0 implies no maximum. Default value is 15 seconds.
  final pulumi.Input<int>? perDialTimeout;

  /// The port to connect to. Defaults to 22.
  final pulumi.Input<double>? port;

  /// The contents of an SSH key to use for the connection. This takes preference over the password if provided.
  final pulumi.Input<String>? privateKey;

  /// The password to use in case the private key is encrypted.
  final pulumi.Input<String>? privateKeyPassword;

  /// The connection settings for the bastion/proxy host.
  final pulumi.Input<ProxyConnection>? proxy;

  /// The user that we should use for the connection.
  final pulumi.Input<String>? user;

  /// Creates a new [Connection].
  /// [agentSocketPath] SSH Agent socket path. Default to environment variable SSH_AUTH_SOCK if present.
  /// [dialErrorLimit] Max allowed errors on trying to dial the remote host. -1 set count to unlimited. Default value is 10.
  /// [host] The address of the resource to connect to.
  /// [hostKey] The expected host key to verify the server's identity. If not provided, the host key will be ignored.
  /// [password] The password we should use for the connection.
  /// [perDialTimeout] Max number of seconds for each dial attempt. 0 implies no maximum. Default value is 15 seconds.
  /// [port] The port to connect to. Defaults to 22.
  /// [privateKey] The contents of an SSH key to use for the connection. This takes preference over the password if provided.
  /// [privateKeyPassword] The password to use in case the private key is encrypted.
  /// [proxy] The connection settings for the bastion/proxy host.
  /// [user] The user that we should use for the connection.
  Connection({
    this.agentSocketPath,
    this.dialErrorLimit,
    required this.host,
    this.hostKey,
    this.password,
    this.perDialTimeout,
    this.port,
    this.privateKey,
    this.privateKeyPassword,
    this.proxy,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentSocketPath': ?agentSocketPath,
      'dialErrorLimit': ?dialErrorLimit,
      'host': host,
      'hostKey': ?hostKey,
      'password': ?password,
      'perDialTimeout': ?perDialTimeout,
      'port': ?port,
      'privateKey': ?privateKey,
      'privateKeyPassword': ?privateKeyPassword,
      'proxy':
          ?pulumi.Input.mapOptionalInputValue<
            ProxyConnection,
            Map<String, dynamic>
          >(proxy, (value) => value.toMap()),
      'user': ?user,
    };
  }

  factory Connection.fromMap(Map<String, dynamic> map) {
    return Connection(
      agentSocketPath: (() {
        final guardedValue = map['agentSocketPath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dialErrorLimit: (() {
        final guardedValue = map['dialErrorLimit'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      host: pulumi.Input.fromValue(map['host'] as String),
      hostKey: (() {
        final guardedValue = map['hostKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      password: (() {
        final guardedValue = map['password'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      perDialTimeout: (() {
        final guardedValue = map['perDialTimeout'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      port: (() {
        final guardedValue = map['port'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      privateKey: (() {
        final guardedValue = map['privateKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      privateKeyPassword: (() {
        final guardedValue = map['privateKeyPassword'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      proxy: (() {
        final guardedValue = map['proxy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ProxyConnection.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      user: (() {
        final guardedValue = map['user'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
