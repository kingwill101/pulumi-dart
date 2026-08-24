// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_access_group_exclude_auth_context.dart';
import 'get_zero_trust_access_group_exclude_auth_method.dart';
import 'get_zero_trust_access_group_exclude_azure_ad.dart';
import 'get_zero_trust_access_group_exclude_cloudflare_account_member.dart';
import 'get_zero_trust_access_group_exclude_common_name.dart';
import 'get_zero_trust_access_group_exclude_device_posture.dart';
import 'get_zero_trust_access_group_exclude_email.dart';
import 'get_zero_trust_access_group_exclude_email_domain.dart';
import 'get_zero_trust_access_group_exclude_email_list.dart';
import 'get_zero_trust_access_group_exclude_external_evaluation.dart';
import 'get_zero_trust_access_group_exclude_geo.dart';
import 'get_zero_trust_access_group_exclude_github_organization.dart';
import 'get_zero_trust_access_group_exclude_group.dart';
import 'get_zero_trust_access_group_exclude_gsuite.dart';
import 'get_zero_trust_access_group_exclude_ip.dart';
import 'get_zero_trust_access_group_exclude_ip_list.dart';
import 'get_zero_trust_access_group_exclude_linked_app_token.dart';
import 'get_zero_trust_access_group_exclude_login_method.dart';
import 'get_zero_trust_access_group_exclude_oidc.dart';
import 'get_zero_trust_access_group_exclude_okta.dart';
import 'get_zero_trust_access_group_exclude_saml.dart';
import 'get_zero_trust_access_group_exclude_service_token.dart';
import 'get_zero_trust_access_group_exclude_user_risk_score.dart';

class GetZeroTrustAccessGroupExclude {
  /// An empty object which matches on all service tokens.
  final pulumi.Input<Map<String, dynamic>> anyValidServiceToken;
  final pulumi.Input<GetZeroTrustAccessGroupExcludeAuthContext> authContext;
  final pulumi.Input<GetZeroTrustAccessGroupExcludeAuthMethod> authMethod;
  final pulumi.Input<GetZeroTrustAccessGroupExcludeAzureAd> azureAd;
  final pulumi.Input<Map<String, dynamic>> certificate;
  final pulumi.Input<GetZeroTrustAccessGroupExcludeCloudflareAccountMember> cloudflareAccountMember;
  final pulumi.Input<GetZeroTrustAccessGroupExcludeCommonName> commonName;
  final pulumi.Input<GetZeroTrustAccessGroupExcludeDevicePosture> devicePosture;
  final pulumi.Input<GetZeroTrustAccessGroupExcludeEmail> email;
  final pulumi.Input<GetZeroTrustAccessGroupExcludeEmailDomain> emailDomain;
  final pulumi.Input<GetZeroTrustAccessGroupExcludeEmailList> emailList;
  /// An empty object which matches on all users.
  final pulumi.Input<Map<String, dynamic>> everyone;
  final pulumi.Input<GetZeroTrustAccessGroupExcludeExternalEvaluation> externalEvaluation;
  final pulumi.Input<GetZeroTrustAccessGroupExcludeGeo> geo;
  final pulumi.Input<GetZeroTrustAccessGroupExcludeGithubOrganization> githubOrganization;
  final pulumi.Input<GetZeroTrustAccessGroupExcludeGroup> group;
  final pulumi.Input<GetZeroTrustAccessGroupExcludeGsuite> gsuite;
  final pulumi.Input<GetZeroTrustAccessGroupExcludeIp> ip;
  final pulumi.Input<GetZeroTrustAccessGroupExcludeIpList> ipList;
  final pulumi.Input<GetZeroTrustAccessGroupExcludeLinkedAppToken> linkedAppToken;
  final pulumi.Input<GetZeroTrustAccessGroupExcludeLoginMethod> loginMethod;
  final pulumi.Input<GetZeroTrustAccessGroupExcludeOidc> oidc;
  final pulumi.Input<GetZeroTrustAccessGroupExcludeOkta> okta;
  final pulumi.Input<GetZeroTrustAccessGroupExcludeSaml> saml;
  final pulumi.Input<GetZeroTrustAccessGroupExcludeServiceToken> serviceToken;
  final pulumi.Input<GetZeroTrustAccessGroupExcludeUserRiskScore> userRiskScore;

