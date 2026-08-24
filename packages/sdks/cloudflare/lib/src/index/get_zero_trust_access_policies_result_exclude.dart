// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_access_policies_result_exclude_auth_context.dart';
import 'get_zero_trust_access_policies_result_exclude_auth_method.dart';
import 'get_zero_trust_access_policies_result_exclude_azure_ad.dart';
import 'get_zero_trust_access_policies_result_exclude_cloudflare_account_member.dart';
import 'get_zero_trust_access_policies_result_exclude_common_name.dart';
import 'get_zero_trust_access_policies_result_exclude_device_posture.dart';
import 'get_zero_trust_access_policies_result_exclude_email.dart';
import 'get_zero_trust_access_policies_result_exclude_email_domain.dart';
import 'get_zero_trust_access_policies_result_exclude_email_list.dart';
import 'get_zero_trust_access_policies_result_exclude_external_evaluation.dart';
import 'get_zero_trust_access_policies_result_exclude_geo.dart';
import 'get_zero_trust_access_policies_result_exclude_github_organization.dart';
import 'get_zero_trust_access_policies_result_exclude_group.dart';
import 'get_zero_trust_access_policies_result_exclude_gsuite.dart';
import 'get_zero_trust_access_policies_result_exclude_ip.dart';
import 'get_zero_trust_access_policies_result_exclude_ip_list.dart';
import 'get_zero_trust_access_policies_result_exclude_linked_app_token.dart';
import 'get_zero_trust_access_policies_result_exclude_login_method.dart';
import 'get_zero_trust_access_policies_result_exclude_oidc.dart';
import 'get_zero_trust_access_policies_result_exclude_okta.dart';
import 'get_zero_trust_access_policies_result_exclude_saml.dart';
import 'get_zero_trust_access_policies_result_exclude_service_token.dart';
import 'get_zero_trust_access_policies_result_exclude_user_risk_score.dart';

class GetZeroTrustAccessPoliciesResultExclude {
  /// An empty object which matches on all service tokens.
  final pulumi.Input<Map<String, dynamic>> anyValidServiceToken;
  final pulumi.Input<GetZeroTrustAccessPoliciesResultExcludeAuthContext> authContext;
  final pulumi.Input<GetZeroTrustAccessPoliciesResultExcludeAuthMethod> authMethod;
  final pulumi.Input<GetZeroTrustAccessPoliciesResultExcludeAzureAd> azureAd;
  final pulumi.Input<Map<String, dynamic>> certificate;
  final pulumi.Input<GetZeroTrustAccessPoliciesResultExcludeCloudflareAccountMember> cloudflareAccountMember;
  final pulumi.Input<GetZeroTrustAccessPoliciesResultExcludeCommonName> commonName;
  final pulumi.Input<GetZeroTrustAccessPoliciesResultExcludeDevicePosture> devicePosture;
  final pulumi.Input<GetZeroTrustAccessPoliciesResultExcludeEmail> email;
  final pulumi.Input<GetZeroTrustAccessPoliciesResultExcludeEmailDomain> emailDomain;
  final pulumi.Input<GetZeroTrustAccessPoliciesResultExcludeEmailList> emailList;
  /// An empty object which matches on all users.
  final pulumi.Input<Map<String, dynamic>> everyone;
  final pulumi.Input<GetZeroTrustAccessPoliciesResultExcludeExternalEvaluation> externalEvaluation;
  final pulumi.Input<GetZeroTrustAccessPoliciesResultExcludeGeo> geo;
  final pulumi.Input<GetZeroTrustAccessPoliciesResultExcludeGithubOrganization> githubOrganization;
  final pulumi.Input<GetZeroTrustAccessPoliciesResultExcludeGroup> group;
  final pulumi.Input<GetZeroTrustAccessPoliciesResultExcludeGsuite> gsuite;
  final pulumi.Input<GetZeroTrustAccessPoliciesResultExcludeIp> ip;
  final pulumi.Input<GetZeroTrustAccessPoliciesResultExcludeIpList> ipList;
  final pulumi.Input<GetZeroTrustAccessPoliciesResultExcludeLinkedAppToken> linkedAppToken;
  final pulumi.Input<GetZeroTrustAccessPoliciesResultExcludeLoginMethod> loginMethod;
  final pulumi.Input<GetZeroTrustAccessPoliciesResultExcludeOidc> oidc;
  final pulumi.Input<GetZeroTrustAccessPoliciesResultExcludeOkta> okta;
  final pulumi.Input<GetZeroTrustAccessPoliciesResultExcludeSaml> saml;
  final pulumi.Input<GetZeroTrustAccessPoliciesResultExcludeServiceToken> serviceToken;
  final pulumi.Input<GetZeroTrustAccessPoliciesResultExcludeUserRiskScore> userRiskScore;

