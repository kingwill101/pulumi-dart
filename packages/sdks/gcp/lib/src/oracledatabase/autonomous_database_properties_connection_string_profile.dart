// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutonomousDatabasePropertiesConnectionStringProfile {
  /// The current consumer group being used by the connection.
  /// Possible values:
  /// CONSUMER_GROUP_UNSPECIFIED
  /// HIGH
  /// MEDIUM
  /// LOW
  /// TP
  /// TPURGENT
  final pulumi.Input<String?>? consumerGroup;
  /// The display name for the Autonomous Database. The name does not have to
  /// be unique within your project.
  final pulumi.Input<String?>? displayName;
  /// The host name format being currently used in connection string.
  /// Possible values:
  /// HOST_FORMAT_UNSPECIFIED
  /// FQDN
  /// IP
  final pulumi.Input<String?>? hostFormat;
  /// This field indicates if the connection string is regional and is only
  /// applicable for cross-region Data Guard.
  final pulumi.Input<bool?>? isRegional;
  /// The protocol being used by the connection.
  /// Possible values:
  /// PROTOCOL_UNSPECIFIED
  /// TCP
  /// TCPS
  final pulumi.Input<String?>? protocol;
  /// The current session mode of the connection.
  /// Possible values:
  /// SESSION_MODE_UNSPECIFIED
  /// DIRECT
  /// INDIRECT
  final pulumi.Input<String?>? sessionMode;
  /// The syntax of the connection string.
  /// Possible values:
  /// SYNTAX_FORMAT_UNSPECIFIED
  /// LONG
  /// EZCONNECT
  /// EZCONNECTPLUS
  final pulumi.Input<String?>? syntaxFormat;
  /// This field indicates the TLS authentication type of the connection.
  /// Possible values:
  /// TLS_AUTHENTICATION_UNSPECIFIED
  /// SERVER
  /// MUTUAL
  final pulumi.Input<String?>? tlsAuthentication;
  /// The value of the connection string.
  final pulumi.Input<String?>? value;

  /// Creates a new [AutonomousDatabasePropertiesConnectionStringProfile].
  /// [consumerGroup] The current consumer group being used by the connection.
  /// [displayName] The display name for the Autonomous Database. The name does not have to
  /// [hostFormat] The host name format being currently used in connection string.
  /// [isRegional] This field indicates if the connection string is regional and is only
  /// [protocol] The protocol being used by the connection.
  /// [sessionMode] The current session mode of the connection.
  /// [syntaxFormat] The syntax of the connection string.
  /// [tlsAuthentication] This field indicates the TLS authentication type of the connection.
  /// [value] The value of the connection string.
  const AutonomousDatabasePropertiesConnectionStringProfile({
    this.consumerGroup,
    this.displayName,
    this.hostFormat,
    this.isRegional,
    this.protocol,
    this.sessionMode,
    this.syntaxFormat,
    this.tlsAuthentication,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumerGroup': ?consumerGroup,
      'displayName': ?displayName,
      'hostFormat': ?hostFormat,
      'isRegional': ?isRegional,
      'protocol': ?protocol,
      'sessionMode': ?sessionMode,
      'syntaxFormat': ?syntaxFormat,
      'tlsAuthentication': ?tlsAuthentication,
      'value': ?value,
    };
  }

  factory AutonomousDatabasePropertiesConnectionStringProfile.fromMap(Map<String, dynamic> map) {
    return AutonomousDatabasePropertiesConnectionStringProfile(
      consumerGroup: (() { final guardedValue = map['consumerGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostFormat: (() { final guardedValue = map['hostFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isRegional: (() { final guardedValue = map['isRegional']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sessionMode: (() { final guardedValue = map['sessionMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      syntaxFormat: (() { final guardedValue = map['syntaxFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tlsAuthentication: (() { final guardedValue = map['tlsAuthentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