  /// Creates a new [GetZeroTrustAccessGroupExclude].
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
  const GetZeroTrustAccessGroupExclude({
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
      'authContext': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupExcludeAuthContext, Map<String, dynamic>>(authContext, (value) => value.toMap()),
      'authMethod': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupExcludeAuthMethod, Map<String, dynamic>>(authMethod, (value) => value.toMap()),
      'azureAd': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupExcludeAzureAd, Map<String, dynamic>>(azureAd, (value) => value.toMap()),
      'certificate': certificate,
      'cloudflareAccountMember': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupExcludeCloudflareAccountMember, Map<String, dynamic>>(cloudflareAccountMember, (value) => value.toMap()),
      'commonName': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupExcludeCommonName, Map<String, dynamic>>(commonName, (value) => value.toMap()),
      'devicePosture': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupExcludeDevicePosture, Map<String, dynamic>>(devicePosture, (value) => value.toMap()),
      'email': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupExcludeEmail, Map<String, dynamic>>(email, (value) => value.toMap()),
      'emailDomain': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupExcludeEmailDomain, Map<String, dynamic>>(emailDomain, (value) => value.toMap()),
      'emailList': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupExcludeEmailList, Map<String, dynamic>>(emailList, (value) => value.toMap()),
      'everyone': everyone,
      'externalEvaluation': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupExcludeExternalEvaluation, Map<String, dynamic>>(externalEvaluation, (value) => value.toMap()),
      'geo': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupExcludeGeo, Map<String, dynamic>>(geo, (value) => value.toMap()),
      'githubOrganization': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupExcludeGithubOrganization, Map<String, dynamic>>(githubOrganization, (value) => value.toMap()),
      'group': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupExcludeGroup, Map<String, dynamic>>(group, (value) => value.toMap()),
      'gsuite': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupExcludeGsuite, Map<String, dynamic>>(gsuite, (value) => value.toMap()),
      'ip': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupExcludeIp, Map<String, dynamic>>(ip, (value) => value.toMap()),
      'ipList': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupExcludeIpList, Map<String, dynamic>>(ipList, (value) => value.toMap()),
      'linkedAppToken': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupExcludeLinkedAppToken, Map<String, dynamic>>(linkedAppToken, (value) => value.toMap()),
      'loginMethod': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupExcludeLoginMethod, Map<String, dynamic>>(loginMethod, (value) => value.toMap()),
      'oidc': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupExcludeOidc, Map<String, dynamic>>(oidc, (value) => value.toMap()),
      'okta': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupExcludeOkta, Map<String, dynamic>>(okta, (value) => value.toMap()),
      'saml': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupExcludeSaml, Map<String, dynamic>>(saml, (value) => value.toMap()),
      'serviceToken': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupExcludeServiceToken, Map<String, dynamic>>(serviceToken, (value) => value.toMap()),
      'userRiskScore': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupExcludeUserRiskScore, Map<String, dynamic>>(userRiskScore, (value) => value.toMap()),
    };
  }

