// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_access_policies_result_include_auth_context.dart';
import 'get_zero_trust_access_policies_result_include_auth_method.dart';
import 'get_zero_trust_access_policies_result_include_azure_ad.dart';
import 'get_zero_trust_access_policies_result_include_cloudflare_account_member.dart';
import 'get_zero_trust_access_policies_result_include_common_name.dart';
import 'get_zero_trust_access_policies_result_include_device_posture.dart';
import 'get_zero_trust_access_policies_result_include_email.dart';
import 'get_zero_trust_access_policies_result_include_email_domain.dart';
import 'get_zero_trust_access_policies_result_include_email_list.dart';
import 'get_zero_trust_access_policies_result_include_external_evaluation.dart';
import 'get_zero_trust_access_policies_result_include_geo.dart';
import 'get_zero_trust_access_policies_result_include_github_organization.dart';
import 'get_zero_trust_access_policies_result_include_group.dart';
import 'get_zero_trust_access_policies_result_include_gsuite.dart';
import 'get_zero_trust_access_policies_result_include_ip.dart';
import 'get_zero_trust_access_policies_result_include_ip_list.dart';
import 'get_zero_trust_access_policies_result_include_linked_app_token.dart';
import 'get_zero_trust_access_policies_result_include_login_method.dart';
import 'get_zero_trust_access_policies_result_include_oidc.dart';
import 'get_zero_trust_access_policies_result_include_okta.dart';
import 'get_zero_trust_access_policies_result_include_saml.dart';
import 'get_zero_trust_access_policies_result_include_service_token.dart';
import 'get_zero_trust_access_policies_result_include_user_risk_score.dart';

class GetZeroTrustAccessPoliciesResultInclude {
  /// An empty object which matches on all service tokens.
  final pulumi.Input<Map<String, dynamic>> anyValidServiceToken;
  final pulumi.Input<GetZeroTrustAccessPoliciesResultIncludeAuthContext> authContext;
  final pulumi.Input<GetZeroTrustAccessPoliciesResultIncludeAuthMethod> authMethod;
  final pulumi.Input<GetZeroTrustAccessPoliciesResultIncludeAzureAd> azureAd;
  final pulumi.Input<Map<String, dynamic>> certificate;
  final pulumi.Input<GetZeroTrustAccessPoliciesResultIncludeCloudflareAccountMember> cloudflareAccountMember;
  final pulumi.Input<GetZeroTrustAccessPoliciesResultIncludeCommonName> commonName;
  final pulumi.Input<GetZeroTrustAccessPoliciesResultIncludeDevicePosture> devicePosture;
  final pulumi.Input<GetZeroTrustAccessPoliciesResultIncludeEmail> email;
  final pulumi.Input<GetZeroTrustAccessPoliciesResultIncludeEmailDomain> emailDomain;
  final pulumi.Input<GetZeroTrustAccessPoliciesResultIncludeEmailList> emailList;
  /// An empty object which matches on all users.
  final pulumi.Input<Map<String, dynamic>> everyone;
  final pulumi.Input<GetZeroTrustAccessPoliciesResultIncludeExternalEvaluation> externalEvaluation;
  final pulumi.Input<GetZeroTrustAccessPoliciesResultIncludeGeo> geo;
  final pulumi.Input<GetZeroTrustAccessPoliciesResultIncludeGithubOrganization> githubOrganization;
  final pulumi.Input<GetZeroTrustAccessPoliciesResultIncludeGroup> group;
  final pulumi.Input<GetZeroTrustAccessPoliciesResultIncludeGsuite> gsuite;
  final pulumi.Input<GetZeroTrustAccessPoliciesResultIncludeIp> ip;
  final pulumi.Input<GetZeroTrustAccessPoliciesResultIncludeIpList> ipList;
  final pulumi.Input<GetZeroTrustAccessPoliciesResultIncludeLinkedAppToken> linkedAppToken;
  final pulumi.Input<GetZeroTrustAccessPoliciesResultIncludeLoginMethod> loginMethod;
  final pulumi.Input<GetZeroTrustAccessPoliciesResultIncludeOidc> oidc;
  final pulumi.Input<GetZeroTrustAccessPoliciesResultIncludeOkta> okta;
  final pulumi.Input<GetZeroTrustAccessPoliciesResultIncludeSaml> saml;
  final pulumi.Input<GetZeroTrustAccessPoliciesResultIncludeServiceToken> serviceToken;
  final pulumi.Input<GetZeroTrustAccessPoliciesResultIncludeUserRiskScore> userRiskScore;

