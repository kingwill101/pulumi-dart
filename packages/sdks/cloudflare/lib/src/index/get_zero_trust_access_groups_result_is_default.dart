// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_access_groups_result_is_default_auth_context.dart';
import 'get_zero_trust_access_groups_result_is_default_auth_method.dart';
import 'get_zero_trust_access_groups_result_is_default_azure_ad.dart';
import 'get_zero_trust_access_groups_result_is_default_cloudflare_account_member.dart';
import 'get_zero_trust_access_groups_result_is_default_common_name.dart';
import 'get_zero_trust_access_groups_result_is_default_device_posture.dart';
import 'get_zero_trust_access_groups_result_is_default_email.dart';
import 'get_zero_trust_access_groups_result_is_default_email_domain.dart';
import 'get_zero_trust_access_groups_result_is_default_email_list.dart';
import 'get_zero_trust_access_groups_result_is_default_external_evaluation.dart';
import 'get_zero_trust_access_groups_result_is_default_geo.dart';
import 'get_zero_trust_access_groups_result_is_default_github_organization.dart';
import 'get_zero_trust_access_groups_result_is_default_group.dart';
import 'get_zero_trust_access_groups_result_is_default_gsuite.dart';
import 'get_zero_trust_access_groups_result_is_default_ip.dart';
import 'get_zero_trust_access_groups_result_is_default_ip_list.dart';
import 'get_zero_trust_access_groups_result_is_default_linked_app_token.dart';
import 'get_zero_trust_access_groups_result_is_default_login_method.dart';
import 'get_zero_trust_access_groups_result_is_default_oidc.dart';
import 'get_zero_trust_access_groups_result_is_default_okta.dart';
import 'get_zero_trust_access_groups_result_is_default_saml.dart';
import 'get_zero_trust_access_groups_result_is_default_service_token.dart';
import 'get_zero_trust_access_groups_result_is_default_user_risk_score.dart';

class GetZeroTrustAccessGroupsResultIsDefault {
  /// An empty object which matches on all service tokens.
  final pulumi.Input<Map<String, dynamic>> anyValidServiceToken;
  final pulumi.Input<GetZeroTrustAccessGroupsResultIsDefaultAuthContext> authContext;
  final pulumi.Input<GetZeroTrustAccessGroupsResultIsDefaultAuthMethod> authMethod;
  final pulumi.Input<GetZeroTrustAccessGroupsResultIsDefaultAzureAd> azureAd;
  final pulumi.Input<Map<String, dynamic>> certificate;
  final pulumi.Input<GetZeroTrustAccessGroupsResultIsDefaultCloudflareAccountMember> cloudflareAccountMember;
  final pulumi.Input<GetZeroTrustAccessGroupsResultIsDefaultCommonName> commonName;
  final pulumi.Input<GetZeroTrustAccessGroupsResultIsDefaultDevicePosture> devicePosture;
  final pulumi.Input<GetZeroTrustAccessGroupsResultIsDefaultEmail> email;
  final pulumi.Input<GetZeroTrustAccessGroupsResultIsDefaultEmailDomain> emailDomain;
  final pulumi.Input<GetZeroTrustAccessGroupsResultIsDefaultEmailList> emailList;
  /// An empty object which matches on all users.
  final pulumi.Input<Map<String, dynamic>> everyone;
  final pulumi.Input<GetZeroTrustAccessGroupsResultIsDefaultExternalEvaluation> externalEvaluation;
  final pulumi.Input<GetZeroTrustAccessGroupsResultIsDefaultGeo> geo;
  final pulumi.Input<GetZeroTrustAccessGroupsResultIsDefaultGithubOrganization> githubOrganization;
  final pulumi.Input<GetZeroTrustAccessGroupsResultIsDefaultGroup> group;
  final pulumi.Input<GetZeroTrustAccessGroupsResultIsDefaultGsuite> gsuite;
  final pulumi.Input<GetZeroTrustAccessGroupsResultIsDefaultIp> ip;
  final pulumi.Input<GetZeroTrustAccessGroupsResultIsDefaultIpList> ipList;
  final pulumi.Input<GetZeroTrustAccessGroupsResultIsDefaultLinkedAppToken> linkedAppToken;
  final pulumi.Input<GetZeroTrustAccessGroupsResultIsDefaultLoginMethod> loginMethod;
  final pulumi.Input<GetZeroTrustAccessGroupsResultIsDefaultOidc> oidc;
  final pulumi.Input<GetZeroTrustAccessGroupsResultIsDefaultOkta> okta;
  final pulumi.Input<GetZeroTrustAccessGroupsResultIsDefaultSaml> saml;
  final pulumi.Input<GetZeroTrustAccessGroupsResultIsDefaultServiceToken> serviceToken;
  final pulumi.Input<GetZeroTrustAccessGroupsResultIsDefaultUserRiskScore> userRiskScore;

