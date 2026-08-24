// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_access_group_is_default_auth_context.dart';
import 'get_zero_trust_access_group_is_default_auth_method.dart';
import 'get_zero_trust_access_group_is_default_azure_ad.dart';
import 'get_zero_trust_access_group_is_default_cloudflare_account_member.dart';
import 'get_zero_trust_access_group_is_default_common_name.dart';
import 'get_zero_trust_access_group_is_default_device_posture.dart';
import 'get_zero_trust_access_group_is_default_email.dart';
import 'get_zero_trust_access_group_is_default_email_domain.dart';
import 'get_zero_trust_access_group_is_default_email_list.dart';
import 'get_zero_trust_access_group_is_default_external_evaluation.dart';
import 'get_zero_trust_access_group_is_default_geo.dart';
import 'get_zero_trust_access_group_is_default_github_organization.dart';
import 'get_zero_trust_access_group_is_default_group.dart';
import 'get_zero_trust_access_group_is_default_gsuite.dart';
import 'get_zero_trust_access_group_is_default_ip.dart';
import 'get_zero_trust_access_group_is_default_ip_list.dart';
import 'get_zero_trust_access_group_is_default_linked_app_token.dart';
import 'get_zero_trust_access_group_is_default_login_method.dart';
import 'get_zero_trust_access_group_is_default_oidc.dart';
import 'get_zero_trust_access_group_is_default_okta.dart';
import 'get_zero_trust_access_group_is_default_saml.dart';
import 'get_zero_trust_access_group_is_default_service_token.dart';
import 'get_zero_trust_access_group_is_default_user_risk_score.dart';

class GetZeroTrustAccessGroupIsDefault {
  /// An empty object which matches on all service tokens.
  final pulumi.Input<Map<String, dynamic>> anyValidServiceToken;
  final pulumi.Input<GetZeroTrustAccessGroupIsDefaultAuthContext> authContext;
  final pulumi.Input<GetZeroTrustAccessGroupIsDefaultAuthMethod> authMethod;
  final pulumi.Input<GetZeroTrustAccessGroupIsDefaultAzureAd> azureAd;
  final pulumi.Input<Map<String, dynamic>> certificate;
  final pulumi.Input<GetZeroTrustAccessGroupIsDefaultCloudflareAccountMember> cloudflareAccountMember;
  final pulumi.Input<GetZeroTrustAccessGroupIsDefaultCommonName> commonName;
  final pulumi.Input<GetZeroTrustAccessGroupIsDefaultDevicePosture> devicePosture;
  final pulumi.Input<GetZeroTrustAccessGroupIsDefaultEmail> email;
  final pulumi.Input<GetZeroTrustAccessGroupIsDefaultEmailDomain> emailDomain;
  final pulumi.Input<GetZeroTrustAccessGroupIsDefaultEmailList> emailList;
  /// An empty object which matches on all users.
  final pulumi.Input<Map<String, dynamic>> everyone;
  final pulumi.Input<GetZeroTrustAccessGroupIsDefaultExternalEvaluation> externalEvaluation;
  final pulumi.Input<GetZeroTrustAccessGroupIsDefaultGeo> geo;
  final pulumi.Input<GetZeroTrustAccessGroupIsDefaultGithubOrganization> githubOrganization;
  final pulumi.Input<GetZeroTrustAccessGroupIsDefaultGroup> group;
  final pulumi.Input<GetZeroTrustAccessGroupIsDefaultGsuite> gsuite;
  final pulumi.Input<GetZeroTrustAccessGroupIsDefaultIp> ip;
  final pulumi.Input<GetZeroTrustAccessGroupIsDefaultIpList> ipList;
  final pulumi.Input<GetZeroTrustAccessGroupIsDefaultLinkedAppToken> linkedAppToken;
  final pulumi.Input<GetZeroTrustAccessGroupIsDefaultLoginMethod> loginMethod;
  final pulumi.Input<GetZeroTrustAccessGroupIsDefaultOidc> oidc;
  final pulumi.Input<GetZeroTrustAccessGroupIsDefaultOkta> okta;
  final pulumi.Input<GetZeroTrustAccessGroupIsDefaultSaml> saml;
  final pulumi.Input<GetZeroTrustAccessGroupIsDefaultServiceToken> serviceToken;
  final pulumi.Input<GetZeroTrustAccessGroupIsDefaultUserRiskScore> userRiskScore;

