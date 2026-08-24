// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_access_policy_exclude_auth_context.dart';
import 'zero_trust_access_policy_exclude_auth_method.dart';
import 'zero_trust_access_policy_exclude_azure_ad.dart';
import 'zero_trust_access_policy_exclude_cloudflare_account_member.dart';
import 'zero_trust_access_policy_exclude_common_name.dart';
import 'zero_trust_access_policy_exclude_device_posture.dart';
import 'zero_trust_access_policy_exclude_email.dart';
import 'zero_trust_access_policy_exclude_email_domain.dart';
import 'zero_trust_access_policy_exclude_email_list.dart';
import 'zero_trust_access_policy_exclude_external_evaluation.dart';
import 'zero_trust_access_policy_exclude_geo.dart';
import 'zero_trust_access_policy_exclude_github_organization.dart';
import 'zero_trust_access_policy_exclude_group.dart';
import 'zero_trust_access_policy_exclude_gsuite.dart';
import 'zero_trust_access_policy_exclude_ip.dart';
import 'zero_trust_access_policy_exclude_ip_list.dart';
import 'zero_trust_access_policy_exclude_linked_app_token.dart';
import 'zero_trust_access_policy_exclude_login_method.dart';
import 'zero_trust_access_policy_exclude_oidc.dart';
import 'zero_trust_access_policy_exclude_okta.dart';
import 'zero_trust_access_policy_exclude_saml.dart';
import 'zero_trust_access_policy_exclude_service_token.dart';
import 'zero_trust_access_policy_exclude_user_risk_score.dart';

class ZeroTrustAccessPolicyExclude {
  /// An empty object which matches on all service tokens.
  final pulumi.Input<Map<String, dynamic>?>? anyValidServiceToken;
  final pulumi.Input<ZeroTrustAccessPolicyExcludeAuthContext?>? authContext;
  final pulumi.Input<ZeroTrustAccessPolicyExcludeAuthMethod?>? authMethod;
  final pulumi.Input<ZeroTrustAccessPolicyExcludeAzureAd?>? azureAd;
  final pulumi.Input<Map<String, dynamic>?>? certificate;
  final pulumi.Input<ZeroTrustAccessPolicyExcludeCloudflareAccountMember?>? cloudflareAccountMember;
  final pulumi.Input<ZeroTrustAccessPolicyExcludeCommonName?>? commonName;
  final pulumi.Input<ZeroTrustAccessPolicyExcludeDevicePosture?>? devicePosture;
  final pulumi.Input<ZeroTrustAccessPolicyExcludeEmail?>? email;
  final pulumi.Input<ZeroTrustAccessPolicyExcludeEmailDomain?>? emailDomain;
  final pulumi.Input<ZeroTrustAccessPolicyExcludeEmailList?>? emailList;
  /// An empty object which matches on all users.
  final pulumi.Input<Map<String, dynamic>?>? everyone;
  final pulumi.Input<ZeroTrustAccessPolicyExcludeExternalEvaluation?>? externalEvaluation;
  final pulumi.Input<ZeroTrustAccessPolicyExcludeGeo?>? geo;
  final pulumi.Input<ZeroTrustAccessPolicyExcludeGithubOrganization?>? githubOrganization;
  final pulumi.Input<ZeroTrustAccessPolicyExcludeGroup?>? group;
  final pulumi.Input<ZeroTrustAccessPolicyExcludeGsuite?>? gsuite;
  final pulumi.Input<ZeroTrustAccessPolicyExcludeIp?>? ip;
  final pulumi.Input<ZeroTrustAccessPolicyExcludeIpList?>? ipList;
  final pulumi.Input<ZeroTrustAccessPolicyExcludeLinkedAppToken?>? linkedAppToken;
  final pulumi.Input<ZeroTrustAccessPolicyExcludeLoginMethod?>? loginMethod;
  final pulumi.Input<ZeroTrustAccessPolicyExcludeOidc?>? oidc;
  final pulumi.Input<ZeroTrustAccessPolicyExcludeOkta?>? okta;
  final pulumi.Input<ZeroTrustAccessPolicyExcludeSaml?>? saml;
  final pulumi.Input<ZeroTrustAccessPolicyExcludeServiceToken?>? serviceToken;
  final pulumi.Input<ZeroTrustAccessPolicyExcludeUserRiskScore?>? userRiskScore;

