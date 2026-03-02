// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAutonomousDatabasePropertyConnectionStringProfile {
  /// The current consumer group being used by the connection.
  /// Possible values:
  /// CONSUMER_GROUP_UNSPECIFIED
  /// HIGH
  /// MEDIUM
  /// LOW
  /// TP
  /// TPURGENT
  final pulumi.Input<String> consumerGroup;
  /// The display name for the database connection.
  final pulumi.Input<String> displayName;
  /// The host name format being currently used in connection string.
  /// Possible values:
  /// HOST_FORMAT_UNSPECIFIED
  /// FQDN
  /// IP
  final pulumi.Input<String> hostFormat;
  /// This field indicates if the connection string is regional and is only
  /// applicable for cross-region Data Guard.
  final pulumi.Input<bool> isRegional;
  /// The protocol being used by the connection.
  /// Possible values:
  /// PROTOCOL_UNSPECIFIED
  /// TCP
  /// TCPS
  final pulumi.Input<String> protocol;
  /// The current session mode of the connection.
  /// Possible values:
  /// SESSION_MODE_UNSPECIFIED
  /// DIRECT
  /// INDIRECT
  final pulumi.Input<String> sessionMode;
  /// The syntax of the connection string.
  /// Possible values:
  /// SYNTAX_FORMAT_UNSPECIFIED
  /// LONG
  /// EZCONNECT
  /// EZCONNECTPLUS
  final pulumi.Input<String> syntaxFormat;
  /// This field indicates the TLS authentication type of the connection.
  /// Possible values:
  /// TLS_AUTHENTICATION_UNSPECIFIED
  /// SERVER
  /// MUTUAL
  final pulumi.Input<String> tlsAuthentication;
  /// The value of the connection string.
  final pulumi.Input<String> value;

  /// Creates a new [GetAutonomousDatabasePropertyConnectionStringProfile].
  /// [consumerGroup] The current consumer group being used by the connection.
  /// [displayName] The display name for the database connection.
  /// [hostFormat] The host name format being currently used in connection string.
  /// [isRegional] This field indicates if the connection string is regional and is only
  /// [protocol] The protocol being used by the connection.
  /// [sessionMode] The current session mode of the connection.
  /// [syntaxFormat] The syntax of the connection string.
  /// [tlsAuthentication] This field indicates the TLS authentication type of the connection.
  /// [value] The value of the connection string.
  GetAutonomousDatabasePropertyConnectionStringProfile({
    required this.consumerGroup,
    required this.displayName,
    required this.hostFormat,
    required this.isRegional,
    required this.protocol,
    required this.sessionMode,
    required this.syntaxFormat,
    required this.tlsAuthentication,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumerGroup': consumerGroup,
      'displayName': displayName,
      'hostFormat': hostFormat,
      'isRegional': isRegional,
      'protocol': protocol,
      'sessionMode': sessionMode,
      'syntaxFormat': syntaxFormat,
      'tlsAuthentication': tlsAuthentication,
      'value': value,
    };
  }

  factory GetAutonomousDatabasePropertyConnectionStringProfile.fromMap(Map<String, dynamic> map) {
    return GetAutonomousDatabasePropertyConnectionStringProfile(
      consumerGroup: (map['consumerGroup'] as String).input(),
      displayName: (map['displayName'] as String).input(),
      hostFormat: (map['hostFormat'] as String).input(),
      isRegional: (map['isRegional'] as bool).input(),
      protocol: (map['protocol'] as String).input(),
      sessionMode: (map['sessionMode'] as String).input(),
      syntaxFormat: (map['syntaxFormat'] as String).input(),
      tlsAuthentication: (map['tlsAuthentication'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