  /// Creates a new [GetZeroTrustAccessGroupsResultIsDefault].
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
  const GetZeroTrustAccessGroupsResultIsDefault({
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
      'authContext': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupsResultIsDefaultAuthContext, Map<String, dynamic>>(authContext, (value) => value.toMap()),
      'authMethod': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupsResultIsDefaultAuthMethod, Map<String, dynamic>>(authMethod, (value) => value.toMap()),
      'azureAd': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupsResultIsDefaultAzureAd, Map<String, dynamic>>(azureAd, (value) => value.toMap()),
      'certificate': certificate,
      'cloudflareAccountMember': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupsResultIsDefaultCloudflareAccountMember, Map<String, dynamic>>(cloudflareAccountMember, (value) => value.toMap()),
      'commonName': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupsResultIsDefaultCommonName, Map<String, dynamic>>(commonName, (value) => value.toMap()),
      'devicePosture': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupsResultIsDefaultDevicePosture, Map<String, dynamic>>(devicePosture, (value) => value.toMap()),
      'email': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupsResultIsDefaultEmail, Map<String, dynamic>>(email, (value) => value.toMap()),
      'emailDomain': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupsResultIsDefaultEmailDomain, Map<String, dynamic>>(emailDomain, (value) => value.toMap()),
      'emailList': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupsResultIsDefaultEmailList, Map<String, dynamic>>(emailList, (value) => value.toMap()),
      'everyone': everyone,
      'externalEvaluation': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupsResultIsDefaultExternalEvaluation, Map<String, dynamic>>(externalEvaluation, (value) => value.toMap()),
      'geo': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupsResultIsDefaultGeo, Map<String, dynamic>>(geo, (value) => value.toMap()),
      'githubOrganization': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupsResultIsDefaultGithubOrganization, Map<String, dynamic>>(githubOrganization, (value) => value.toMap()),
      'group': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupsResultIsDefaultGroup, Map<String, dynamic>>(group, (value) => value.toMap()),
      'gsuite': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupsResultIsDefaultGsuite, Map<String, dynamic>>(gsuite, (value) => value.toMap()),
      'ip': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupsResultIsDefaultIp, Map<String, dynamic>>(ip, (value) => value.toMap()),
      'ipList': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupsResultIsDefaultIpList, Map<String, dynamic>>(ipList, (value) => value.toMap()),
      'linkedAppToken': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupsResultIsDefaultLinkedAppToken, Map<String, dynamic>>(linkedAppToken, (value) => value.toMap()),
      'loginMethod': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupsResultIsDefaultLoginMethod, Map<String, dynamic>>(loginMethod, (value) => value.toMap()),
      'oidc': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupsResultIsDefaultOidc, Map<String, dynamic>>(oidc, (value) => value.toMap()),
      'okta': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupsResultIsDefaultOkta, Map<String, dynamic>>(okta, (value) => value.toMap()),
      'saml': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupsResultIsDefaultSaml, Map<String, dynamic>>(saml, (value) => value.toMap()),
      'serviceToken': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupsResultIsDefaultServiceToken, Map<String, dynamic>>(serviceToken, (value) => value.toMap()),
      'userRiskScore': pulumi.Input.mapInputValue<GetZeroTrustAccessGroupsResultIsDefaultUserRiskScore, Map<String, dynamic>>(userRiskScore, (value) => value.toMap()),
    };
  }

