// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_access_policy_exclude_auth_context.dart';
import 'get_zero_trust_access_policy_exclude_auth_method.dart';
import 'get_zero_trust_access_policy_exclude_azure_ad.dart';
import 'get_zero_trust_access_policy_exclude_cloudflare_account_member.dart';
import 'get_zero_trust_access_policy_exclude_common_name.dart';
import 'get_zero_trust_access_policy_exclude_device_posture.dart';
import 'get_zero_trust_access_policy_exclude_email.dart';
import 'get_zero_trust_access_policy_exclude_email_domain.dart';
import 'get_zero_trust_access_policy_exclude_email_list.dart';
import 'get_zero_trust_access_policy_exclude_external_evaluation.dart';
import 'get_zero_trust_access_policy_exclude_geo.dart';
import 'get_zero_trust_access_policy_exclude_github_organization.dart';
import 'get_zero_trust_access_policy_exclude_group.dart';
import 'get_zero_trust_access_policy_exclude_gsuite.dart';
import 'get_zero_trust_access_policy_exclude_ip.dart';
import 'get_zero_trust_access_policy_exclude_ip_list.dart';
import 'get_zero_trust_access_policy_exclude_linked_app_token.dart';
import 'get_zero_trust_access_policy_exclude_login_method.dart';
import 'get_zero_trust_access_policy_exclude_oidc.dart';
import 'get_zero_trust_access_policy_exclude_okta.dart';
import 'get_zero_trust_access_policy_exclude_saml.dart';
import 'get_zero_trust_access_policy_exclude_service_token.dart';
import 'get_zero_trust_access_policy_exclude_user_risk_score.dart';

class GetZeroTrustAccessPolicyExclude {
  /// An empty object which matches on all service tokens.
  final pulumi.Input<Map<String, dynamic>> anyValidServiceToken;
  final pulumi.Input<GetZeroTrustAccessPolicyExcludeAuthContext> authContext;
  final pulumi.Input<GetZeroTrustAccessPolicyExcludeAuthMethod> authMethod;
  final pulumi.Input<GetZeroTrustAccessPolicyExcludeAzureAd> azureAd;
  final pulumi.Input<Map<String, dynamic>> certificate;
  final pulumi.Input<GetZeroTrustAccessPolicyExcludeCloudflareAccountMember> cloudflareAccountMember;
  final pulumi.Input<GetZeroTrustAccessPolicyExcludeCommonName> commonName;
  final pulumi.Input<GetZeroTrustAccessPolicyExcludeDevicePosture> devicePosture;
  final pulumi.Input<GetZeroTrustAccessPolicyExcludeEmail> email;
  final pulumi.Input<GetZeroTrustAccessPolicyExcludeEmailDomain> emailDomain;
  final pulumi.Input<GetZeroTrustAccessPolicyExcludeEmailList> emailList;
  /// An empty object which matches on all users.
  final pulumi.Input<Map<String, dynamic>> everyone;
  final pulumi.Input<GetZeroTrustAccessPolicyExcludeExternalEvaluation> externalEvaluation;
  final pulumi.Input<GetZeroTrustAccessPolicyExcludeGeo> geo;
  final pulumi.Input<GetZeroTrustAccessPolicyExcludeGithubOrganization> githubOrganization;
  final pulumi.Input<GetZeroTrustAccessPolicyExcludeGroup> group;
  final pulumi.Input<GetZeroTrustAccessPolicyExcludeGsuite> gsuite;
  final pulumi.Input<GetZeroTrustAccessPolicyExcludeIp> ip;
  final pulumi.Input<GetZeroTrustAccessPolicyExcludeIpList> ipList;
  final pulumi.Input<GetZeroTrustAccessPolicyExcludeLinkedAppToken> linkedAppToken;
  final pulumi.Input<GetZeroTrustAccessPolicyExcludeLoginMethod> loginMethod;
  final pulumi.Input<GetZeroTrustAccessPolicyExcludeOidc> oidc;
  final pulumi.Input<GetZeroTrustAccessPolicyExcludeOkta> okta;
  final pulumi.Input<GetZeroTrustAccessPolicyExcludeSaml> saml;
  final pulumi.Input<GetZeroTrustAccessPolicyExcludeServiceToken> serviceToken;
  final pulumi.Input<GetZeroTrustAccessPolicyExcludeUserRiskScore> userRiskScore;

