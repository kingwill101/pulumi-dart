// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_access_group_include_auth_context.dart';
import 'get_zero_trust_access_group_include_auth_method.dart';
import 'get_zero_trust_access_group_include_azure_ad.dart';
import 'get_zero_trust_access_group_include_cloudflare_account_member.dart';
import 'get_zero_trust_access_group_include_common_name.dart';
import 'get_zero_trust_access_group_include_device_posture.dart';
import 'get_zero_trust_access_group_include_email.dart';
import 'get_zero_trust_access_group_include_email_domain.dart';
import 'get_zero_trust_access_group_include_email_list.dart';
import 'get_zero_trust_access_group_include_external_evaluation.dart';
import 'get_zero_trust_access_group_include_geo.dart';
import 'get_zero_trust_access_group_include_github_organization.dart';
import 'get_zero_trust_access_group_include_group.dart';
import 'get_zero_trust_access_group_include_gsuite.dart';
import 'get_zero_trust_access_group_include_ip.dart';
import 'get_zero_trust_access_group_include_ip_list.dart';
import 'get_zero_trust_access_group_include_linked_app_token.dart';
import 'get_zero_trust_access_group_include_login_method.dart';
import 'get_zero_trust_access_group_include_oidc.dart';
import 'get_zero_trust_access_group_include_okta.dart';
import 'get_zero_trust_access_group_include_saml.dart';
import 'get_zero_trust_access_group_include_service_token.dart';
import 'get_zero_trust_access_group_include_user_risk_score.dart';

class GetZeroTrustAccessGroupInclude {
  /// An empty object which matches on all service tokens.
  final pulumi.Input<Map<String, dynamic>> anyValidServiceToken;
  final pulumi.Input<GetZeroTrustAccessGroupIncludeAuthContext> authContext;
  final pulumi.Input<GetZeroTrustAccessGroupIncludeAuthMethod> authMethod;
  final pulumi.Input<GetZeroTrustAccessGroupIncludeAzureAd> azureAd;
  final pulumi.Input<Map<String, dynamic>> certificate;
  final pulumi.Input<GetZeroTrustAccessGroupIncludeCloudflareAccountMember> cloudflareAccountMember;
  final pulumi.Input<GetZeroTrustAccessGroupIncludeCommonName> commonName;
  final pulumi.Input<GetZeroTrustAccessGroupIncludeDevicePosture> devicePosture;
  final pulumi.Input<GetZeroTrustAccessGroupIncludeEmail> email;
  final pulumi.Input<GetZeroTrustAccessGroupIncludeEmailDomain> emailDomain;
  final pulumi.Input<GetZeroTrustAccessGroupIncludeEmailList> emailList;
  /// An empty object which matches on all users.
  final pulumi.Input<Map<String, dynamic>> everyone;
  final pulumi.Input<GetZeroTrustAccessGroupIncludeExternalEvaluation> externalEvaluation;
  final pulumi.Input<GetZeroTrustAccessGroupIncludeGeo> geo;
  final pulumi.Input<GetZeroTrustAccessGroupIncludeGithubOrganization> githubOrganization;
  final pulumi.Input<GetZeroTrustAccessGroupIncludeGroup> group;
  final pulumi.Input<GetZeroTrustAccessGroupIncludeGsuite> gsuite;
  final pulumi.Input<GetZeroTrustAccessGroupIncludeIp> ip;
  final pulumi.Input<GetZeroTrustAccessGroupIncludeIpList> ipList;
  final pulumi.Input<GetZeroTrustAccessGroupIncludeLinkedAppToken> linkedAppToken;
  final pulumi.Input<GetZeroTrustAccessGroupIncludeLoginMethod> loginMethod;
  final pulumi.Input<GetZeroTrustAccessGroupIncludeOidc> oidc;
  final pulumi.Input<GetZeroTrustAccessGroupIncludeOkta> okta;
  final pulumi.Input<GetZeroTrustAccessGroupIncludeSaml> saml;
  final pulumi.Input<GetZeroTrustAccessGroupIncludeServiceToken> serviceToken;
  final pulumi.Input<GetZeroTrustAccessGroupIncludeUserRiskScore> userRiskScore;

