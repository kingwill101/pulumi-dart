// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_access_application_policy_exclude_auth_context.dart';
import 'get_zero_trust_access_application_policy_exclude_auth_method.dart';
import 'get_zero_trust_access_application_policy_exclude_azure_ad.dart';
import 'get_zero_trust_access_application_policy_exclude_common_name.dart';
import 'get_zero_trust_access_application_policy_exclude_device_posture.dart';
import 'get_zero_trust_access_application_policy_exclude_email.dart';
import 'get_zero_trust_access_application_policy_exclude_email_domain.dart';
import 'get_zero_trust_access_application_policy_exclude_email_list.dart';
import 'get_zero_trust_access_application_policy_exclude_external_evaluation.dart';
import 'get_zero_trust_access_application_policy_exclude_geo.dart';
import 'get_zero_trust_access_application_policy_exclude_github_organization.dart';
import 'get_zero_trust_access_application_policy_exclude_group.dart';
import 'get_zero_trust_access_application_policy_exclude_gsuite.dart';
import 'get_zero_trust_access_application_policy_exclude_ip.dart';
import 'get_zero_trust_access_application_policy_exclude_ip_list.dart';
import 'get_zero_trust_access_application_policy_exclude_linked_app_token.dart';
import 'get_zero_trust_access_application_policy_exclude_login_method.dart';
import 'get_zero_trust_access_application_policy_exclude_oidc.dart';
import 'get_zero_trust_access_application_policy_exclude_okta.dart';
import 'get_zero_trust_access_application_policy_exclude_saml.dart';
import 'get_zero_trust_access_application_policy_exclude_service_token.dart';

class GetZeroTrustAccessApplicationPolicyExclude {
  /// An empty object which matches on all service tokens.
  final pulumi.Input<Map<String, dynamic>> anyValidServiceToken;
  final pulumi.Input<GetZeroTrustAccessApplicationPolicyExcludeAuthContext> authContext;
  final pulumi.Input<GetZeroTrustAccessApplicationPolicyExcludeAuthMethod> authMethod;
  final pulumi.Input<GetZeroTrustAccessApplicationPolicyExcludeAzureAd> azureAd;
  final pulumi.Input<Map<String, dynamic>> certificate;
  final pulumi.Input<GetZeroTrustAccessApplicationPolicyExcludeCommonName> commonName;
  final pulumi.Input<GetZeroTrustAccessApplicationPolicyExcludeDevicePosture> devicePosture;
  final pulumi.Input<GetZeroTrustAccessApplicationPolicyExcludeEmail> email;
  final pulumi.Input<GetZeroTrustAccessApplicationPolicyExcludeEmailDomain> emailDomain;
  final pulumi.Input<GetZeroTrustAccessApplicationPolicyExcludeEmailList> emailList;
  /// An empty object which matches on all users.
  final pulumi.Input<Map<String, dynamic>> everyone;
  final pulumi.Input<GetZeroTrustAccessApplicationPolicyExcludeExternalEvaluation> externalEvaluation;
  final pulumi.Input<GetZeroTrustAccessApplicationPolicyExcludeGeo> geo;
  final pulumi.Input<GetZeroTrustAccessApplicationPolicyExcludeGithubOrganization> githubOrganization;
  final pulumi.Input<GetZeroTrustAccessApplicationPolicyExcludeGroup> group;
  final pulumi.Input<GetZeroTrustAccessApplicationPolicyExcludeGsuite> gsuite;
  final pulumi.Input<GetZeroTrustAccessApplicationPolicyExcludeIp> ip;
  final pulumi.Input<GetZeroTrustAccessApplicationPolicyExcludeIpList> ipList;
  final pulumi.Input<GetZeroTrustAccessApplicationPolicyExcludeLinkedAppToken> linkedAppToken;
  final pulumi.Input<GetZeroTrustAccessApplicationPolicyExcludeLoginMethod> loginMethod;
  final pulumi.Input<GetZeroTrustAccessApplicationPolicyExcludeOidc> oidc;
  final pulumi.Input<GetZeroTrustAccessApplicationPolicyExcludeOkta> okta;
  final pulumi.Input<GetZeroTrustAccessApplicationPolicyExcludeSaml> saml;
  final pulumi.Input<GetZeroTrustAccessApplicationPolicyExcludeServiceToken> serviceToken;