  /// Creates a new [GetZeroTrustAccessPoliciesResultExclude].
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
  const GetZeroTrustAccessPoliciesResultExclude({
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
      'authContext': pulumi.Input.mapInputValue<GetZeroTrustAccessPoliciesResultExcludeAuthContext, Map<String, dynamic>>(authContext, (value) => value.toMap()),
      'authMethod': pulumi.Input.mapInputValue<GetZeroTrustAccessPoliciesResultExcludeAuthMethod, Map<String, dynamic>>(authMethod, (value) => value.toMap()),
      'azureAd': pulumi.Input.mapInputValue<GetZeroTrustAccessPoliciesResultExcludeAzureAd, Map<String, dynamic>>(azureAd, (value) => value.toMap()),
      'certificate': certificate,
      'cloudflareAccountMember': pulumi.Input.mapInputValue<GetZeroTrustAccessPoliciesResultExcludeCloudflareAccountMember, Map<String, dynamic>>(cloudflareAccountMember, (value) => value.toMap()),
      'commonName': pulumi.Input.mapInputValue<GetZeroTrustAccessPoliciesResultExcludeCommonName, Map<String, dynamic>>(commonName, (value) => value.toMap()),
      'devicePosture': pulumi.Input.mapInputValue<GetZeroTrustAccessPoliciesResultExcludeDevicePosture, Map<String, dynamic>>(devicePosture, (value) => value.toMap()),
      'email': pulumi.Input.mapInputValue<GetZeroTrustAccessPoliciesResultExcludeEmail, Map<String, dynamic>>(email, (value) => value.toMap()),
      'emailDomain': pulumi.Input.mapInputValue<GetZeroTrustAccessPoliciesResultExcludeEmailDomain, Map<String, dynamic>>(emailDomain, (value) => value.toMap()),
      'emailList': pulumi.Input.mapInputValue<GetZeroTrustAccessPoliciesResultExcludeEmailList, Map<String, dynamic>>(emailList, (value) => value.toMap()),
      'everyone': everyone,
      'externalEvaluation': pulumi.Input.mapInputValue<GetZeroTrustAccessPoliciesResultExcludeExternalEvaluation, Map<String, dynamic>>(externalEvaluation, (value) => value.toMap()),
      'geo': pulumi.Input.mapInputValue<GetZeroTrustAccessPoliciesResultExcludeGeo, Map<String, dynamic>>(geo, (value) => value.toMap()),
      'githubOrganization': pulumi.Input.mapInputValue<GetZeroTrustAccessPoliciesResultExcludeGithubOrganization, Map<String, dynamic>>(githubOrganization, (value) => value.toMap()),
      'group': pulumi.Input.mapInputValue<GetZeroTrustAccessPoliciesResultExcludeGroup, Map<String, dynamic>>(group, (value) => value.toMap()),
      'gsuite': pulumi.Input.mapInputValue<GetZeroTrustAccessPoliciesResultExcludeGsuite, Map<String, dynamic>>(gsuite, (value) => value.toMap()),
      'ip': pulumi.Input.mapInputValue<GetZeroTrustAccessPoliciesResultExcludeIp, Map<String, dynamic>>(ip, (value) => value.toMap()),
      'ipList': pulumi.Input.mapInputValue<GetZeroTrustAccessPoliciesResultExcludeIpList, Map<String, dynamic>>(ipList, (value) => value.toMap()),
      'linkedAppToken': pulumi.Input.mapInputValue<GetZeroTrustAccessPoliciesResultExcludeLinkedAppToken, Map<String, dynamic>>(linkedAppToken, (value) => value.toMap()),
      'loginMethod': pulumi.Input.mapInputValue<GetZeroTrustAccessPoliciesResultExcludeLoginMethod, Map<String, dynamic>>(loginMethod, (value) => value.toMap()),
      'oidc': pulumi.Input.mapInputValue<GetZeroTrustAccessPoliciesResultExcludeOidc, Map<String, dynamic>>(oidc, (value) => value.toMap()),
      'okta': pulumi.Input.mapInputValue<GetZeroTrustAccessPoliciesResultExcludeOkta, Map<String, dynamic>>(okta, (value) => value.toMap()),
      'saml': pulumi.Input.mapInputValue<GetZeroTrustAccessPoliciesResultExcludeSaml, Map<String, dynamic>>(saml, (value) => value.toMap()),
      'serviceToken': pulumi.Input.mapInputValue<GetZeroTrustAccessPoliciesResultExcludeServiceToken, Map<String, dynamic>>(serviceToken, (value) => value.toMap()),
      'userRiskScore': pulumi.Input.mapInputValue<GetZeroTrustAccessPoliciesResultExcludeUserRiskScore, Map<String, dynamic>>(userRiskScore, (value) => value.toMap()),
    };
  }