  /// Creates a new [GetZeroTrustAccessPolicyExclude].
  /// [anyValidServiceToken] An empty object which matches on all service tokens.
  /// [authContext] Required.
  /// [authMethod] Required.
  /// [azureAd] Required.
  /// [certificate] Required.
  /// [cloudflareAccountMember] Required.
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
  /// [userRiskScore] Required.
  const GetZeroTrustAccessPolicyExclude({
    required this.anyValidServiceToken,
    required this.authContext,
    required this.authMethod,
    required this.azureAd,
    required this.certificate,
    required this.cloudflareAccountMember,
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
    required this.userRiskScore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'anyValidServiceToken': anyValidServiceToken,
      'authContext': pulumi.Input.mapInputValue<GetZeroTrustAccessPolicyExcludeAuthContext, Map<String, dynamic>>(authContext, (value) => value.toMap()),
      'authMethod': pulumi.Input.mapInputValue<GetZeroTrustAccessPolicyExcludeAuthMethod, Map<String, dynamic>>(authMethod, (value) => value.toMap()),
      'azureAd': pulumi.Input.mapInputValue<GetZeroTrustAccessPolicyExcludeAzureAd, Map<String, dynamic>>(azureAd, (value) => value.toMap()),
      'certificate': certificate,
      'cloudflareAccountMember': pulumi.Input.mapInputValue<GetZeroTrustAccessPolicyExcludeCloudflareAccountMember, Map<String, dynamic>>(cloudflareAccountMember, (value) => value.toMap()),
      'commonName': pulumi.Input.mapInputValue<GetZeroTrustAccessPolicyExcludeCommonName, Map<String, dynamic>>(commonName, (value) => value.toMap()),
      'devicePosture': pulumi.Input.mapInputValue<GetZeroTrustAccessPolicyExcludeDevicePosture, Map<String, dynamic>>(devicePosture, (value) => value.toMap()),
      'email': pulumi.Input.mapInputValue<GetZeroTrustAccessPolicyExcludeEmail, Map<String, dynamic>>(email, (value) => value.toMap()),
      'emailDomain': pulumi.Input.mapInputValue<GetZeroTrustAccessPolicyExcludeEmailDomain, Map<String, dynamic>>(emailDomain, (value) => value.toMap()),
      'emailList': pulumi.Input.mapInputValue<GetZeroTrustAccessPolicyExcludeEmailList, Map<String, dynamic>>(emailList, (value) => value.toMap()),
      'everyone': everyone,
      'externalEvaluation': pulumi.Input.mapInputValue<GetZeroTrustAccessPolicyExcludeExternalEvaluation, Map<String, dynamic>>(externalEvaluation, (value) => value.toMap()),
      'geo': pulumi.Input.mapInputValue<GetZeroTrustAccessPolicyExcludeGeo, Map<String, dynamic>>(geo, (value) => value.toMap()),
      'githubOrganization': pulumi.Input.mapInputValue<GetZeroTrustAccessPolicyExcludeGithubOrganization, Map<String, dynamic>>(githubOrganization, (value) => value.toMap()),
      'group': pulumi.Input.mapInputValue<GetZeroTrustAccessPolicyExcludeGroup, Map<String, dynamic>>(group, (value) => value.toMap()),
      'gsuite': pulumi.Input.mapInputValue<GetZeroTrustAccessPolicyExcludeGsuite, Map<String, dynamic>>(gsuite, (value) => value.toMap()),
      'ip': pulumi.Input.mapInputValue<GetZeroTrustAccessPolicyExcludeIp, Map<String, dynamic>>(ip, (value) => value.toMap()),
      'ipList': pulumi.Input.mapInputValue<GetZeroTrustAccessPolicyExcludeIpList, Map<String, dynamic>>(ipList, (value) => value.toMap()),
      'linkedAppToken': pulumi.Input.mapInputValue<GetZeroTrustAccessPolicyExcludeLinkedAppToken, Map<String, dynamic>>(linkedAppToken, (value) => value.toMap()),
      'loginMethod': pulumi.Input.mapInputValue<GetZeroTrustAccessPolicyExcludeLoginMethod, Map<String, dynamic>>(loginMethod, (value) => value.toMap()),
      'oidc': pulumi.Input.mapInputValue<GetZeroTrustAccessPolicyExcludeOidc, Map<String, dynamic>>(oidc, (value) => value.toMap()),
      'okta': pulumi.Input.mapInputValue<GetZeroTrustAccessPolicyExcludeOkta, Map<String, dynamic>>(okta, (value) => value.toMap()),
      'saml': pulumi.Input.mapInputValue<GetZeroTrustAccessPolicyExcludeSaml, Map<String, dynamic>>(saml, (value) => value.toMap()),
      'serviceToken': pulumi.Input.mapInputValue<GetZeroTrustAccessPolicyExcludeServiceToken, Map<String, dynamic>>(serviceToken, (value) => value.toMap()),
      'userRiskScore': pulumi.Input.mapInputValue<GetZeroTrustAccessPolicyExcludeUserRiskScore, Map<String, dynamic>>(userRiskScore, (value) => value.toMap()),
    };
  }

