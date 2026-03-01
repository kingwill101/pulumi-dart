// ignore_for_file: unused_element, unnecessary_cast


class SecuritySolutionRecommendationsEnabled {
  /// Is Principal Authentication enabled for the ACR repository? Defaults to `true`.
  final bool? acrAuthentication;
  /// Is Agent send underutilized messages enabled? Defaults to `true`.
  final bool? agentSendUnutilizedMsg;
  /// Is Security related system configuration issues identified? Defaults to `true`.
  final bool? baseline;
  /// Is IoT Edge Hub memory optimized? Defaults to `true`.
  final bool? edgeHubMemOptimize;
  /// Is logging configured for IoT Edge module? Defaults to `true`.
  final bool? edgeLoggingOption;
  /// Is inconsistent module settings enabled for SecurityGroup? Defaults to `true`.
  final bool? inconsistentModuleSettings;
  /// is Azure IoT Security agent installed? Defaults to `true`.
  final bool? installAgent;
  /// Is Default IP filter policy denied? Defaults to `true`.
  final bool? ipFilterDenyAll;
  /// Is IP filter rule source allowable IP range too large? Defaults to `true`.
  final bool? ipFilterPermissiveRule;
  /// Is any ports open on the device? Defaults to `true`.
  final bool? openPorts;
  /// Does firewall policy exist which allow necessary communication to/from the device? Defaults to `true`.
  final bool? permissiveFirewallPolicy;
  /// Is only necessary addresses or ports are permitted in? Defaults to `true`.
  final bool? permissiveInputFirewallRules;
  /// Is only necessary addresses or ports are permitted out? Defaults to `true`.
  final bool? permissiveOutputFirewallRules;
  /// Is high level permissions are needed for the module? Defaults to `true`.
  final bool? privilegedDockerOptions;
  /// Is any credentials shared among devices? Defaults to `true`.
  final bool? sharedCredentials;
  /// Does TLS cipher suite need to be updated? Defaults to `true`.
  final bool? vulnerableTlsCipherSuite;

  /// Creates a new [SecuritySolutionRecommendationsEnabled].
  /// [acrAuthentication] Is Principal Authentication enabled for the ACR repository? Defaults to `true`.
  /// [agentSendUnutilizedMsg] Is Agent send underutilized messages enabled? Defaults to `true`.
  /// [baseline] Is Security related system configuration issues identified? Defaults to `true`.
  /// [edgeHubMemOptimize] Is IoT Edge Hub memory optimized? Defaults to `true`.
  /// [edgeLoggingOption] Is logging configured for IoT Edge module? Defaults to `true`.
  /// [inconsistentModuleSettings] Is inconsistent module settings enabled for SecurityGroup? Defaults to `true`.
  /// [installAgent] is Azure IoT Security agent installed? Defaults to `true`.
  /// [ipFilterDenyAll] Is Default IP filter policy denied? Defaults to `true`.
  /// [ipFilterPermissiveRule] Is IP filter rule source allowable IP range too large? Defaults to `true`.
  /// [openPorts] Is any ports open on the device? Defaults to `true`.
  /// [permissiveFirewallPolicy] Does firewall policy exist which allow necessary communication to/from the device? Defaults to `true`.
  /// [permissiveInputFirewallRules] Is only necessary addresses or ports are permitted in? Defaults to `true`.
  /// [permissiveOutputFirewallRules] Is only necessary addresses or ports are permitted out? Defaults to `true`.
  /// [privilegedDockerOptions] Is high level permissions are needed for the module? Defaults to `true`.
  /// [sharedCredentials] Is any credentials shared among devices? Defaults to `true`.
  /// [vulnerableTlsCipherSuite] Does TLS cipher suite need to be updated? Defaults to `true`.
  SecuritySolutionRecommendationsEnabled({
    this.acrAuthentication,
    this.agentSendUnutilizedMsg,
    this.baseline,
    this.edgeHubMemOptimize,
    this.edgeLoggingOption,
    this.inconsistentModuleSettings,
    this.installAgent,
    this.ipFilterDenyAll,
    this.ipFilterPermissiveRule,
    this.openPorts,
    this.permissiveFirewallPolicy,
    this.permissiveInputFirewallRules,
    this.permissiveOutputFirewallRules,
    this.privilegedDockerOptions,
    this.sharedCredentials,
    this.vulnerableTlsCipherSuite,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acrAuthentication': ?acrAuthentication,
      'agentSendUnutilizedMsg': ?agentSendUnutilizedMsg,
      'baseline': ?baseline,
      'edgeHubMemOptimize': ?edgeHubMemOptimize,
      'edgeLoggingOption': ?edgeLoggingOption,
      'inconsistentModuleSettings': ?inconsistentModuleSettings,
      'installAgent': ?installAgent,
      'ipFilterDenyAll': ?ipFilterDenyAll,
      'ipFilterPermissiveRule': ?ipFilterPermissiveRule,
      'openPorts': ?openPorts,
      'permissiveFirewallPolicy': ?permissiveFirewallPolicy,
      'permissiveInputFirewallRules': ?permissiveInputFirewallRules,
      'permissiveOutputFirewallRules': ?permissiveOutputFirewallRules,
      'privilegedDockerOptions': ?privilegedDockerOptions,
      'sharedCredentials': ?sharedCredentials,
      'vulnerableTlsCipherSuite': ?vulnerableTlsCipherSuite,
    };
  }

  factory SecuritySolutionRecommendationsEnabled.fromMap(Map<String, dynamic> map) {
    return SecuritySolutionRecommendationsEnabled(
      acrAuthentication: map['acrAuthentication'] == null ? null : map['acrAuthentication'] as bool,
      agentSendUnutilizedMsg: map['agentSendUnutilizedMsg'] == null ? null : map['agentSendUnutilizedMsg'] as bool,
      baseline: map['baseline'] == null ? null : map['baseline'] as bool,
      edgeHubMemOptimize: map['edgeHubMemOptimize'] == null ? null : map['edgeHubMemOptimize'] as bool,
      edgeLoggingOption: map['edgeLoggingOption'] == null ? null : map['edgeLoggingOption'] as bool,
      inconsistentModuleSettings: map['inconsistentModuleSettings'] == null ? null : map['inconsistentModuleSettings'] as bool,
      installAgent: map['installAgent'] == null ? null : map['installAgent'] as bool,
      ipFilterDenyAll: map['ipFilterDenyAll'] == null ? null : map['ipFilterDenyAll'] as bool,
      ipFilterPermissiveRule: map['ipFilterPermissiveRule'] == null ? null : map['ipFilterPermissiveRule'] as bool,
      openPorts: map['openPorts'] == null ? null : map['openPorts'] as bool,
      permissiveFirewallPolicy: map['permissiveFirewallPolicy'] == null ? null : map['permissiveFirewallPolicy'] as bool,
      permissiveInputFirewallRules: map['permissiveInputFirewallRules'] == null ? null : map['permissiveInputFirewallRules'] as bool,
      permissiveOutputFirewallRules: map['permissiveOutputFirewallRules'] == null ? null : map['permissiveOutputFirewallRules'] as bool,
      privilegedDockerOptions: map['privilegedDockerOptions'] == null ? null : map['privilegedDockerOptions'] as bool,
      sharedCredentials: map['sharedCredentials'] == null ? null : map['sharedCredentials'] as bool,
      vulnerableTlsCipherSuite: map['vulnerableTlsCipherSuite'] == null ? null : map['vulnerableTlsCipherSuite'] as bool,
    );
  }
}

