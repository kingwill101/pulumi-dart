// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SecuritySolutionRecommendationsEnabled {
  /// Is Principal Authentication enabled for the ACR repository? Defaults to `true`.
  final pulumi.Input<bool?>? acrAuthentication;
  /// Is Agent send underutilized messages enabled? Defaults to `true`.
  final pulumi.Input<bool?>? agentSendUnutilizedMsg;
  /// Is Security related system configuration issues identified? Defaults to `true`.
  final pulumi.Input<bool?>? baseline;
  /// Is IoT Edge Hub memory optimized? Defaults to `true`.
  final pulumi.Input<bool?>? edgeHubMemOptimize;
  /// Is logging configured for IoT Edge module? Defaults to `true`.
  final pulumi.Input<bool?>? edgeLoggingOption;
  /// Is inconsistent module settings enabled for SecurityGroup? Defaults to `true`.
  final pulumi.Input<bool?>? inconsistentModuleSettings;
  /// is Azure IoT Security agent installed? Defaults to `true`.
  final pulumi.Input<bool?>? installAgent;
  /// Is Default IP filter policy denied? Defaults to `true`.
  final pulumi.Input<bool?>? ipFilterDenyAll;
  /// Is IP filter rule source allowable IP range too large? Defaults to `true`.
  final pulumi.Input<bool?>? ipFilterPermissiveRule;
  /// Is any ports open on the device? Defaults to `true`.
  final pulumi.Input<bool?>? openPorts;
  /// Does firewall policy exist which allow necessary communication to/from the device? Defaults to `true`.
  final pulumi.Input<bool?>? permissiveFirewallPolicy;
  /// Is only necessary addresses or ports are permitted in? Defaults to `true`.
  final pulumi.Input<bool?>? permissiveInputFirewallRules;
  /// Is only necessary addresses or ports are permitted out? Defaults to `true`.
  final pulumi.Input<bool?>? permissiveOutputFirewallRules;
  /// Is high level permissions are needed for the module? Defaults to `true`.
  final pulumi.Input<bool?>? privilegedDockerOptions;
  /// Is any credentials shared among devices? Defaults to `true`.
  final pulumi.Input<bool?>? sharedCredentials;
  /// Does TLS cipher suite need to be updated? Defaults to `true`.
  final pulumi.Input<bool?>? vulnerableTlsCipherSuite;

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
  const SecuritySolutionRecommendationsEnabled({
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
      acrAuthentication: (() { final guardedValue = map['acrAuthentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      agentSendUnutilizedMsg: (() { final guardedValue = map['agentSendUnutilizedMsg']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      baseline: (() { final guardedValue = map['baseline']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      edgeHubMemOptimize: (() { final guardedValue = map['edgeHubMemOptimize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      edgeLoggingOption: (() { final guardedValue = map['edgeLoggingOption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      inconsistentModuleSettings: (() { final guardedValue = map['inconsistentModuleSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      installAgent: (() { final guardedValue = map['installAgent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ipFilterDenyAll: (() { final guardedValue = map['ipFilterDenyAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ipFilterPermissiveRule: (() { final guardedValue = map['ipFilterPermissiveRule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      openPorts: (() { final guardedValue = map['openPorts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      permissiveFirewallPolicy: (() { final guardedValue = map['permissiveFirewallPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      permissiveInputFirewallRules: (() { final guardedValue = map['permissiveInputFirewallRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      permissiveOutputFirewallRules: (() { final guardedValue = map['permissiveOutputFirewallRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      privilegedDockerOptions: (() { final guardedValue = map['privilegedDockerOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sharedCredentials: (() { final guardedValue = map['sharedCredentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      vulnerableTlsCipherSuite: (() { final guardedValue = map['vulnerableTlsCipherSuite']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
