// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SecuritySolutionRecommendationsEnabled {
  /// Is Principal Authentication enabled for the ACR repository? Defaults to `true`.
  final pulumi.Input<bool>? acrAuthentication;
  /// Is Agent send underutilized messages enabled? Defaults to `true`.
  final pulumi.Input<bool>? agentSendUnutilizedMsg;
  /// Is Security related system configuration issues identified? Defaults to `true`.
  final pulumi.Input<bool>? baseline;
  /// Is IoT Edge Hub memory optimized? Defaults to `true`.
  final pulumi.Input<bool>? edgeHubMemOptimize;
  /// Is logging configured for IoT Edge module? Defaults to `true`.
  final pulumi.Input<bool>? edgeLoggingOption;
  /// Is inconsistent module settings enabled for SecurityGroup? Defaults to `true`.
  final pulumi.Input<bool>? inconsistentModuleSettings;
  /// is Azure IoT Security agent installed? Defaults to `true`.
  final pulumi.Input<bool>? installAgent;
  /// Is Default IP filter policy denied? Defaults to `true`.
  final pulumi.Input<bool>? ipFilterDenyAll;
  /// Is IP filter rule source allowable IP range too large? Defaults to `true`.
  final pulumi.Input<bool>? ipFilterPermissiveRule;
  /// Is any ports open on the device? Defaults to `true`.
  final pulumi.Input<bool>? openPorts;
  /// Does firewall policy exist which allow necessary communication to/from the device? Defaults to `true`.
  final pulumi.Input<bool>? permissiveFirewallPolicy;
  /// Is only necessary addresses or ports are permitted in? Defaults to `true`.
  final pulumi.Input<bool>? permissiveInputFirewallRules;
  /// Is only necessary addresses or ports are permitted out? Defaults to `true`.
  final pulumi.Input<bool>? permissiveOutputFirewallRules;
  /// Is high level permissions are needed for the module? Defaults to `true`.
  final pulumi.Input<bool>? privilegedDockerOptions;
  /// Is any credentials shared among devices? Defaults to `true`.
  final pulumi.Input<bool>? sharedCredentials;
  /// Does TLS cipher suite need to be updated? Defaults to `true`.
  final pulumi.Input<bool>? vulnerableTlsCipherSuite;

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
      acrAuthentication: map['acrAuthentication'] == null ? null : (map['acrAuthentication'] as bool).input(),
      agentSendUnutilizedMsg: map['agentSendUnutilizedMsg'] == null ? null : (map['agentSendUnutilizedMsg'] as bool).input(),
      baseline: map['baseline'] == null ? null : (map['baseline'] as bool).input(),
      edgeHubMemOptimize: map['edgeHubMemOptimize'] == null ? null : (map['edgeHubMemOptimize'] as bool).input(),
      edgeLoggingOption: map['edgeLoggingOption'] == null ? null : (map['edgeLoggingOption'] as bool).input(),
      inconsistentModuleSettings: map['inconsistentModuleSettings'] == null ? null : (map['inconsistentModuleSettings'] as bool).input(),
      installAgent: map['installAgent'] == null ? null : (map['installAgent'] as bool).input(),
      ipFilterDenyAll: map['ipFilterDenyAll'] == null ? null : (map['ipFilterDenyAll'] as bool).input(),
      ipFilterPermissiveRule: map['ipFilterPermissiveRule'] == null ? null : (map['ipFilterPermissiveRule'] as bool).input(),
      openPorts: map['openPorts'] == null ? null : (map['openPorts'] as bool).input(),
      permissiveFirewallPolicy: map['permissiveFirewallPolicy'] == null ? null : (map['permissiveFirewallPolicy'] as bool).input(),
      permissiveInputFirewallRules: map['permissiveInputFirewallRules'] == null ? null : (map['permissiveInputFirewallRules'] as bool).input(),
      permissiveOutputFirewallRules: map['permissiveOutputFirewallRules'] == null ? null : (map['permissiveOutputFirewallRules'] as bool).input(),
      privilegedDockerOptions: map['privilegedDockerOptions'] == null ? null : (map['privilegedDockerOptions'] as bool).input(),
      sharedCredentials: map['sharedCredentials'] == null ? null : (map['sharedCredentials'] as bool).input(),
      vulnerableTlsCipherSuite: map['vulnerableTlsCipherSuite'] == null ? null : (map['vulnerableTlsCipherSuite'] as bool).input(),
    );
  }
}