  factory GetZeroTrustAccessGroupExclude.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessGroupExclude(
      anyValidServiceToken: pulumi.Input.fromValue((map['anyValidServiceToken']! as Map).cast<String, dynamic>()),
      authContext: pulumi.Input.fromValue(GetZeroTrustAccessGroupExcludeAuthContext.fromMap((map['authContext']! as Map).cast<String, dynamic>())),
      authMethod: pulumi.Input.fromValue(GetZeroTrustAccessGroupExcludeAuthMethod.fromMap((map['authMethod']! as Map).cast<String, dynamic>())),
      azureAd: pulumi.Input.fromValue(GetZeroTrustAccessGroupExcludeAzureAd.fromMap((map['azureAd']! as Map).cast<String, dynamic>())),
      certificate: pulumi.Input.fromValue((map['certificate']! as Map).cast<String, dynamic>()),
      cloudflareAccountMember: pulumi.Input.fromValue(GetZeroTrustAccessGroupExcludeCloudflareAccountMember.fromMap((map['cloudflareAccountMember']! as Map).cast<String, dynamic>())),
      commonName: pulumi.Input.fromValue(GetZeroTrustAccessGroupExcludeCommonName.fromMap((map['commonName']! as Map).cast<String, dynamic>())),
      devicePosture: pulumi.Input.fromValue(GetZeroTrustAccessGroupExcludeDevicePosture.fromMap((map['devicePosture']! as Map).cast<String, dynamic>())),
      email: pulumi.Input.fromValue(GetZeroTrustAccessGroupExcludeEmail.fromMap((map['email']! as Map).cast<String, dynamic>())),
      emailDomain: pulumi.Input.fromValue(GetZeroTrustAccessGroupExcludeEmailDomain.fromMap((map['emailDomain']! as Map).cast<String, dynamic>())),
      emailList: pulumi.Input.fromValue(GetZeroTrustAccessGroupExcludeEmailList.fromMap((map['emailList']! as Map).cast<String, dynamic>())),
      everyone: pulumi.Input.fromValue((map['everyone']! as Map).cast<String, dynamic>()),
      externalEvaluation: pulumi.Input.fromValue(GetZeroTrustAccessGroupExcludeExternalEvaluation.fromMap((map['externalEvaluation']! as Map).cast<String, dynamic>())),
      geo: pulumi.Input.fromValue(GetZeroTrustAccessGroupExcludeGeo.fromMap((map['geo']! as Map).cast<String, dynamic>())),
      githubOrganization: pulumi.Input.fromValue(GetZeroTrustAccessGroupExcludeGithubOrganization.fromMap((map['githubOrganization']! as Map).cast<String, dynamic>())),
      group: pulumi.Input.fromValue(GetZeroTrustAccessGroupExcludeGroup.fromMap((map['group']! as Map).cast<String, dynamic>())),
      gsuite: pulumi.Input.fromValue(GetZeroTrustAccessGroupExcludeGsuite.fromMap((map['gsuite']! as Map).cast<String, dynamic>())),
      ip: pulumi.Input.fromValue(GetZeroTrustAccessGroupExcludeIp.fromMap((map['ip']! as Map).cast<String, dynamic>())),
      ipList: pulumi.Input.fromValue(GetZeroTrustAccessGroupExcludeIpList.fromMap((map['ipList']! as Map).cast<String, dynamic>())),
      linkedAppToken: pulumi.Input.fromValue(GetZeroTrustAccessGroupExcludeLinkedAppToken.fromMap((map['linkedAppToken']! as Map).cast<String, dynamic>())),
      loginMethod: pulumi.Input.fromValue(GetZeroTrustAccessGroupExcludeLoginMethod.fromMap((map['loginMethod']! as Map).cast<String, dynamic>())),
      oidc: pulumi.Input.fromValue(GetZeroTrustAccessGroupExcludeOidc.fromMap((map['oidc']! as Map).cast<String, dynamic>())),
      okta: pulumi.Input.fromValue(GetZeroTrustAccessGroupExcludeOkta.fromMap((map['okta']! as Map).cast<String, dynamic>())),
      saml: pulumi.Input.fromValue(GetZeroTrustAccessGroupExcludeSaml.fromMap((map['saml']! as Map).cast<String, dynamic>())),
      serviceToken: pulumi.Input.fromValue(GetZeroTrustAccessGroupExcludeServiceToken.fromMap((map['serviceToken']! as Map).cast<String, dynamic>())),
      userRiskScore: pulumi.Input.fromValue(GetZeroTrustAccessGroupExcludeUserRiskScore.fromMap((map['userRiskScore']! as Map).cast<String, dynamic>())),
    );
  }
}
