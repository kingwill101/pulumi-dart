// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_access_policy_require_auth_context.dart';
import 'zero_trust_access_policy_require_auth_method.dart';
import 'zero_trust_access_policy_require_azure_ad.dart';
import 'zero_trust_access_policy_require_cloudflare_account_member.dart';
import 'zero_trust_access_policy_require_common_name.dart';
import 'zero_trust_access_policy_require_device_posture.dart';
import 'zero_trust_access_policy_require_email.dart';
import 'zero_trust_access_policy_require_email_domain.dart';
import 'zero_trust_access_policy_require_email_list.dart';
import 'zero_trust_access_policy_require_external_evaluation.dart';
import 'zero_trust_access_policy_require_geo.dart';
import 'zero_trust_access_policy_require_github_organization.dart';
import 'zero_trust_access_policy_require_group.dart';
import 'zero_trust_access_policy_require_gsuite.dart';
import 'zero_trust_access_policy_require_ip.dart';
import 'zero_trust_access_policy_require_ip_list.dart';
import 'zero_trust_access_policy_require_linked_app_token.dart';
import 'zero_trust_access_policy_require_login_method.dart';
import 'zero_trust_access_policy_require_oidc.dart';
import 'zero_trust_access_policy_require_okta.dart';
import 'zero_trust_access_policy_require_saml.dart';
import 'zero_trust_access_policy_require_service_token.dart';
import 'zero_trust_access_policy_require_user_risk_score.dart';

class ZeroTrustAccessPolicyRequire {
  /// An empty object which matches on all service tokens.
  final pulumi.Input<Map<String, dynamic>?>? anyValidServiceToken;
  final pulumi.Input<ZeroTrustAccessPolicyRequireAuthContext?>? authContext;
  final pulumi.Input<ZeroTrustAccessPolicyRequireAuthMethod?>? authMethod;
  final pulumi.Input<ZeroTrustAccessPolicyRequireAzureAd?>? azureAd;
  final pulumi.Input<Map<String, dynamic>?>? certificate;
  final pulumi.Input<ZeroTrustAccessPolicyRequireCloudflareAccountMember?>? cloudflareAccountMember;
  final pulumi.Input<ZeroTrustAccessPolicyRequireCommonName?>? commonName;
  final pulumi.Input<ZeroTrustAccessPolicyRequireDevicePosture?>? devicePosture;
  final pulumi.Input<ZeroTrustAccessPolicyRequireEmail?>? email;
  final pulumi.Input<ZeroTrustAccessPolicyRequireEmailDomain?>? emailDomain;
  final pulumi.Input<ZeroTrustAccessPolicyRequireEmailList?>? emailList;
  /// An empty object which matches on all users.
  final pulumi.Input<Map<String, dynamic>?>? everyone;
  final pulumi.Input<ZeroTrustAccessPolicyRequireExternalEvaluation?>? externalEvaluation;
  final pulumi.Input<ZeroTrustAccessPolicyRequireGeo?>? geo;
  final pulumi.Input<ZeroTrustAccessPolicyRequireGithubOrganization?>? githubOrganization;
  final pulumi.Input<ZeroTrustAccessPolicyRequireGroup?>? group;
  final pulumi.Input<ZeroTrustAccessPolicyRequireGsuite?>? gsuite;
  final pulumi.Input<ZeroTrustAccessPolicyRequireIp?>? ip;
  final pulumi.Input<ZeroTrustAccessPolicyRequireIpList?>? ipList;
  final pulumi.Input<ZeroTrustAccessPolicyRequireLinkedAppToken?>? linkedAppToken;
  final pulumi.Input<ZeroTrustAccessPolicyRequireLoginMethod?>? loginMethod;
  final pulumi.Input<ZeroTrustAccessPolicyRequireOidc?>? oidc;
  final pulumi.Input<ZeroTrustAccessPolicyRequireOkta?>? okta;
  final pulumi.Input<ZeroTrustAccessPolicyRequireSaml?>? saml;
  final pulumi.Input<ZeroTrustAccessPolicyRequireServiceToken?>? serviceToken;
  final pulumi.Input<ZeroTrustAccessPolicyRequireUserRiskScore?>? userRiskScore;