  /// Creates a new [GetZeroTrustAccessApplicationPolicyExclude].
  /// [anyValidServiceToken] An empty object which matches on all service tokens.
  /// [authContext] Required.
  /// [authMethod] Required.
  /// [azureAd] Required.
  /// [certificate] Required.
  /// [commonName] Required.
  /// [devicePosture] Required.
  /// [email] Required.
  /// [emailDomain] Required.
  /// [emailList] Required.
  /// [everyone] An empty object which matches on all users.
  /// [externalEvaluation] Required.
  /// [geo] Required.
  /// [githubOrganization] Required.
  /// [group] Required.
  /// [gsuite] Required.
  /// [ip] Required.
  /// [ipList] Required.
  /// [linkedAppToken] Required.
  /// [loginMethod] Required.
  /// [oidc] Required.
  /// [okta] Required.
  /// [saml] Required.
  /// [serviceToken] Required.
  const GetZeroTrustAccessApplicationPolicyExclude({
    required this.anyValidServiceToken,
    required this.authContext,
    required this.authMethod,
    required this.azureAd,
    required this.certificate,
    required this.commonName,
    required this.devicePosture,
    required this.email,
    required this.emailDomain,
    required this.emailList,
    required this.everyone,
    required this.externalEvaluation,
    required this.geo,
    required this.githubOrganization,
    required this.group,
    required this.gsuite,
    required this.ip,
    required this.ipList,
    required this.linkedAppToken,
    required this.loginMethod,
    required this.oidc,
    required this.okta,
    required this.saml,
    required this.serviceToken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'anyValidServiceToken': anyValidServiceToken,
      'authContext': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationPolicyExcludeAuthContext, Map<String, dynamic>>(authContext, (value) => value.toMap()),
      'authMethod': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationPolicyExcludeAuthMethod, Map<String, dynamic>>(authMethod, (value) => value.toMap()),
      'azureAd': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationPolicyExcludeAzureAd, Map<String, dynamic>>(azureAd, (value) => value.toMap()),
      'certificate': certificate,
      'commonName': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationPolicyExcludeCommonName, Map<String, dynamic>>(commonName, (value) => value.toMap()),
      'devicePosture': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationPolicyExcludeDevicePosture, Map<String, dynamic>>(devicePosture, (value) => value.toMap()),
      'email': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationPolicyExcludeEmail, Map<String, dynamic>>(email, (value) => value.toMap()),
      'emailDomain': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationPolicyExcludeEmailDomain, Map<String, dynamic>>(emailDomain, (value) => value.toMap()),
      'emailList': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationPolicyExcludeEmailList, Map<String, dynamic>>(emailList, (value) => value.toMap()),
      'everyone': everyone,
      'externalEvaluation': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationPolicyExcludeExternalEvaluation, Map<String, dynamic>>(externalEvaluation, (value) => value.toMap()),
      'geo': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationPolicyExcludeGeo, Map<String, dynamic>>(geo, (value) => value.toMap()),
      'githubOrganization': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationPolicyExcludeGithubOrganization, Map<String, dynamic>>(githubOrganization, (value) => value.toMap()),
      'group': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationPolicyExcludeGroup, Map<String, dynamic>>(group, (value) => value.toMap()),
      'gsuite': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationPolicyExcludeGsuite, Map<String, dynamic>>(gsuite, (value) => value.toMap()),
      'ip': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationPolicyExcludeIp, Map<String, dynamic>>(ip, (value) => value.toMap()),
      'ipList': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationPolicyExcludeIpList, Map<String, dynamic>>(ipList, (value) => value.toMap()),
      'linkedAppToken': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationPolicyExcludeLinkedAppToken, Map<String, dynamic>>(linkedAppToken, (value) => value.toMap()),
      'loginMethod': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationPolicyExcludeLoginMethod, Map<String, dynamic>>(loginMethod, (value) => value.toMap()),
      'oidc': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationPolicyExcludeOidc, Map<String, dynamic>>(oidc, (value) => value.toMap()),
      'okta': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationPolicyExcludeOkta, Map<String, dynamic>>(okta, (value) => value.toMap()),
      'saml': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationPolicyExcludeSaml, Map<String, dynamic>>(saml, (value) => value.toMap()),
      'serviceToken': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationPolicyExcludeServiceToken, Map<String, dynamic>>(serviceToken, (value) => value.toMap()),
    };
  }

