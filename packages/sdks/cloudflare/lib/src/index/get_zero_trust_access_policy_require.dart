// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_access_policy_require_auth_context.dart';
import 'get_zero_trust_access_policy_require_auth_method.dart';
import 'get_zero_trust_access_policy_require_azure_ad.dart';
import 'get_zero_trust_access_policy_require_cloudflare_account_member.dart';
import 'get_zero_trust_access_policy_require_common_name.dart';
import 'get_zero_trust_access_policy_require_device_posture.dart';
import 'get_zero_trust_access_policy_require_email.dart';
import 'get_zero_trust_access_policy_require_email_domain.dart';
import 'get_zero_trust_access_policy_require_email_list.dart';
import 'get_zero_trust_access_policy_require_external_evaluation.dart';
import 'get_zero_trust_access_policy_require_geo.dart';
import 'get_zero_trust_access_policy_require_github_organization.dart';
import 'get_zero_trust_access_policy_require_group.dart';
import 'get_zero_trust_access_policy_require_gsuite.dart';
import 'get_zero_trust_access_policy_require_ip.dart';
import 'get_zero_trust_access_policy_require_ip_list.dart';
import 'get_zero_trust_access_policy_require_linked_app_token.dart';
import 'get_zero_trust_access_policy_require_login_method.dart';
import 'get_zero_trust_access_policy_require_oidc.dart';
import 'get_zero_trust_access_policy_require_okta.dart';
import 'get_zero_trust_access_policy_require_saml.dart';
import 'get_zero_trust_access_policy_require_service_token.dart';
import 'get_zero_trust_access_policy_require_user_risk_score.dart';

class GetZeroTrustAccessPolicyRequire {
  /// An empty object which matches on all service tokens.
  final pulumi.Input<Map<String, dynamic>> anyValidServiceToken;
  final pulumi.Input<GetZeroTrustAccessPolicyRequireAuthContext> authContext;
  final pulumi.Input<GetZeroTrustAccessPolicyRequireAuthMethod> authMethod;
  final pulumi.Input<GetZeroTrustAccessPolicyRequireAzureAd> azureAd;
  final pulumi.Input<Map<String, dynamic>> certificate;
  final pulumi.Input<GetZeroTrustAccessPolicyRequireCloudflareAccountMember> cloudflareAccountMember;
  final pulumi.Input<GetZeroTrustAccessPolicyRequireCommonName> commonName;
  final pulumi.Input<GetZeroTrustAccessPolicyRequireDevicePosture> devicePosture;
  final pulumi.Input<GetZeroTrustAccessPolicyRequireEmail> email;
  final pulumi.Input<GetZeroTrustAccessPolicyRequireEmailDomain> emailDomain;
  final pulumi.Input<GetZeroTrustAccessPolicyRequireEmailList> emailList;
  /// An empty object which matches on all users.
  final pulumi.Input<Map<String, dynamic>> everyone;
  final pulumi.Input<GetZeroTrustAccessPolicyRequireExternalEvaluation> externalEvaluation;
  final pulumi.Input<GetZeroTrustAccessPolicyRequireGeo> geo;
  final pulumi.Input<GetZeroTrustAccessPolicyRequireGithubOrganization> githubOrganization;
  final pulumi.Input<GetZeroTrustAccessPolicyRequireGroup> group;
  final pulumi.Input<GetZeroTrustAccessPolicyRequireGsuite> gsuite;
  final pulumi.Input<GetZeroTrustAccessPolicyRequireIp> ip;
  final pulumi.Input<GetZeroTrustAccessPolicyRequireIpList> ipList;
  final pulumi.Input<GetZeroTrustAccessPolicyRequireLinkedAppToken> linkedAppToken;
  final pulumi.Input<GetZeroTrustAccessPolicyRequireLoginMethod> loginMethod;
  final pulumi.Input<GetZeroTrustAccessPolicyRequireOidc> oidc;
  final pulumi.Input<GetZeroTrustAccessPolicyRequireOkta> okta;
  final pulumi.Input<GetZeroTrustAccessPolicyRequireSaml> saml;
  final pulumi.Input<GetZeroTrustAccessPolicyRequireServiceToken> serviceToken;
  final pulumi.Input<GetZeroTrustAccessPolicyRequireUserRiskScore> userRiskScore;