  /// Creates a new [GetZeroTrustAccessGroupInclude].
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
  const GetZeroTrustAccessGroupInclude({
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
      'authContext': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupIncludeAuthContext, Map<String, dynamic>>(authContext, (value) => value.toMap()),
      'authMethod': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupIncludeAuthMethod, Map<String, dynamic>>(authMethod, (value) => value.toMap()),
      'azureAd': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupIncludeAzureAd, Map<String, dynamic>>(azureAd, (value) => value.toMap()),
      'certificate': certificate,
      'cloudflareAccountMember': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupIncludeCloudflareAccountMember, Map<String, dynamic>>(cloudflareAccountMember, (value) => value.toMap()),
      'commonName': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupIncludeCommonName, Map<String, dynamic>>(commonName, (value) => value.toMap()),
      'devicePosture': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupIncludeDevicePosture, Map<String, dynamic>>(devicePosture, (value) => value.toMap()),
      'email': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupIncludeEmail, Map<String, dynamic>>(email, (value) => value.toMap()),
      'emailDomain': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupIncludeEmailDomain, Map<String, dynamic>>(emailDomain, (value) => value.toMap()),
      'emailList': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupIncludeEmailList, Map<String, dynamic>>(emailList, (value) => value.toMap()),
      'everyone': everyone,
      'externalEvaluation': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupIncludeExternalEvaluation, Map<String, dynamic>>(externalEvaluation, (value) => value.toMap()),
      'geo': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupIncludeGeo, Map<String, dynamic>>(geo, (value) => value.toMap()),
      'githubOrganization': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupIncludeGithubOrganization, Map<String, dynamic>>(githubOrganization, (value) => value.toMap()),
      'group': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupIncludeGroup, Map<String, dynamic>>(group, (value) => value.toMap()),
      'gsuite': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupIncludeGsuite, Map<String, dynamic>>(gsuite, (value) => value.toMap()),
      'ip': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupIncludeIp, Map<String, dynamic>>(ip, (value) => value.toMap()),
      'ipList': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupIncludeIpList, Map<String, dynamic>>(ipList, (value) => value.toMap()),
      'linkedAppToken': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupIncludeLinkedAppToken, Map<String, dynamic>>(linkedAppToken, (value) => value.toMap()),
      'loginMethod': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupIncludeLoginMethod, Map<String, dynamic>>(loginMethod, (value) => value.toMap()),
      'oidc': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupIncludeOidc, Map<String, dynamic>>(oidc, (value) => value.toMap()),
      'okta': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupIncludeOkta, Map<String, dynamic>>(okta, (value) => value.toMap()),
      'saml': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupIncludeSaml, Map<String, dynamic>>(saml, (value) => value.toMap()),
      'serviceToken': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupIncludeServiceToken, Map<String, dynamic>>(serviceToken, (value) => value.toMap()),
      'userRiskScore': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupIncludeUserRiskScore, Map<String, dynamic>>(userRiskScore, (value) => value.toMap()),
    };
  }