  /// Creates a new [GetZeroTrustAccessPoliciesResultInclude].
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
  const GetZeroTrustAccessPoliciesResultInclude({
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
      'authContext': pulumi.Input.mapInputValue<GetZeroTrustAccessPoliciesResultIncludeAuthContext, Map<String, dynamic>>(authContext, (value) => value.toMap()),
      'authMethod': pulumi.Input.mapInputValue<GetZeroTrustAccessPoliciesResultIncludeAuthMethod, Map<String, dynamic>>(authMethod, (value) => value.toMap()),
      'azureAd': pulumi.Input.mapInputValue<GetZeroTrustAccessPoliciesResultIncludeAzureAd, Map<String, dynamic>>(azureAd, (value) => value.toMap()),
      'certificate': certificate,
      'cloudflareAccountMember': pulumi.Input.mapInputValue<GetZeroTrustAccessPoliciesResultIncludeCloudflareAccountMember, Map<String, dynamic>>(cloudflareAccountMember, (value) => value.toMap()),
      'commonName': pulumi.Input.mapInputValue<GetZeroTrustAccessPoliciesResultIncludeCommonName, Map<String, dynamic>>(commonName, (value) => value.toMap()),
      'devicePosture': pulumi.Input.mapInputValue<GetZeroTrustAccessPoliciesResultIncludeDevicePosture, Map<String, dynamic>>(devicePosture, (value) => value.toMap()),
      'email': pulumi.Input.mapInputValue<GetZeroTrustAccessPoliciesResultIncludeEmail, Map<String, dynamic>>(email, (value) => value.toMap()),
      'emailDomain': pulumi.Input.mapInputValue<GetZeroTrustAccessPoliciesResultIncludeEmailDomain, Map<String, dynamic>>(emailDomain, (value) => value.toMap()),
      'emailList': pulumi.Input.mapInputValue<GetZeroTrustAccessPoliciesResultIncludeEmailList, Map<String, dynamic>>(emailList, (value) => value.toMap()),
      'everyone': everyone,
      'externalEvaluation': pulumi.Input.mapInputValue<GetZeroTrustAccessPoliciesResultIncludeExternalEvaluation, Map<String, dynamic>>(externalEvaluation, (value) => value.toMap()),
      'geo': pulumi.Input.mapInputValue<GetZeroTrustAccessPoliciesResultIncludeGeo, Map<String, dynamic>>(geo, (value) => value.toMap()),
      'githubOrganization': pulumi.Input.mapInputValue<GetZeroTrustAccessPoliciesResultIncludeGithubOrganization, Map<String, dynamic>>(githubOrganization, (value) => value.toMap()),
      'group': pulumi.Input.mapInputValue<GetZeroTrustAccessPoliciesResultIncludeGroup, Map<String, dynamic>>(group, (value) => value.toMap()),
      'gsuite': pulumi.Input.mapInputValue<GetZeroTrustAccessPoliciesResultIncludeGsuite, Map<String, dynamic>>(gsuite, (value) => value.toMap()),
      'ip': pulumi.Input.mapInputValue<GetZeroTrustAccessPoliciesResultIncludeIp, Map<String, dynamic>>(ip, (value) => value.toMap()),
      'ipList': pulumi.Input.mapInputValue<GetZeroTrustAccessPoliciesResultIncludeIpList, Map<String, dynamic>>(ipList, (value) => value.toMap()),
      'linkedAppToken': pulumi.Input.mapInputValue<GetZeroTrustAccessPoliciesResultIncludeLinkedAppToken, Map<String, dynamic>>(linkedAppToken, (value) => value.toMap()),
      'loginMethod': pulumi.Input.mapInputValue<GetZeroTrustAccessPoliciesResultIncludeLoginMethod, Map<String, dynamic>>(loginMethod, (value) => value.toMap()),
      'oidc': pulumi.Input.mapInputValue<GetZeroTrustAccessPoliciesResultIncludeOidc, Map<String, dynamic>>(oidc, (value) => value.toMap()),
      'okta': pulumi.Input.mapInputValue<GetZeroTrustAccessPoliciesResultIncludeOkta, Map<String, dynamic>>(okta, (value) => value.toMap()),
      'saml': pulumi.Input.mapInputValue<GetZeroTrustAccessPoliciesResultIncludeSaml, Map<String, dynamic>>(saml, (value) => value.toMap()),
      'serviceToken': pulumi.Input.mapInputValue<GetZeroTrustAccessPoliciesResultIncludeServiceToken, Map<String, dynamic>>(serviceToken, (value) => value.toMap()),
      'userRiskScore': pulumi.Input.mapInputValue<GetZeroTrustAccessPoliciesResultIncludeUserRiskScore, Map<String, dynamic>>(userRiskScore, (value) => value.toMap()),
    };
  }