  /// Creates a new [GetZeroTrustAccessGroupIsDefault].
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
  const GetZeroTrustAccessGroupIsDefault({
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
      'authContext': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupIsDefaultAuthContext, Map<String, dynamic>>(authContext, (value) => value.toMap()),
      'authMethod': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupIsDefaultAuthMethod, Map<String, dynamic>>(authMethod, (value) => value.toMap()),
      'azureAd': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupIsDefaultAzureAd, Map<String, dynamic>>(azureAd, (value) => value.toMap()),
      'certificate': certificate,
      'cloudflareAccountMember': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupIsDefaultCloudflareAccountMember, Map<String, dynamic>>(cloudflareAccountMember, (value) => value.toMap()),
      'commonName': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupIsDefaultCommonName, Map<String, dynamic>>(commonName, (value) => value.toMap()),
      'devicePosture': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupIsDefaultDevicePosture, Map<String, dynamic>>(devicePosture, (value) => value.toMap()),
      'email': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupIsDefaultEmail, Map<String, dynamic>>(email, (value) => value.toMap()),
      'emailDomain': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupIsDefaultEmailDomain, Map<String, dynamic>>(emailDomain, (value) => value.toMap()),
      'emailList': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupIsDefaultEmailList, Map<String, dynamic>>(emailList, (value) => value.toMap()),
      'everyone': everyone,
      'externalEvaluation': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupIsDefaultExternalEvaluation, Map<String, dynamic>>(externalEvaluation, (value) => value.toMap()),
      'geo': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupIsDefaultGeo, Map<String, dynamic>>(geo, (value) => value.toMap()),
      'githubOrganization': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupIsDefaultGithubOrganization, Map<String, dynamic>>(githubOrganization, (value) => value.toMap()),
      'group': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupIsDefaultGroup, Map<String, dynamic>>(group, (value) => value.toMap()),
      'gsuite': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupIsDefaultGsuite, Map<String, dynamic>>(gsuite, (value) => value.toMap()),
      'ip': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupIsDefaultIp, Map<String, dynamic>>(ip, (value) => value.toMap()),
      'ipList': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupIsDefaultIpList, Map<String, dynamic>>(ipList, (value) => value.toMap()),
      'linkedAppToken': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupIsDefaultLinkedAppToken, Map<String, dynamic>>(linkedAppToken, (value) => value.toMap()),
      'loginMethod': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupIsDefaultLoginMethod, Map<String, dynamic>>(loginMethod, (value) => value.toMap()),
      'oidc': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupIsDefaultOidc, Map<String, dynamic>>(oidc, (value) => value.toMap()),
      'okta': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupIsDefaultOkta, Map<String, dynamic>>(okta, (value) => value.toMap()),
      'saml': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupIsDefaultSaml, Map<String, dynamic>>(saml, (value) => value.toMap()),
      'serviceToken': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupIsDefaultServiceToken, Map<String, dynamic>>(serviceToken, (value) => value.toMap()),
      'userRiskScore': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupIsDefaultUserRiskScore, Map<String, dynamic>>(userRiskScore, (value) => value.toMap()),
    };
  }