  factory GetZeroTrustAccessGroupInclude.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessGroupInclude(
      anyValidServiceToken: pulumi.Input.fromValue((map['anyValidServiceToken']! as Map).cast<String, dynamic>()),
      authContext: pulumi.Input.fromValue(GetZeroTrustAccessGroupIncludeAuthContext.fromMap((map['authContext']! as Map).cast<String, dynamic>())),
      authMethod: pulumi.Input.fromValue(GetZeroTrustAccessGroupIncludeAuthMethod.fromMap((map['authMethod']! as Map).cast<String, dynamic>())),
      azureAd: pulumi.Input.fromValue(GetZeroTrustAccessGroupIncludeAzureAd.fromMap((map['azureAd']! as Map).cast<String, dynamic>())),
      certificate: pulumi.Input.fromValue((map['certificate']! as Map).cast<String, dynamic>()),
      cloudflareAccountMember: pulumi.Input.fromValue(GetZeroTrustAccessGroupIncludeCloudflareAccountMember.fromMap((map['cloudflareAccountMember']! as Map).cast<String, dynamic>())),
      commonName: pulumi.Input.fromValue(GetZeroTrustAccessGroupIncludeCommonName.fromMap((map['commonName']! as Map).cast<String, dynamic>())),
      devicePosture: pulumi.Input.fromValue(GetZeroTrustAccessGroupIncludeDevicePosture.fromMap((map['devicePosture']! as Map).cast<String, dynamic>())),
      email: pulumi.Input.fromValue(GetZeroTrustAccessGroupIncludeEmail.fromMap((map['email']! as Map).cast<String, dynamic>())),
      emailDomain: pulumi.Input.fromValue(GetZeroTrustAccessGroupIncludeEmailDomain.fromMap((map['emailDomain']! as Map).cast<String, dynamic>())),
      emailList: pulumi.Input.fromValue(GetZeroTrustAccessGroupIncludeEmailList.fromMap((map['emailList']! as Map).cast<String, dynamic>())),
      everyone: pulumi.Input.fromValue((map['everyone']! as Map).cast<String, dynamic>()),
      externalEvaluation: pulumi.Input.fromValue(GetZeroTrustAccessGroupIncludeExternalEvaluation.fromMap((map['externalEvaluation']! as Map).cast<String, dynamic>())),
      geo: pulumi.Input.fromValue(GetZeroTrustAccessGroupIncludeGeo.fromMap((map['geo']! as Map).cast<String, dynamic>())),
      githubOrganization: pulumi.Input.fromValue(GetZeroTrustAccessGroupIncludeGithubOrganization.fromMap((map['githubOrganization']! as Map).cast<String, dynamic>())),
      group: pulumi.Input.fromValue(GetZeroTrustAccessGroupIncludeGroup.fromMap((map['group']! as Map).cast<String, dynamic>())),
      gsuite: pulumi.Input.fromValue(GetZeroTrustAccessGroupIncludeGsuite.fromMap((map['gsuite']! as Map).cast<String, dynamic>())),
      ip: pulumi.Input.fromValue(GetZeroTrustAccessGroupIncludeIp.fromMap((map['ip']! as Map).cast<String, dynamic>())),
      ipList: pulumi.Input.fromValue(GetZeroTrustAccessGroupIncludeIpList.fromMap((map['ipList']! as Map).cast<String, dynamic>())),
      linkedAppToken: pulumi.Input.fromValue(GetZeroTrustAccessGroupIncludeLinkedAppToken.fromMap((map['linkedAppToken']! as Map).cast<String, dynamic>())),
      loginMethod: pulumi.Input.fromValue(GetZeroTrustAccessGroupIncludeLoginMethod.fromMap((map['loginMethod']! as Map).cast<String, dynamic>())),
      oidc: pulumi.Input.fromValue(GetZeroTrustAccessGroupIncludeOidc.fromMap((map['oidc']! as Map).cast<String, dynamic>())),
      okta: pulumi.Input.fromValue(GetZeroTrustAccessGroupIncludeOkta.fromMap((map['okta']! as Map).cast<String, dynamic>())),
      saml: pulumi.Input.fromValue(GetZeroTrustAccessGroupIncludeSaml.fromMap((map['saml']! as Map).cast<String, dynamic>())),
      serviceToken: pulumi.Input.fromValue(GetZeroTrustAccessGroupIncludeServiceToken.fromMap((map['serviceToken']! as Map).cast<String, dynamic>())),
      userRiskScore: pulumi.Input.fromValue(GetZeroTrustAccessGroupIncludeUserRiskScore.fromMap((map['userRiskScore']! as Map).cast<String, dynamic>())),
    );
  }
}