  factory GetZeroTrustAccessApplicationPolicyExclude.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessApplicationPolicyExclude(
      anyValidServiceToken: pulumi.Input.fromValue((map['anyValidServiceToken']! as Map).cast<String, dynamic>()),
      authContext: pulumi.Input.fromValue(GetZeroTrustAccessApplicationPolicyExcludeAuthContext.fromMap((map['authContext']! as Map).cast<String, dynamic>())),
      authMethod: pulumi.Input.fromValue(GetZeroTrustAccessApplicationPolicyExcludeAuthMethod.fromMap((map['authMethod']! as Map).cast<String, dynamic>())),
      azureAd: pulumi.Input.fromValue(GetZeroTrustAccessApplicationPolicyExcludeAzureAd.fromMap((map['azureAd']! as Map).cast<String, dynamic>())),
      certificate: pulumi.Input.fromValue((map['certificate']! as Map).cast<String, dynamic>()),
      commonName: pulumi.Input.fromValue(GetZeroTrustAccessApplicationPolicyExcludeCommonName.fromMap((map['commonName']! as Map).cast<String, dynamic>())),
      devicePosture: pulumi.Input.fromValue(GetZeroTrustAccessApplicationPolicyExcludeDevicePosture.fromMap((map['devicePosture']! as Map).cast<String, dynamic>())),
      email: pulumi.Input.fromValue(GetZeroTrustAccessApplicationPolicyExcludeEmail.fromMap((map['email']! as Map).cast<String, dynamic>())),
      emailDomain: pulumi.Input.fromValue(GetZeroTrustAccessApplicationPolicyExcludeEmailDomain.fromMap((map['emailDomain']! as Map).cast<String, dynamic>())),
      emailList: pulumi.Input.fromValue(GetZeroTrustAccessApplicationPolicyExcludeEmailList.fromMap((map['emailList']! as Map).cast<String, dynamic>())),
      everyone: pulumi.Input.fromValue((map['everyone']! as Map).cast<String, dynamic>()),
      externalEvaluation: pulumi.Input.fromValue(GetZeroTrustAccessApplicationPolicyExcludeExternalEvaluation.fromMap((map['externalEvaluation']! as Map).cast<String, dynamic>())),
      geo: pulumi.Input.fromValue(GetZeroTrustAccessApplicationPolicyExcludeGeo.fromMap((map['geo']! as Map).cast<String, dynamic>())),
      githubOrganization: pulumi.Input.fromValue(GetZeroTrustAccessApplicationPolicyExcludeGithubOrganization.fromMap((map['githubOrganization']! as Map).cast<String, dynamic>())),
      group: pulumi.Input.fromValue(GetZeroTrustAccessApplicationPolicyExcludeGroup.fromMap((map['group']! as Map).cast<String, dynamic>())),
      gsuite: pulumi.Input.fromValue(GetZeroTrustAccessApplicationPolicyExcludeGsuite.fromMap((map['gsuite']! as Map).cast<String, dynamic>())),
      ip: pulumi.Input.fromValue(GetZeroTrustAccessApplicationPolicyExcludeIp.fromMap((map['ip']! as Map).cast<String, dynamic>())),
      ipList: pulumi.Input.fromValue(GetZeroTrustAccessApplicationPolicyExcludeIpList.fromMap((map['ipList']! as Map).cast<String, dynamic>())),
      linkedAppToken: pulumi.Input.fromValue(GetZeroTrustAccessApplicationPolicyExcludeLinkedAppToken.fromMap((map['linkedAppToken']! as Map).cast<String, dynamic>())),
      loginMethod: pulumi.Input.fromValue(GetZeroTrustAccessApplicationPolicyExcludeLoginMethod.fromMap((map['loginMethod']! as Map).cast<String, dynamic>())),
      oidc: pulumi.Input.fromValue(GetZeroTrustAccessApplicationPolicyExcludeOidc.fromMap((map['oidc']! as Map).cast<String, dynamic>())),
      okta: pulumi.Input.fromValue(GetZeroTrustAccessApplicationPolicyExcludeOkta.fromMap((map['okta']! as Map).cast<String, dynamic>())),
      saml: pulumi.Input.fromValue(GetZeroTrustAccessApplicationPolicyExcludeSaml.fromMap((map['saml']! as Map).cast<String, dynamic>())),
      serviceToken: pulumi.Input.fromValue(GetZeroTrustAccessApplicationPolicyExcludeServiceToken.fromMap((map['serviceToken']! as Map).cast<String, dynamic>())),
    );
  }
}