  /// Creates a new [ZeroTrustAccessPolicyExclude].
  /// [anyValidServiceToken] An empty object which matches on all service tokens.
  /// [authContext] Optional.
  /// [authMethod] Optional.
  /// [azureAd] Optional.
  /// [certificate] Optional.
  /// [cloudflareAccountMember] Optional.
  /// [commonName] Optional.
  /// [devicePosture] Optional.
  /// [email] Optional.
  /// [emailDomain] Optional.
  /// [emailList] Optional.
  /// [everyone] An empty object which matches on all users.
  /// [externalEvaluation] Optional.
  /// [geo] Optional.
  /// [githubOrganization] Optional.
  /// [group] Optional.
  /// [gsuite] Optional.
  /// [ip] Optional.
  /// [ipList] Optional.
  /// [linkedAppToken] Optional.
  /// [loginMethod] Optional.
  /// [oidc] Optional.
  /// [okta] Optional.
  /// [saml] Optional.
  /// [serviceToken] Optional.
  /// [userRiskScore] Optional.
  const ZeroTrustAccessPolicyExclude({
    this.anyValidServiceToken,
    this.authContext,
    this.authMethod,
    this.azureAd,
    this.certificate,
    this.cloudflareAccountMember,
    this.commonName,
    this.devicePosture,
    this.email,
    this.emailDomain,
    this.emailList,
    this.everyone,
    this.externalEvaluation,
    this.geo,
    this.githubOrganization,
    this.group,
    this.gsuite,
    this.ip,
    this.ipList,
    this.linkedAppToken,
    this.loginMethod,
    this.oidc,
    this.okta,
    this.saml,
    this.serviceToken,
    this.userRiskScore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'anyValidServiceToken': ?anyValidServiceToken,
      'authContext': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessPolicyExcludeAuthContext, Map<String, dynamic>>(authContext, (value) => value.toMap()),
      'authMethod': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessPolicyExcludeAuthMethod, Map<String, dynamic>>(authMethod, (value) => value.toMap()),
      'azureAd': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessPolicyExcludeAzureAd, Map<String, dynamic>>(azureAd, (value) => value.toMap()),
      'certificate': ?certificate,
      'cloudflareAccountMember': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessPolicyExcludeCloudflareAccountMember, Map<String, dynamic>>(cloudflareAccountMember, (value) => value.toMap()),
      'commonName': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessPolicyExcludeCommonName, Map<String, dynamic>>(commonName, (value) => value.toMap()),
      'devicePosture': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessPolicyExcludeDevicePosture, Map<String, dynamic>>(devicePosture, (value) => value.toMap()),
      'email': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessPolicyExcludeEmail, Map<String, dynamic>>(email, (value) => value.toMap()),
      'emailDomain': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessPolicyExcludeEmailDomain, Map<String, dynamic>>(emailDomain, (value) => value.toMap()),
      'emailList': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessPolicyExcludeEmailList, Map<String, dynamic>>(emailList, (value) => value.toMap()),
      'everyone': ?everyone,
      'externalEvaluation': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessPolicyExcludeExternalEvaluation, Map<String, dynamic>>(externalEvaluation, (value) => value.toMap()),
      'geo': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessPolicyExcludeGeo, Map<String, dynamic>>(geo, (value) => value.toMap()),
      'githubOrganization': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessPolicyExcludeGithubOrganization, Map<String, dynamic>>(githubOrganization, (value) => value.toMap()),
      'group': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessPolicyExcludeGroup, Map<String, dynamic>>(group, (value) => value.toMap()),
      'gsuite': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessPolicyExcludeGsuite, Map<String, dynamic>>(gsuite, (value) => value.toMap()),
      'ip': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessPolicyExcludeIp, Map<String, dynamic>>(ip, (value) => value.toMap()),
      'ipList': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessPolicyExcludeIpList, Map<String, dynamic>>(ipList, (value) => value.toMap()),
      'linkedAppToken': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessPolicyExcludeLinkedAppToken, Map<String, dynamic>>(linkedAppToken, (value) => value.toMap()),
      'loginMethod': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessPolicyExcludeLoginMethod, Map<String, dynamic>>(loginMethod, (value) => value.toMap()),
      'oidc': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessPolicyExcludeOidc, Map<String, dynamic>>(oidc, (value) => value.toMap()),
      'okta': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessPolicyExcludeOkta, Map<String, dynamic>>(okta, (value) => value.toMap()),
      'saml': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessPolicyExcludeSaml, Map<String, dynamic>>(saml, (value) => value.toMap()),
      'serviceToken': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessPolicyExcludeServiceToken, Map<String, dynamic>>(serviceToken, (value) => value.toMap()),
      'userRiskScore': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessPolicyExcludeUserRiskScore, Map<String, dynamic>>(userRiskScore, (value) => value.toMap()),
    };
  }