  /// Creates a new [GetZeroTrustAccessPolicyRequire].
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
  const GetZeroTrustAccessPolicyRequire({
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
      'authContext': pulumi.Input.mapInputValue<GetZeroTrustAccessPolicyRequireAuthContext, Map<String, dynamic>>(authContext, (value) => value.toMap()),
      'authMethod': pulumi.Input.mapInputValue<GetZeroTrustAccessPolicyRequireAuthMethod, Map<String, dynamic>>(authMethod, (value) => value.toMap()),
      'azureAd': pulumi.Input.mapInputValue<GetZeroTrustAccessPolicyRequireAzureAd, Map<String, dynamic>>(azureAd, (value) => value.toMap()),
      'certificate': certificate,
      'cloudflareAccountMember': pulumi.Input.mapInputValue<GetZeroTrustAccessPolicyRequireCloudflareAccountMember, Map<String, dynamic>>(cloudflareAccountMember, (value) => value.toMap()),
      'commonName': pulumi.Input.mapInputValue<GetZeroTrustAccessPolicyRequireCommonName, Map<String, dynamic>>(commonName, (value) => value.toMap()),
      'devicePosture': pulumi.Input.mapInputValue<GetZeroTrustAccessPolicyRequireDevicePosture, Map<String, dynamic>>(devicePosture, (value) => value.toMap()),
      'email': pulumi.Input.mapInputValue<GetZeroTrustAccessPolicyRequireEmail, Map<String, dynamic>>(email, (value) => value.toMap()),
      'emailDomain': pulumi.Input.mapInputValue<GetZeroTrustAccessPolicyRequireEmailDomain, Map<String, dynamic>>(emailDomain, (value) => value.toMap()),
      'emailList': pulumi.Input.mapInputValue<GetZeroTrustAccessPolicyRequireEmailList, Map<String, dynamic>>(emailList, (value) => value.toMap()),
      'everyone': everyone,
      'externalEvaluation': pulumi.Input.mapInputValue<GetZeroTrustAccessPolicyRequireExternalEvaluation, Map<String, dynamic>>(externalEvaluation, (value) => value.toMap()),
      'geo': pulumi.Input.mapInputValue<GetZeroTrustAccessPolicyRequireGeo, Map<String, dynamic>>(geo, (value) => value.toMap()),
      'githubOrganization': pulumi.Input.mapInputValue<GetZeroTrustAccessPolicyRequireGithubOrganization, Map<String, dynamic>>(githubOrganization, (value) => value.toMap()),
      'group': pulumi.Input.mapInputValue<GetZeroTrustAccessPolicyRequireGroup, Map<String, dynamic>>(group, (value) => value.toMap()),
      'gsuite': pulumi.Input.mapInputValue<GetZeroTrustAccessPolicyRequireGsuite, Map<String, dynamic>>(gsuite, (value) => value.toMap()),
      'ip': pulumi.Input.mapInputValue<GetZeroTrustAccessPolicyRequireIp, Map<String, dynamic>>(ip, (value) => value.toMap()),
      'ipList': pulumi.Input.mapInputValue<GetZeroTrustAccessPolicyRequireIpList, Map<String, dynamic>>(ipList, (value) => value.toMap()),
      'linkedAppToken': pulumi.Input.mapInputValue<GetZeroTrustAccessPolicyRequireLinkedAppToken, Map<String, dynamic>>(linkedAppToken, (value) => value.toMap()),
      'loginMethod': pulumi.Input.mapInputValue<GetZeroTrustAccessPolicyRequireLoginMethod, Map<String, dynamic>>(loginMethod, (value) => value.toMap()),
      'oidc': pulumi.Input.mapInputValue<GetZeroTrustAccessPolicyRequireOidc, Map<String, dynamic>>(oidc, (value) => value.toMap()),
      'okta': pulumi.Input.mapInputValue<GetZeroTrustAccessPolicyRequireOkta, Map<String, dynamic>>(okta, (value) => value.toMap()),
      'saml': pulumi.Input.mapInputValue<GetZeroTrustAccessPolicyRequireSaml, Map<String, dynamic>>(saml, (value) => value.toMap()),
      'serviceToken': pulumi.Input.mapInputValue<GetZeroTrustAccessPolicyRequireServiceToken, Map<String, dynamic>>(serviceToken, (value) => value.toMap()),
      'userRiskScore': pulumi.Input.mapInputValue<GetZeroTrustAccessPolicyRequireUserRiskScore, Map<String, dynamic>>(userRiskScore, (value) => value.toMap()),
    };
  }