  factory GetZeroTrustAccessPoliciesResultInclude.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessPoliciesResultInclude(
      anyValidServiceToken: pulumi.Input.fromValue((map['anyValidServiceToken']! as Map).cast<String, dynamic>()),
      authContext: pulumi.Input.fromValue(GetZeroTrustAccessPoliciesResultIncludeAuthContext.fromMap((map['authContext']! as Map).cast<String, dynamic>())),
      authMethod: pulumi.Input.fromValue(GetZeroTrustAccessPoliciesResultIncludeAuthMethod.fromMap((map['authMethod']! as Map).cast<String, dynamic>())),
      azureAd: pulumi.Input.fromValue(GetZeroTrustAccessPoliciesResultIncludeAzureAd.fromMap((map['azureAd']! as Map).cast<String, dynamic>())),
      certificate: pulumi.Input.fromValue((map['certificate']! as Map).cast<String, dynamic>()),
      cloudflareAccountMember: pulumi.Input.fromValue(GetZeroTrustAccessPoliciesResultIncludeCloudflareAccountMember.fromMap((map['cloudflareAccountMember']! as Map).cast<String, dynamic>())),
      commonName: pulumi.Input.fromValue(GetZeroTrustAccessPoliciesResultIncludeCommonName.fromMap((map['commonName']! as Map).cast<String, dynamic>())),
      devicePosture: pulumi.Input.fromValue(GetZeroTrustAccessPoliciesResultIncludeDevicePosture.fromMap((map['devicePosture']! as Map).cast<String, dynamic>())),
      email: pulumi.Input.fromValue(GetZeroTrustAccessPoliciesResultIncludeEmail.fromMap((map['email']! as Map).cast<String, dynamic>())),
      emailDomain: pulumi.Input.fromValue(GetZeroTrustAccessPoliciesResultIncludeEmailDomain.fromMap((map['emailDomain']! as Map).cast<String, dynamic>())),
      emailList: pulumi.Input.fromValue(GetZeroTrustAccessPoliciesResultIncludeEmailList.fromMap((map['emailList']! as Map).cast<String, dynamic>())),
      everyone: pulumi.Input.fromValue((map['everyone']! as Map).cast<String, dynamic>()),
      externalEvaluation: pulumi.Input.fromValue(GetZeroTrustAccessPoliciesResultIncludeExternalEvaluation.fromMap((map['externalEvaluation']! as Map).cast<String, dynamic>())),
      geo: pulumi.Input.fromValue(GetZeroTrustAccessPoliciesResultIncludeGeo.fromMap((map['geo']! as Map).cast<String, dynamic>())),
      githubOrganization: pulumi.Input.fromValue(GetZeroTrustAccessPoliciesResultIncludeGithubOrganization.fromMap((map['githubOrganization']! as Map).cast<String, dynamic>())),
      group: pulumi.Input.fromValue(GetZeroTrustAccessPoliciesResultIncludeGroup.fromMap((map['group']! as Map).cast<String, dynamic>())),
      gsuite: pulumi.Input.fromValue(GetZeroTrustAccessPoliciesResultIncludeGsuite.fromMap((map['gsuite']! as Map).cast<String, dynamic>())),
      ip: pulumi.Input.fromValue(GetZeroTrustAccessPoliciesResultIncludeIp.fromMap((map['ip']! as Map).cast<String, dynamic>())),
      ipList: pulumi.Input.fromValue(GetZeroTrustAccessPoliciesResultIncludeIpList.fromMap((map['ipList']! as Map).cast<String, dynamic>())),
      linkedAppToken: pulumi.Input.fromValue(GetZeroTrustAccessPoliciesResultIncludeLinkedAppToken.fromMap((map['linkedAppToken']! as Map).cast<String, dynamic>())),
      loginMethod: pulumi.Input.fromValue(GetZeroTrustAccessPoliciesResultIncludeLoginMethod.fromMap((map['loginMethod']! as Map).cast<String, dynamic>())),
      oidc: pulumi.Input.fromValue(GetZeroTrustAccessPoliciesResultIncludeOidc.fromMap((map['oidc']! as Map).cast<String, dynamic>())),
      okta: pulumi.Input.fromValue(GetZeroTrustAccessPoliciesResultIncludeOkta.fromMap((map['okta']! as Map).cast<String, dynamic>())),
      saml: pulumi.Input.fromValue(GetZeroTrustAccessPoliciesResultIncludeSaml.fromMap((map['saml']! as Map).cast<String, dynamic>())),
      serviceToken: pulumi.Input.fromValue(GetZeroTrustAccessPoliciesResultIncludeServiceToken.fromMap((map['serviceToken']! as Map).cast<String, dynamic>())),
      userRiskScore: pulumi.Input.fromValue(GetZeroTrustAccessPoliciesResultIncludeUserRiskScore.fromMap((map['userRiskScore']! as Map).cast<String, dynamic>())),
    );
  }
}