  factory ZeroTrustAccessPolicyExclude.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessPolicyExclude(
      anyValidServiceToken: (() { final guardedValue = map['anyValidServiceToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      authContext: (() { final guardedValue = map['authContext']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessPolicyExcludeAuthContext.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      authMethod: (() { final guardedValue = map['authMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessPolicyExcludeAuthMethod.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      azureAd: (() { final guardedValue = map['azureAd']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessPolicyExcludeAzureAd.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      certificate: (() { final guardedValue = map['certificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      cloudflareAccountMember: (() { final guardedValue = map['cloudflareAccountMember']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessPolicyExcludeCloudflareAccountMember.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      commonName: (() { final guardedValue = map['commonName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessPolicyExcludeCommonName.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      devicePosture: (() { final guardedValue = map['devicePosture']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessPolicyExcludeDevicePosture.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessPolicyExcludeEmail.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      emailDomain: (() { final guardedValue = map['emailDomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessPolicyExcludeEmailDomain.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      emailList: (() { final guardedValue = map['emailList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessPolicyExcludeEmailList.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      everyone: (() { final guardedValue = map['everyone']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      externalEvaluation: (() { final guardedValue = map['externalEvaluation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessPolicyExcludeExternalEvaluation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      geo: (() { final guardedValue = map['geo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessPolicyExcludeGeo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      githubOrganization: (() { final guardedValue = map['githubOrganization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessPolicyExcludeGithubOrganization.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      group: (() { final guardedValue = map['group']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessPolicyExcludeGroup.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gsuite: (() { final guardedValue = map['gsuite']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessPolicyExcludeGsuite.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ip: (() { final guardedValue = map['ip']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessPolicyExcludeIp.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ipList: (() { final guardedValue = map['ipList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessPolicyExcludeIpList.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      linkedAppToken: (() { final guardedValue = map['linkedAppToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessPolicyExcludeLinkedAppToken.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      loginMethod: (() { final guardedValue = map['loginMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessPolicyExcludeLoginMethod.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      oidc: (() { final guardedValue = map['oidc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessPolicyExcludeOidc.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      okta: (() { final guardedValue = map['okta']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessPolicyExcludeOkta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      saml: (() { final guardedValue = map['saml']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessPolicyExcludeSaml.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceToken: (() { final guardedValue = map['serviceToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessPolicyExcludeServiceToken.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      userRiskScore: (() { final guardedValue = map['userRiskScore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessPolicyExcludeUserRiskScore.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