  factory GetZeroTrustAccessPolicyRequire.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessPolicyRequire(
      anyValidServiceToken: pulumi.Input.fromValue((map['anyValidServiceToken']! as Map).cast<String, dynamic>()),
      authContext: pulumi.Input.fromValue(GetZeroTrustAccessPolicyRequireAuthContext.fromMap((map['authContext']! as Map).cast<String, dynamic>())),
      authMethod: pulumi.Input.fromValue(GetZeroTrustAccessPolicyRequireAuthMethod.fromMap((map['authMethod']! as Map).cast<String, dynamic>())),
      azureAd: pulumi.Input.fromValue(GetZeroTrustAccessPolicyRequireAzureAd.fromMap((map['azureAd']! as Map).cast<String, dynamic>())),
      certificate: pulumi.Input.fromValue((map['certificate']! as Map).cast<String, dynamic>()),
      cloudflareAccountMember: pulumi.Input.fromValue(GetZeroTrustAccessPolicyRequireCloudflareAccountMember.fromMap((map['cloudflareAccountMember']! as Map).cast<String, dynamic>())),
      commonName: pulumi.Input.fromValue(GetZeroTrustAccessPolicyRequireCommonName.fromMap((map['commonName']! as Map).cast<String, dynamic>())),
      devicePosture: pulumi.Input.fromValue(GetZeroTrustAccessPolicyRequireDevicePosture.fromMap((map['devicePosture']! as Map).cast<String, dynamic>())),
      email: pulumi.Input.fromValue(GetZeroTrustAccessPolicyRequireEmail.fromMap((map['email']! as Map).cast<String, dynamic>())),
      emailDomain: pulumi.Input.fromValue(GetZeroTrustAccessPolicyRequireEmailDomain.fromMap((map['emailDomain']! as Map).cast<String, dynamic>())),
      emailList: pulumi.Input.fromValue(GetZeroTrustAccessPolicyRequireEmailList.fromMap((map['emailList']! as Map).cast<String, dynamic>())),
      everyone: pulumi.Input.fromValue((map['everyone']! as Map).cast<String, dynamic>()),
      externalEvaluation: pulumi.Input.fromValue(GetZeroTrustAccessPolicyRequireExternalEvaluation.fromMap((map['externalEvaluation']! as Map).cast<String, dynamic>())),
      geo: pulumi.Input.fromValue(GetZeroTrustAccessPolicyRequireGeo.fromMap((map['geo']! as Map).cast<String, dynamic>())),
      githubOrganization: pulumi.Input.fromValue(GetZeroTrustAccessPolicyRequireGithubOrganization.fromMap((map['githubOrganization']! as Map).cast<String, dynamic>())),
      group: pulumi.Input.fromValue(GetZeroTrustAccessPolicyRequireGroup.fromMap((map['group']! as Map).cast<String, dynamic>())),
      gsuite: pulumi.Input.fromValue(GetZeroTrustAccessPolicyRequireGsuite.fromMap((map['gsuite']! as Map).cast<String, dynamic>())),
      ip: pulumi.Input.fromValue(GetZeroTrustAccessPolicyRequireIp.fromMap((map['ip']! as Map).cast<String, dynamic>())),
      ipList: pulumi.Input.fromValue(GetZeroTrustAccessPolicyRequireIpList.fromMap((map['ipList']! as Map).cast<String, dynamic>())),
      linkedAppToken: pulumi.Input.fromValue(GetZeroTrustAccessPolicyRequireLinkedAppToken.fromMap((map['linkedAppToken']! as Map).cast<String, dynamic>())),
      loginMethod: pulumi.Input.fromValue(GetZeroTrustAccessPolicyRequireLoginMethod.fromMap((map['loginMethod']! as Map).cast<String, dynamic>())),
      oidc: pulumi.Input.fromValue(GetZeroTrustAccessPolicyRequireOidc.fromMap((map['oidc']! as Map).cast<String, dynamic>())),
      okta: pulumi.Input.fromValue(GetZeroTrustAccessPolicyRequireOkta.fromMap((map['okta']! as Map).cast<String, dynamic>())),
      saml: pulumi.Input.fromValue(GetZeroTrustAccessPolicyRequireSaml.fromMap((map['saml']! as Map).cast<String, dynamic>())),
      serviceToken: pulumi.Input.fromValue(GetZeroTrustAccessPolicyRequireServiceToken.fromMap((map['serviceToken']! as Map).cast<String, dynamic>())),
      userRiskScore: pulumi.Input.fromValue(GetZeroTrustAccessPolicyRequireUserRiskScore.fromMap((map['userRiskScore']! as Map).cast<String, dynamic>())),
    );
  }
}