  factory GetZeroTrustAccessGroupsResultIsDefault.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessGroupsResultIsDefault(
      anyValidServiceToken: pulumi.Input.fromValue((map['anyValidServiceToken']! as Map).cast<String, dynamic>()),
      authContext: pulumi.Input.fromValue(GetZeroTrustAccessGroupsResultIsDefaultAuthContext.fromMap((map['authContext']! as Map).cast<String, dynamic>())),
      authMethod: pulumi.Input.fromValue(GetZeroTrustAccessGroupsResultIsDefaultAuthMethod.fromMap((map['authMethod']! as Map).cast<String, dynamic>())),
      azureAd: pulumi.Input.fromValue(GetZeroTrustAccessGroupsResultIsDefaultAzureAd.fromMap((map['azureAd']! as Map).cast<String, dynamic>())),
      certificate: pulumi.Input.fromValue((map['certificate']! as Map).cast<String, dynamic>()),
      cloudflareAccountMember: pulumi.Input.fromValue(GetZeroTrustAccessGroupsResultIsDefaultCloudflareAccountMember.fromMap((map['cloudflareAccountMember']! as Map).cast<String, dynamic>())),
      commonName: pulumi.Input.fromValue(GetZeroTrustAccessGroupsResultIsDefaultCommonName.fromMap((map['commonName']! as Map).cast<String, dynamic>())),
      devicePosture: pulumi.Input.fromValue(GetZeroTrustAccessGroupsResultIsDefaultDevicePosture.fromMap((map['devicePosture']! as Map).cast<String, dynamic>())),
      email: pulumi.Input.fromValue(GetZeroTrustAccessGroupsResultIsDefaultEmail.fromMap((map['email']! as Map).cast<String, dynamic>())),
      emailDomain: pulumi.Input.fromValue(GetZeroTrustAccessGroupsResultIsDefaultEmailDomain.fromMap((map['emailDomain']! as Map).cast<String, dynamic>())),
      emailList: pulumi.Input.fromValue(GetZeroTrustAccessGroupsResultIsDefaultEmailList.fromMap((map['emailList']! as Map).cast<String, dynamic>())),
      everyone: pulumi.Input.fromValue((map['everyone']! as Map).cast<String, dynamic>()),
      externalEvaluation: pulumi.Input.fromValue(GetZeroTrustAccessGroupsResultIsDefaultExternalEvaluation.fromMap((map['externalEvaluation']! as Map).cast<String, dynamic>())),
      geo: pulumi.Input.fromValue(GetZeroTrustAccessGroupsResultIsDefaultGeo.fromMap((map['geo']! as Map).cast<String, dynamic>())),
      githubOrganization: pulumi.Input.fromValue(GetZeroTrustAccessGroupsResultIsDefaultGithubOrganization.fromMap((map['githubOrganization']! as Map).cast<String, dynamic>())),
      group: pulumi.Input.fromValue(GetZeroTrustAccessGroupsResultIsDefaultGroup.fromMap((map['group']! as Map).cast<String, dynamic>())),
      gsuite: pulumi.Input.fromValue(GetZeroTrustAccessGroupsResultIsDefaultGsuite.fromMap((map['gsuite']! as Map).cast<String, dynamic>())),
      ip: pulumi.Input.fromValue(GetZeroTrustAccessGroupsResultIsDefaultIp.fromMap((map['ip']! as Map).cast<String, dynamic>())),
      ipList: pulumi.Input.fromValue(GetZeroTrustAccessGroupsResultIsDefaultIpList.fromMap((map['ipList']! as Map).cast<String, dynamic>())),
      linkedAppToken: pulumi.Input.fromValue(GetZeroTrustAccessGroupsResultIsDefaultLinkedAppToken.fromMap((map['linkedAppToken']! as Map).cast<String, dynamic>())),
      loginMethod: pulumi.Input.fromValue(GetZeroTrustAccessGroupsResultIsDefaultLoginMethod.fromMap((map['loginMethod']! as Map).cast<String, dynamic>())),
      oidc: pulumi.Input.fromValue(GetZeroTrustAccessGroupsResultIsDefaultOidc.fromMap((map['oidc']! as Map).cast<String, dynamic>())),
      okta: pulumi.Input.fromValue(GetZeroTrustAccessGroupsResultIsDefaultOkta.fromMap((map['okta']! as Map).cast<String, dynamic>())),
      saml: pulumi.Input.fromValue(GetZeroTrustAccessGroupsResultIsDefaultSaml.fromMap((map['saml']! as Map).cast<String, dynamic>())),
      serviceToken: pulumi.Input.fromValue(GetZeroTrustAccessGroupsResultIsDefaultServiceToken.fromMap((map['serviceToken']! as Map).cast<String, dynamic>())),
      userRiskScore: pulumi.Input.fromValue(GetZeroTrustAccessGroupsResultIsDefaultUserRiskScore.fromMap((map['userRiskScore']! as Map).cast<String, dynamic>())),
    );
  }
}