  /// Creates a new [ZeroTrustAccessPolicyRequire].
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
  const ZeroTrustAccessPolicyRequire({
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
      'authContext': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessPolicyRequireAuthContext, Map<String, dynamic>>(authContext, (value) => value.toMap()),
      'authMethod': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessPolicyRequireAuthMethod, Map<String, dynamic>>(authMethod, (value) => value.toMap()),
      'azureAd': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessPolicyRequireAzureAd, Map<String, dynamic>>(azureAd, (value) => value.toMap()),
      'certificate': ?certificate,
      'cloudflareAccountMember': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessPolicyRequireCloudflareAccountMember, Map<String, dynamic>>(cloudflareAccountMember, (value) => value.toMap()),
      'commonName': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessPolicyRequireCommonName, Map<String, dynamic>>(commonName, (value) => value.toMap()),
      'devicePosture': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessPolicyRequireDevicePosture, Map<String, dynamic>>(devicePosture, (value) => value.toMap()),
      'email': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessPolicyRequireEmail, Map<String, dynamic>>(email, (value) => value.toMap()),
      'emailDomain': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessPolicyRequireEmailDomain, Map<String, dynamic>>(emailDomain, (value) => value.toMap()),
      'emailList': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessPolicyRequireEmailList, Map<String, dynamic>>(emailList, (value) => value.toMap()),
      'everyone': ?everyone,
      'externalEvaluation': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessPolicyRequireExternalEvaluation, Map<String, dynamic>>(externalEvaluation, (value) => value.toMap()),
      'geo': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessPolicyRequireGeo, Map<String, dynamic>>(geo, (value) => value.toMap()),
      'githubOrganization': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessPolicyRequireGithubOrganization, Map<String, dynamic>>(githubOrganization, (value) => value.toMap()),
      'group': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessPolicyRequireGroup, Map<String, dynamic>>(group, (value) => value.toMap()),
      'gsuite': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessPolicyRequireGsuite, Map<String, dynamic>>(gsuite, (value) => value.toMap()),
      'ip': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessPolicyRequireIp, Map<String, dynamic>>(ip, (value) => value.toMap()),
      'ipList': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessPolicyRequireIpList, Map<String, dynamic>>(ipList, (value) => value.toMap()),
      'linkedAppToken': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessPolicyRequireLinkedAppToken, Map<String, dynamic>>(linkedAppToken, (value) => value.toMap()),
      'loginMethod': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessPolicyRequireLoginMethod, Map<String, dynamic>>(loginMethod, (value) => value.toMap()),
      'oidc': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessPolicyRequireOidc, Map<String, dynamic>>(oidc, (value) => value.toMap()),
      'okta': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessPolicyRequireOkta, Map<String, dynamic>>(okta, (value) => value.toMap()),
      'saml': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessPolicyRequireSaml, Map<String, dynamic>>(saml, (value) => value.toMap()),
      'serviceToken': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessPolicyRequireServiceToken, Map<String, dynamic>>(serviceToken, (value) => value.toMap()),
      'userRiskScore': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessPolicyRequireUserRiskScore, Map<String, dynamic>>(userRiskScore, (value) => value.toMap()),
    };
  }

  factory ZeroTrustAccessPolicyRequire.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessPolicyRequire(
      anyValidServiceToken: (() { final guardedValue = map['anyValidServiceToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      authContext: (() { final guardedValue = map['authContext']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessPolicyRequireAuthContext.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      authMethod: (() { final guardedValue = map['authMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessPolicyRequireAuthMethod.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      azureAd: (() { final guardedValue = map['azureAd']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessPolicyRequireAzureAd.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      certificate: (() { final guardedValue = map['certificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      cloudflareAccountMember: (() { final guardedValue = map['cloudflareAccountMember']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessPolicyRequireCloudflareAccountMember.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      commonName: (() { final guardedValue = map['commonName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessPolicyRequireCommonName.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      devicePosture: (() { final guardedValue = map['devicePosture']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessPolicyRequireDevicePosture.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessPolicyRequireEmail.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      emailDomain: (() { final guardedValue = map['emailDomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessPolicyRequireEmailDomain.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      emailList: (() { final guardedValue = map['emailList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessPolicyRequireEmailList.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      everyone: (() { final guardedValue = map['everyone']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      externalEvaluation: (() { final guardedValue = map['externalEvaluation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessPolicyRequireExternalEvaluation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      geo: (() { final guardedValue = map['geo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessPolicyRequireGeo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      githubOrganization: (() { final guardedValue = map['githubOrganization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessPolicyRequireGithubOrganization.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      group: (() { final guardedValue = map['group']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessPolicyRequireGroup.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gsuite: (() { final guardedValue = map['gsuite']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessPolicyRequireGsuite.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ip: (() { final guardedValue = map['ip']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessPolicyRequireIp.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ipList: (() { final guardedValue = map['ipList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessPolicyRequireIpList.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      linkedAppToken: (() { final guardedValue = map['linkedAppToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessPolicyRequireLinkedAppToken.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      loginMethod: (() { final guardedValue = map['loginMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessPolicyRequireLoginMethod.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      oidc: (() { final guardedValue = map['oidc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessPolicyRequireOidc.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      okta: (() { final guardedValue = map['okta']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessPolicyRequireOkta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      saml: (() { final guardedValue = map['saml']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessPolicyRequireSaml.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceToken: (() { final guardedValue = map['serviceToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessPolicyRequireServiceToken.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      userRiskScore: (() { final guardedValue = map['userRiskScore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessPolicyRequireUserRiskScore.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