  factory GetZeroTrustAccessPolicyExclude.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessPolicyExclude(
      anyValidServiceToken: pulumi.Input.fromValue((map['anyValidServiceToken']! as Map).cast<String, dynamic>()),
      authContext: pulumi.Input.fromValue(GetZeroTrustAccessPolicyExcludeAuthContext.fromMap((map['authContext']! as Map).cast<String, dynamic>())),
      authMethod: pulumi.Input.fromValue(GetZeroTrustAccessPolicyExcludeAuthMethod.fromMap((map['authMethod']! as Map).cast<String, dynamic>())),
      azureAd: pulumi.Input.fromValue(GetZeroTrustAccessPolicyExcludeAzureAd.fromMap((map['azureAd']! as Map).cast<String, dynamic>())),
      certificate: pulumi.Input.fromValue((map['certificate']! as Map).cast<String, dynamic>()),
      cloudflareAccountMember: pulumi.Input.fromValue(GetZeroTrustAccessPolicyExcludeCloudflareAccountMember.fromMap((map['cloudflareAccountMember']! as Map).cast<String, dynamic>())),
      commonName: pulumi.Input.fromValue(GetZeroTrustAccessPolicyExcludeCommonName.fromMap((map['commonName']! as Map).cast<String, dynamic>())),
      devicePosture: pulumi.Input.fromValue(GetZeroTrustAccessPolicyExcludeDevicePosture.fromMap((map['devicePosture']! as Map).cast<String, dynamic>())),
      email: pulumi.Input.fromValue(GetZeroTrustAccessPolicyExcludeEmail.fromMap((map['email']! as Map).cast<String, dynamic>())),
      emailDomain: pulumi.Input.fromValue(GetZeroTrustAccessPolicyExcludeEmailDomain.fromMap((map['emailDomain']! as Map).cast<String, dynamic>())),
      emailList: pulumi.Input.fromValue(GetZeroTrustAccessPolicyExcludeEmailList.fromMap((map['emailList']! as Map).cast<String, dynamic>())),
      everyone: pulumi.Input.fromValue((map['everyone']! as Map).cast<String, dynamic>()),
      externalEvaluation: pulumi.Input.fromValue(GetZeroTrustAccessPolicyExcludeExternalEvaluation.fromMap((map['externalEvaluation']! as Map).cast<String, dynamic>())),
      geo: pulumi.Input.fromValue(GetZeroTrustAccessPolicyExcludeGeo.fromMap((map['geo']! as Map).cast<String, dynamic>())),
      githubOrganization: pulumi.Input.fromValue(GetZeroTrustAccessPolicyExcludeGithubOrganization.fromMap((map['githubOrganization']! as Map).cast<String, dynamic>())),
      group: pulumi.Input.fromValue(GetZeroTrustAccessPolicyExcludeGroup.fromMap((map['group']! as Map).cast<String, dynamic>())),
      gsuite: pulumi.Input.fromValue(GetZeroTrustAccessPolicyExcludeGsuite.fromMap((map['gsuite']! as Map).cast<String, dynamic>())),
      ip: pulumi.Input.fromValue(GetZeroTrustAccessPolicyExcludeIp.fromMap((map['ip']! as Map).cast<String, dynamic>())),
      ipList: pulumi.Input.fromValue(GetZeroTrustAccessPolicyExcludeIpList.fromMap((map['ipList']! as Map).cast<String, dynamic>())),
      linkedAppToken: pulumi.Input.fromValue(GetZeroTrustAccessPolicyExcludeLinkedAppToken.fromMap((map['linkedAppToken']! as Map).cast<String, dynamic>())),
      loginMethod: pulumi.Input.fromValue(GetZeroTrustAccessPolicyExcludeLoginMethod.fromMap((map['loginMethod']! as Map).cast<String, dynamic>())),
      oidc: pulumi.Input.fromValue(GetZeroTrustAccessPolicyExcludeOidc.fromMap((map['oidc']! as Map).cast<String, dynamic>())),
      okta: pulumi.Input.fromValue(GetZeroTrustAccessPolicyExcludeOkta.fromMap((map['okta']! as Map).cast<String, dynamic>())),
      saml: pulumi.Input.fromValue(GetZeroTrustAccessPolicyExcludeSaml.fromMap((map['saml']! as Map).cast<String, dynamic>())),
      serviceToken: pulumi.Input.fromValue(GetZeroTrustAccessPolicyExcludeServiceToken.fromMap((map['serviceToken']! as Map).cast<String, dynamic>())),
      userRiskScore: pulumi.Input.fromValue(GetZeroTrustAccessPolicyExcludeUserRiskScore.fromMap((map['userRiskScore']! as Map).cast<String, dynamic>())),
    );
  }
}
