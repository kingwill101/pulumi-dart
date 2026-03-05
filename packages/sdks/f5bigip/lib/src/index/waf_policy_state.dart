// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'waf_policy_file_type.dart';
import 'waf_policy_graphql_profile.dart';
import 'waf_policy_host_name.dart';
import 'waf_policy_ip_exception.dart';
import 'waf_policy_policy_builder.dart';
import 'waf_policy_signatures_setting.dart';

/// Input properties used for looking up and filtering WafPolicy resources.
class WafPolicyState {
  /// The character encoding for the web application. The character encoding determines how the policy processes the character sets. The default is `utf-8`
  final pulumi.Input<String>? applicationLanguage;
  /// Specifies whether the security policy treats microservice URLs, file types, URLs, and parameters as case sensitive or not. When this setting is enabled, the system stores these security policy elements in lowercase in the security policy configuration
  final pulumi.Input<bool>? caseInsensitive;
  /// Specifies the description of the policy.
  final pulumi.Input<String>? description;
  /// Passive Mode allows the policy to be associated with a Performance L4 Virtual Server (using a FastL4 profile). With FastL4, traffic is analyzed but is not modified in any way.
  final pulumi.Input<bool>? enablePassivemode;
  /// How the system processes a request that triggers a security policy violation
  final pulumi.Input<String>? enforcementMode;
  /// `file_types` takes list of file-types options to be used for policy builder.
  /// See file types below for more details.
  final pulumi.Input<List<WafPolicyFileType>>? fileTypes;
  /// `graphql_profiles` takes list of graphql profile options to be used for policy builder.
  /// See graphql profiles below for more details.
  final pulumi.Input<List<WafPolicyGraphqlProfile>>? graphqlProfiles;
  /// specify the list of host name that is used to access the application
  final pulumi.Input<List<WafPolicyHostName>>? hostNames;
  /// `ip_exceptions` takes list of IP address exception,An IP address exception is an IP address that you want the system to treat in a specific way for a security policy.For example, you can specify IP addresses from which the system should always trust traffic.
  /// See IP Exceptions below for more details.
  final pulumi.Input<List<WafPolicyIpException>>? ipExceptions;
  /// the modifications section includes actions that modify the declarative policy as it is defined in the adjustments section. The modifications section is updated manually, with the changes generally driven by the learning suggestions provided by the BIG-IP.
  final pulumi.Input<List<String>>? modifications;
  /// The unique user-given name of the policy. Policy names cannot contain spaces or special characters. Allowed characters are a-z, A-Z, 0-9, dot, dash (-), colon (:) and underscore (_).
  final pulumi.Input<String>? name;
  /// This section defines the Link for open api files on the policy.
  final pulumi.Input<List<String>>? openApiFiles;
  /// This section defines parameters that the security policy permits in requests.
  final pulumi.Input<List<String>>? parameters;
  /// Specifies the partition of the policy. Default is `Common`
  final pulumi.Input<String>? partition;
  /// `policy_builder` block will provide `learning_mode` options to be used for policy builder.
  /// See policy builder below for more details.
  final pulumi.Input<List<WafPolicyPolicyBuilder>>? policyBuilders;
  /// Exported WAF policy deployed on BIGIP.
  final pulumi.Input<String>? policyExportJson;
  /// The id of the A.WAF Policy as it would be calculated on the BIG-IP.
  final pulumi.Input<String>? policyId;
  /// The payload of the WAF Policy to be used for IMPORT on to BIG-IP.
  final pulumi.Input<String>? policyImportJson;
  /// When creating a security policy, you can determine whether a security policy differentiates between HTTP and HTTPS URLs. If enabled, the security policy differentiates between HTTP and HTTPS URLs. If disabled, the security policy configures URLs without specifying a specific protocol. This is useful for applications that behave the same for HTTP and HTTPS, and it keeps the security policy from including the same URL twice.
  final pulumi.Input<bool>? protocolIndependent;
  /// The server technology is a server-side application, framework, web server or operating system type that is configured in the policy in order to adapt the policy to the checks needed for the respective technology.
  final pulumi.Input<List<String>>? serverTechnologies;
  /// Defines behavior when signatures found within a signature-set are detected in a request. Settings are culmulative, so if a signature is found in any set with block enabled, that signature will have block enabled.
  final pulumi.Input<List<String>>? signatureSets;
  /// This section defines the properties of a signature on the policy.
  final pulumi.Input<List<String>>? signatures;
  /// bulk signature setting
  final pulumi.Input<List<WafPolicySignaturesSetting>>? signaturesSettings;
  /// Specifies the Link of the template used for the policy creation.
  final pulumi.Input<String>? templateLink;
  /// Specifies the name of the template used for the policy creation.
  final pulumi.Input<String>? templateName;
  /// The type of policy you want to create. The default policy type is `security`.
  final pulumi.Input<String>? type;
  /// In a security policy, you can manually specify the HTTP URLs that are allowed (or disallowed) in traffic to the web application being protected. If you are using automatic policy building (and the policy includes learning URLs), the system can determine which URLs to add, based on legitimate traffic.
  final pulumi.Input<List<String>>? urls;

