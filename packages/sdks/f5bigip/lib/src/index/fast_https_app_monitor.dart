// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FastHttpsAppMonitor {
  /// Set the time between health checks,in seconds for FAST-Generated Pool Monitor.
  final pulumi.Input<int>? interval;
  /// set `true` if the servers require login credentials for web access on FAST-Generated Pool Monitor. default is `false`.
  final pulumi.Input<bool>? monitorAuth;
  /// password for web access on FAST-Generated Pool Monitor.
  final pulumi.Input<String>? password;
  /// The presence of this string anywhere in the HTTP response implies availability.
  final pulumi.Input<String>? response;
  /// Specify data to be sent during each health check for FAST-Generated Pool Monitor.
  final pulumi.Input<String>? sendString;
  /// username for web access on FAST-Generated Pool Monitor.
  final pulumi.Input<String>? username;

  /// Creates a new [FastHttpsAppMonitor].
  /// [interval] Set the time between health checks,in seconds for FAST-Generated Pool Monitor.
  /// [monitorAuth] set `true` if the servers require login credentials for web access on FAST-Generated Pool Monitor. default is `false`.
  /// [password] password for web access on FAST-Generated Pool Monitor.
  /// [response] The presence of this string anywhere in the HTTP response implies availability.
  /// [sendString] Specify data to be sent during each health check for FAST-Generated Pool Monitor.
  /// [username] username for web access on FAST-Generated Pool Monitor.
  FastHttpsAppMonitor({
    this.interval,
    this.monitorAuth,
    this.password,
    this.response,
    this.sendString,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interval': ?interval,
      'monitorAuth': ?monitorAuth,
      'password': ?password,
      'response': ?response,
      'sendString': ?sendString,
      'username': ?username,
    };
  }

  factory FastHttpsAppMonitor.fromMap(Map<String, dynamic> map) {
    return FastHttpsAppMonitor(
      interval: map['interval'] == null ? null : (map['interval']! as int).input(),
      monitorAuth: map['monitorAuth'] == null ? null : (map['monitorAuth']! as bool).input(),
      password: map['password'] == null ? null : (map['password']! as String).input(),
      response: map['response'] == null ? null : (map['response']! as String).input(),
      sendString: map['sendString'] == null ? null : (map['sendString']! as String).input(),
      username: map['username'] == null ? null : (map['username']! as String).input(),
    );
  }
}

