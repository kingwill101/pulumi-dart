// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ltm_profile_ftp_profile_ftp_args_doc}
/// The set of arguments for ProfileFtp.
/// {@endtemplate}
/// {@macro pulumi_ltm_profile_ftp_profile_ftp_args_doc}
class ProfileFtpArgs {
  /// Specifies, when selected (enabled), that the system allows FTP Active Transfer mode. The default value is enabled.
  final pulumi.Input<String>? allowActiveMode;
  /// Allows explicit FTPS negotiation
  final pulumi.Input<String>? allowFtps;
  /// The application service to which the object belongs.
  final pulumi.Input<String>? appService;
  /// Specifies the profile that you want to use as the parent profile. Your new profile inherits all settings and values from the parent profile specified.
  final pulumi.Input<String>? defaultsFrom;
  /// User defined description
  final pulumi.Input<String>? description;
  /// Specifies, when selected (enabled), that the system enforces the data connection to reuse a TLS session. The default value is unchecked (disabled).
  final pulumi.Input<String>? enforceTlssessionReuse;
  /// Allows explicit FTPS negotiation
  final pulumi.Input<String>? ftpsMode;
  /// Enables the FTP data channel to inherit the TCP profile used by the control channel.If disabled,the data channel uses FastL4 only.
  final pulumi.Input<String>? inheritParentProfile;
  /// inherent vlan list
  final pulumi.Input<String>? inheritVlanList;
  /// Configures the ALG log profile that controls logging
  final pulumi.Input<String>? logProfile;
  /// Configures the log publisher that handles events logging for this profile
  final pulumi.Input<String>? logPublisher;
  /// Name of the profile_ftp
  final pulumi.Input<String> name;
  /// Displays the administrative partition within which this profile resides
  final pulumi.Input<String>? partition;
  /// Specifies a service for the data channel port used for this FTP profile. The default port is ftp-data.
  final pulumi.Input<int>? port;
  /// Enables secure FTP traffic for the BIG-IP Application Security Manager. You can set the security option only if the system is licensed for the BIG-IP Application Security Manager. The default value is disabled.
  final pulumi.Input<String>? security;
  /// This setting is enabled by default, and thus, automatically translates RFC 2428 extended requests EPSV and EPRT to PASV and PORT when communicating with IPv4 servers.
  final pulumi.Input<String>? translateExtended;

  /// Creates a new [ProfileFtpArgs].
  /// [allowActiveMode] Specifies, when selected (enabled), that the system allows FTP Active Transfer mode. The default value is enabled.
  /// [allowFtps] Allows explicit FTPS negotiation
  /// [appService] The application service to which the object belongs.
  /// [defaultsFrom] Specifies the profile that you want to use as the parent profile. Your new profile inherits all settings and values from the parent profile specified.
  /// [description] User defined description
  /// [enforceTlssessionReuse] Specifies, when selected (enabled), that the system enforces the data connection to reuse a TLS session. The default value is unchecked (disabled).
  /// [ftpsMode] Allows explicit FTPS negotiation
  /// [inheritParentProfile] Enables the FTP data channel to inherit the TCP profile used by the control channel.If disabled,the data channel uses FastL4 only.
  /// [inheritVlanList] inherent vlan list
  /// [logProfile] Configures the ALG log profile that controls logging
  /// [logPublisher] Configures the log publisher that handles events logging for this profile
  /// [name] Name of the profile_ftp
  /// [partition] Displays the administrative partition within which this profile resides
  /// [port] Specifies a service for the data channel port used for this FTP profile. The default port is ftp-data.
  /// [security] Enables secure FTP traffic for the BIG-IP Application Security Manager. You can set the security option only if the system is licensed for the BIG-IP Application Security Manager. The default value is disabled.
  /// [translateExtended] This setting is enabled by default, and thus, automatically translates RFC 2428 extended requests EPSV and EPRT to PASV and PORT when communicating with IPv4 servers.
  ProfileFtpArgs({
    this.allowActiveMode,
    this.allowFtps,
    this.appService,
    this.defaultsFrom,
    this.description,
    this.enforceTlssessionReuse,
    this.ftpsMode,
    this.inheritParentProfile,
    this.inheritVlanList,
    this.logProfile,
    this.logPublisher,
    required this.name,
    this.partition,
    this.port,
    this.security,
    this.translateExtended,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowActiveMode': ?allowActiveMode,
      'allowFtps': ?allowFtps,
      'appService': ?appService,
      'defaultsFrom': ?defaultsFrom,
      'description': ?description,
      'enforceTlssessionReuse': ?enforceTlssessionReuse,
      'ftpsMode': ?ftpsMode,
      'inheritParentProfile': ?inheritParentProfile,
      'inheritVlanList': ?inheritVlanList,
      'logProfile': ?logProfile,
      'logPublisher': ?logPublisher,
      'name': name,
      'partition': ?partition,
      'port': ?port,
      'security': ?security,
      'translateExtended': ?translateExtended,
    };
  }

  factory ProfileFtpArgs.fromMap(Map<String, dynamic> map) {
    return ProfileFtpArgs(
      allowActiveMode: map['allowActiveMode'] == null ? null : (map['allowActiveMode']! as String).input(),
      allowFtps: map['allowFtps'] == null ? null : (map['allowFtps']! as String).input(),
      appService: map['appService'] == null ? null : (map['appService']! as String).input(),
      defaultsFrom: map['defaultsFrom'] == null ? null : (map['defaultsFrom']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      enforceTlssessionReuse: map['enforceTlssessionReuse'] == null ? null : (map['enforceTlssessionReuse']! as String).input(),
      ftpsMode: map['ftpsMode'] == null ? null : (map['ftpsMode']! as String).input(),
      inheritParentProfile: map['inheritParentProfile'] == null ? null : (map['inheritParentProfile']! as String).input(),
      inheritVlanList: map['inheritVlanList'] == null ? null : (map['inheritVlanList']! as String).input(),
      logProfile: map['logProfile'] == null ? null : (map['logProfile']! as String).input(),
      logPublisher: map['logPublisher'] == null ? null : (map['logPublisher']! as String).input(),
      name: (map['name'] as String).input(),
      partition: map['partition'] == null ? null : (map['partition']! as String).input(),
      port: map['port'] == null ? null : (map['port']! as int).input(),
      security: map['security'] == null ? null : (map['security']! as String).input(),
      translateExtended: map['translateExtended'] == null ? null : (map['translateExtended']! as String).input(),
    );
  }
}