  /// Creates a new [WafPolicyState].
  /// [applicationLanguage] The character encoding for the web application. The character encoding determines how the policy processes the character sets. The default is `utf-8`
  /// [caseInsensitive] Specifies whether the security policy treats microservice URLs, file types, URLs, and parameters as case sensitive or not. When this setting is enabled, the system stores these security policy elements in lowercase in the security policy configuration
  /// [description] Specifies the description of the policy.
  /// [enablePassivemode] Passive Mode allows the policy to be associated with a Performance L4 Virtual Server (using a FastL4 profile). With FastL4, traffic is analyzed but is not modified in any way.
  /// [enforcementMode] How the system processes a request that triggers a security policy violation
  /// [fileTypes] `file_types` takes list of file-types options to be used for policy builder.
  /// [graphqlProfiles] `graphql_profiles` takes list of graphql profile options to be used for policy builder.
  /// [hostNames] specify the list of host name that is used to access the application
  /// [ipExceptions] `ip_exceptions` takes list of IP address exception,An IP address exception is an IP address that you want the system to treat in a specific way for a security policy.For example, you can specify IP addresses from which the system should always trust traffic.
  /// [modifications] the modifications section includes actions that modify the declarative policy as it is defined in the adjustments section. The modifications section is updated manually, with the changes generally driven by the learning suggestions provided by the BIG-IP.
  /// [name] The unique user-given name of the policy. Policy names cannot contain spaces or special characters. Allowed characters are a-z, A-Z, 0-9, dot, dash (-), colon (:) and underscore (_).
  /// [openApiFiles] This section defines the Link for open api files on the policy.
  /// [parameters] This section defines parameters that the security policy permits in requests.
  /// [partition] Specifies the partition of the policy. Default is `Common`
  /// [policyBuilders] `policy_builder` block will provide `learning_mode` options to be used for policy builder.
  /// [policyExportJson] Exported WAF policy deployed on BIGIP.
  /// [policyId] The id of the A.WAF Policy as it would be calculated on the BIG-IP.
  /// [policyImportJson] The payload of the WAF Policy to be used for IMPORT on to BIG-IP.
  /// [protocolIndependent] When creating a security policy, you can determine whether a security policy differentiates between HTTP and HTTPS URLs. If enabled, the security policy differentiates between HTTP and HTTPS URLs. If disabled, the security policy configures URLs without specifying a specific protocol. This is useful for applications that behave the same for HTTP and HTTPS, and it keeps the security policy from including the same URL twice.
  /// [serverTechnologies] The server technology is a server-side application, framework, web server or operating system type that is configured in the policy in order to adapt the policy to the checks needed for the respective technology.
  /// [signatureSets] Defines behavior when signatures found within a signature-set are detected in a request. Settings are culmulative, so if a signature is found in any set with block enabled, that signature will have block enabled.
  /// [signatures] This section defines the properties of a signature on the policy.
  /// [signaturesSettings] bulk signature setting
  /// [templateLink] Specifies the Link of the template used for the policy creation.
  /// [templateName] Specifies the name of the template used for the policy creation.
  /// [type] The type of policy you want to create. The default policy type is `security`.
  /// [urls] In a security policy, you can manually specify the HTTP URLs that are allowed (or disallowed) in traffic to the web application being protected. If you are using automatic policy building (and the policy includes learning URLs), the system can determine which URLs to add, based on legitimate traffic.
  WafPolicyState({
    this.applicationLanguage,
    this.caseInsensitive,
    this.description,
    this.enablePassivemode,
    this.enforcementMode,
    this.fileTypes,
    this.graphqlProfiles,
    this.hostNames,
    this.ipExceptions,
    this.modifications,
    this.name,
    this.openApiFiles,
    this.parameters,
    this.partition,
    this.policyBuilders,
    this.policyExportJson,
    this.policyId,
    this.policyImportJson,
    this.protocolIndependent,
    this.serverTechnologies,
    this.signatureSets,
    this.signatures,
    this.signaturesSettings,
    this.templateLink,
    this.templateName,
    this.type,
    this.urls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationLanguage': ?applicationLanguage,
      'caseInsensitive': ?caseInsensitive,
      'description': ?description,
      'enablePassivemode': ?enablePassivemode,
      'enforcementMode': ?enforcementMode,
      'fileTypes': ?pulumi.Input.mapOptionalInputValue<List<WafPolicyFileType>, List<Map<String, dynamic>>>(fileTypes, (value) => pulumi.Input.encodeList<WafPolicyFileType, Map<String, dynamic>>(value, (value) => value.toMap())),
      'graphqlProfiles': ?pulumi.Input.mapOptionalInputValue<List<WafPolicyGraphqlProfile>, List<Map<String, dynamic>>>(graphqlProfiles, (value) => pulumi.Input.encodeList<WafPolicyGraphqlProfile, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hostNames': ?pulumi.Input.mapOptionalInputValue<List<WafPolicyHostName>, List<Map<String, dynamic>>>(hostNames, (value) => pulumi.Input.encodeList<WafPolicyHostName, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipExceptions': ?pulumi.Input.mapOptionalInputValue<List<WafPolicyIpException>, List<Map<String, dynamic>>>(ipExceptions, (value) => pulumi.Input.encodeList<WafPolicyIpException, Map<String, dynamic>>(value, (value) => value.toMap())),
      'modifications': ?modifications,
      'name': ?name,
      'openApiFiles': ?openApiFiles,
      'parameters': ?parameters,
      'partition': ?partition,
      'policyBuilders': ?pulumi.Input.mapOptionalInputValue<List<WafPolicyPolicyBuilder>, List<Map<String, dynamic>>>(policyBuilders, (value) => pulumi.Input.encodeList<WafPolicyPolicyBuilder, Map<String, dynamic>>(value, (value) => value.toMap())),
      'policyExportJson': ?policyExportJson,
      'policyId': ?policyId,
      'policyImportJson': ?policyImportJson,
      'protocolIndependent': ?protocolIndependent,
      'serverTechnologies': ?serverTechnologies,
      'signatureSets': ?signatureSets,
      'signatures': ?signatures,
      'signaturesSettings': ?pulumi.Input.mapOptionalInputValue<List<WafPolicySignaturesSetting>, List<Map<String, dynamic>>>(signaturesSettings, (value) => pulumi.Input.encodeList<WafPolicySignaturesSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'templateLink': ?templateLink,
      'templateName': ?templateName,
      'type': ?type,
      'urls': ?urls,
    };
  }

  factory WafPolicyState.fromMap(Map<String, dynamic> map) {
    return WafPolicyState(
      applicationLanguage: (() { final guardedValue = map['applicationLanguage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      caseInsensitive: (() { final guardedValue = map['caseInsensitive']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enablePassivemode: (() { final guardedValue = map['enablePassivemode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enforcementMode: (() { final guardedValue = map['enforcementMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fileTypes: (() { final guardedValue = map['fileTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WafPolicyFileType>(guardedValue, (value) => WafPolicyFileType.fromMap((value as Map).cast<String, dynamic>()))); })(),
      graphqlProfiles: (() { final guardedValue = map['graphqlProfiles']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WafPolicyGraphqlProfile>(guardedValue, (value) => WafPolicyGraphqlProfile.fromMap((value as Map).cast<String, dynamic>()))); })(),
      hostNames: (() { final guardedValue = map['hostNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WafPolicyHostName>(guardedValue, (value) => WafPolicyHostName.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ipExceptions: (() { final guardedValue = map['ipExceptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WafPolicyIpException>(guardedValue, (value) => WafPolicyIpException.fromMap((value as Map).cast<String, dynamic>()))); })(),
      modifications: (() { final guardedValue = map['modifications']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      openApiFiles: (() { final guardedValue = map['openApiFiles']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      partition: (() { final guardedValue = map['partition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyBuilders: (() { final guardedValue = map['policyBuilders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WafPolicyPolicyBuilder>(guardedValue, (value) => WafPolicyPolicyBuilder.fromMap((value as Map).cast<String, dynamic>()))); })(),
      policyExportJson: (() { final guardedValue = map['policyExportJson']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyId: (() { final guardedValue = map['policyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyImportJson: (() { final guardedValue = map['policyImportJson']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocolIndependent: (() { final guardedValue = map['protocolIndependent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      serverTechnologies: (() { final guardedValue = map['serverTechnologies']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      signatureSets: (() { final guardedValue = map['signatureSets']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      signatures: (() { final guardedValue = map['signatures']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      signaturesSettings: (() { final guardedValue = map['signaturesSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WafPolicySignaturesSetting>(guardedValue, (value) => WafPolicySignaturesSetting.fromMap((value as Map).cast<String, dynamic>()))); })(),
      templateLink: (() { final guardedValue = map['templateLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      templateName: (() { final guardedValue = map['templateName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      urls: (() { final guardedValue = map['urls']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