  factory GetZeroTrustAccessGroupIsDefault.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessGroupIsDefault(
      anyValidServiceToken: pulumi.Input.fromValue((map['anyValidServiceToken']! as Map).cast<String, dynamic>()),
      authContext: pulumi.Input.fromValue(GetZeroTrustAccessGroupIsDefaultAuthContext.fromMap((map['authContext']! as Map).cast<String, dynamic>())),
      authMethod: pulumi.Input.fromValue(GetZeroTrustAccessGroupIsDefaultAuthMethod.fromMap((map['authMethod']! as Map).cast<String, dynamic>())),
      azureAd: pulumi.Input.fromValue(GetZeroTrustAccessGroupIsDefaultAzureAd.fromMap((map['azureAd']! as Map).cast<String, dynamic>())),
      certificate: pulumi.Input.fromValue((map['certificate']! as Map).cast<String, dynamic>()),
      cloudflareAccountMember: pulumi.Input.fromValue(GetZeroTrustAccessGroupIsDefaultCloudflareAccountMember.fromMap((map['cloudflareAccountMember']! as Map).cast<String, dynamic>())),
      commonName: pulumi.Input.fromValue(GetZeroTrustAccessGroupIsDefaultCommonName.fromMap((map['commonName']! as Map).cast<String, dynamic>())),
      devicePosture: pulumi.Input.fromValue(GetZeroTrustAccessGroupIsDefaultDevicePosture.fromMap((map['devicePosture']! as Map).cast<String, dynamic>())),
      email: pulumi.Input.fromValue(GetZeroTrustAccessGroupIsDefaultEmail.fromMap((map['email']! as Map).cast<String, dynamic>())),
      emailDomain: pulumi.Input.fromValue(GetZeroTrustAccessGroupIsDefaultEmailDomain.fromMap((map['emailDomain']! as Map).cast<String, dynamic>())),
      emailList: pulumi.Input.fromValue(GetZeroTrustAccessGroupIsDefaultEmailList.fromMap((map['emailList']! as Map).cast<String, dynamic>())),
      everyone: pulumi.Input.fromValue((map['everyone']! as Map).cast<String, dynamic>()),
      externalEvaluation: pulumi.Input.fromValue(GetZeroTrustAccessGroupIsDefaultExternalEvaluation.fromMap((map['externalEvaluation']! as Map).cast<String, dynamic>())),
      geo: pulumi.Input.fromValue(GetZeroTrustAccessGroupIsDefaultGeo.fromMap((map['geo']! as Map).cast<String, dynamic>())),
      githubOrganization: pulumi.Input.fromValue(GetZeroTrustAccessGroupIsDefaultGithubOrganization.fromMap((map['githubOrganization']! as Map).cast<String, dynamic>())),
      group: pulumi.Input.fromValue(GetZeroTrustAccessGroupIsDefaultGroup.fromMap((map['group']! as Map).cast<String, dynamic>())),
      gsuite: pulumi.Input.fromValue(GetZeroTrustAccessGroupIsDefaultGsuite.fromMap((map['gsuite']! as Map).cast<String, dynamic>())),
      ip: pulumi.Input.fromValue(GetZeroTrustAccessGroupIsDefaultIp.fromMap((map['ip']! as Map).cast<String, dynamic>())),
      ipList: pulumi.Input.fromValue(GetZeroTrustAccessGroupIsDefaultIpList.fromMap((map['ipList']! as Map).cast<String, dynamic>())),
      linkedAppToken: pulumi.Input.fromValue(GetZeroTrustAccessGroupIsDefaultLinkedAppToken.fromMap((map['linkedAppToken']! as Map).cast<String, dynamic>())),
      loginMethod: pulumi.Input.fromValue(GetZeroTrustAccessGroupIsDefaultLoginMethod.fromMap((map['loginMethod']! as Map).cast<String, dynamic>())),
      oidc: pulumi.Input.fromValue(GetZeroTrustAccessGroupIsDefaultOidc.fromMap((map['oidc']! as Map).cast<String, dynamic>())),
      okta: pulumi.Input.fromValue(GetZeroTrustAccessGroupIsDefaultOkta.fromMap((map['okta']! as Map).cast<String, dynamic>())),
      saml: pulumi.Input.fromValue(GetZeroTrustAccessGroupIsDefaultSaml.fromMap((map['saml']! as Map).cast<String, dynamic>())),
      serviceToken: pulumi.Input.fromValue(GetZeroTrustAccessGroupIsDefaultServiceToken.fromMap((map['serviceToken']! as Map).cast<String, dynamic>())),
      userRiskScore: pulumi.Input.fromValue(GetZeroTrustAccessGroupIsDefaultUserRiskScore.fromMap((map['userRiskScore']! as Map).cast<String, dynamic>())),
    );
  }
}