  factory GetZeroTrustAccessPoliciesResultExclude.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessPoliciesResultExclude(
      anyValidServiceToken: pulumi.Input.fromValue((map['anyValidServiceToken']! as Map).cast<String, dynamic>()),
      authContext: pulumi.Input.fromValue(GetZeroTrustAccessPoliciesResultExcludeAuthContext.fromMap((map['authContext']! as Map).cast<String, dynamic>())),
      authMethod: pulumi.Input.fromValue(GetZeroTrustAccessPoliciesResultExcludeAuthMethod.fromMap((map['authMethod']! as Map).cast<String, dynamic>())),
      azureAd: pulumi.Input.fromValue(GetZeroTrustAccessPoliciesResultExcludeAzureAd.fromMap((map['azureAd']! as Map).cast<String, dynamic>())),
      certificate: pulumi.Input.fromValue((map['certificate']! as Map).cast<String, dynamic>()),
      cloudflareAccountMember: pulumi.Input.fromValue(GetZeroTrustAccessPoliciesResultExcludeCloudflareAccountMember.fromMap((map['cloudflareAccountMember']! as Map).cast<String, dynamic>())),
      commonName: pulumi.Input.fromValue(GetZeroTrustAccessPoliciesResultExcludeCommonName.fromMap((map['commonName']! as Map).cast<String, dynamic>())),
      devicePosture: pulumi.Input.fromValue(GetZeroTrustAccessPoliciesResultExcludeDevicePosture.fromMap((map['devicePosture']! as Map).cast<String, dynamic>())),
      email: pulumi.Input.fromValue(GetZeroTrustAccessPoliciesResultExcludeEmail.fromMap((map['email']! as Map).cast<String, dynamic>())),
      emailDomain: pulumi.Input.fromValue(GetZeroTrustAccessPoliciesResultExcludeEmailDomain.fromMap((map['emailDomain']! as Map).cast<String, dynamic>())),
      emailList: pulumi.Input.fromValue(GetZeroTrustAccessPoliciesResultExcludeEmailList.fromMap((map['emailList']! as Map).cast<String, dynamic>())),
      everyone: pulumi.Input.fromValue((map['everyone']! as Map).cast<String, dynamic>()),
      externalEvaluation: pulumi.Input.fromValue(GetZeroTrustAccessPoliciesResultExcludeExternalEvaluation.fromMap((map['externalEvaluation']! as Map).cast<String, dynamic>())),
      geo: pulumi.Input.fromValue(GetZeroTrustAccessPoliciesResultExcludeGeo.fromMap((map['geo']! as Map).cast<String, dynamic>())),
      githubOrganization: pulumi.Input.fromValue(GetZeroTrustAccessPoliciesResultExcludeGithubOrganization.fromMap((map['githubOrganization']! as Map).cast<String, dynamic>())),
      group: pulumi.Input.fromValue(GetZeroTrustAccessPoliciesResultExcludeGroup.fromMap((map['group']! as Map).cast<String, dynamic>())),
      gsuite: pulumi.Input.fromValue(GetZeroTrustAccessPoliciesResultExcludeGsuite.fromMap((map['gsuite']! as Map).cast<String, dynamic>())),
      ip: pulumi.Input.fromValue(GetZeroTrustAccessPoliciesResultExcludeIp.fromMap((map['ip']! as Map).cast<String, dynamic>())),
      ipList: pulumi.Input.fromValue(GetZeroTrustAccessPoliciesResultExcludeIpList.fromMap((map['ipList']! as Map).cast<String, dynamic>())),
      linkedAppToken: pulumi.Input.fromValue(GetZeroTrustAccessPoliciesResultExcludeLinkedAppToken.fromMap((map['linkedAppToken']! as Map).cast<String, dynamic>())),
      loginMethod: pulumi.Input.fromValue(GetZeroTrustAccessPoliciesResultExcludeLoginMethod.fromMap((map['loginMethod']! as Map).cast<String, dynamic>())),
      oidc: pulumi.Input.fromValue(GetZeroTrustAccessPoliciesResultExcludeOidc.fromMap((map['oidc']! as Map).cast<String, dynamic>())),
      okta: pulumi.Input.fromValue(GetZeroTrustAccessPoliciesResultExcludeOkta.fromMap((map['okta']! as Map).cast<String, dynamic>())),
      saml: pulumi.Input.fromValue(GetZeroTrustAccessPoliciesResultExcludeSaml.fromMap((map['saml']! as Map).cast<String, dynamic>())),
      serviceToken: pulumi.Input.fromValue(GetZeroTrustAccessPoliciesResultExcludeServiceToken.fromMap((map['serviceToken']! as Map).cast<String, dynamic>())),
      userRiskScore: pulumi.Input.fromValue(GetZeroTrustAccessPoliciesResultExcludeUserRiskScore.fromMap((map['userRiskScore']! as Map).cast<String, dynamic>())),
    );
  }
}
