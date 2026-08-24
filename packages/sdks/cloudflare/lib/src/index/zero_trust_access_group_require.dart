// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_access_group_require_auth_context.dart';
import 'zero_trust_access_group_require_auth_method.dart';
import 'zero_trust_access_group_require_azure_ad.dart';
import 'zero_trust_access_group_require_cloudflare_account_member.dart';
import 'zero_trust_access_group_require_common_name.dart';
import 'zero_trust_access_group_require_device_posture.dart';
import 'zero_trust_access_group_require_email.dart';
import 'zero_trust_access_group_require_email_domain.dart';
import 'zero_trust_access_group_require_email_list.dart';
import 'zero_trust_access_group_require_external_evaluation.dart';
import 'zero_trust_access_group_require_geo.dart';
import 'zero_trust_access_group_require_github_organization.dart';
import 'zero_trust_access_group_require_group.dart';
import 'zero_trust_access_group_require_gsuite.dart';
import 'zero_trust_access_group_require_ip.dart';
import 'zero_trust_access_group_require_ip_list.dart';
import 'zero_trust_access_group_require_linked_app_token.dart';
import 'zero_trust_access_group_require_login_method.dart';
import 'zero_trust_access_group_require_oidc.dart';
import 'zero_trust_access_group_require_okta.dart';
import 'zero_trust_access_group_require_saml.dart';
import 'zero_trust_access_group_require_service_token.dart';
import 'zero_trust_access_group_require_user_risk_score.dart';

class ZeroTrustAccessGroupRequire {
  /// An empty object which matches on all service tokens.
  final pulumi.Input<Map<String, dynamic>?>? anyValidServiceToken;
  final pulumi.Input<ZeroTrustAccessGroupRequireAuthContext?>? authContext;
  final pulumi.Input<ZeroTrustAccessGroupRequireAuthMethod?>? authMethod;
  final pulumi.Input<ZeroTrustAccessGroupRequireAzureAd?>? azureAd;
  final pulumi.Input<Map<String, dynamic>?>? certificate;
  final pulumi.Input<ZeroTrustAccessGroupRequireCloudflareAccountMember?>? cloudflareAccountMember;
  final pulumi.Input<ZeroTrustAccessGroupRequireCommonName?>? commonName;
  final pulumi.Input<ZeroTrustAccessGroupRequireDevicePosture?>? devicePosture;
  final pulumi.Input<ZeroTrustAccessGroupRequireEmail?>? email;
  final pulumi.Input<ZeroTrustAccessGroupRequireEmailDomain?>? emailDomain;
  final pulumi.Input<ZeroTrustAccessGroupRequireEmailList?>? emailList;
  /// An empty object which matches on all users.
  final pulumi.Input<Map<String, dynamic>?>? everyone;
  final pulumi.Input<ZeroTrustAccessGroupRequireExternalEvaluation?>? externalEvaluation;
  final pulumi.Input<ZeroTrustAccessGroupRequireGeo?>? geo;
  final pulumi.Input<ZeroTrustAccessGroupRequireGithubOrganization?>? githubOrganization;
  final pulumi.Input<ZeroTrustAccessGroupRequireGroup?>? group;
  final pulumi.Input<ZeroTrustAccessGroupRequireGsuite?>? gsuite;
  final pulumi.Input<ZeroTrustAccessGroupRequireIp?>? ip;
  final pulumi.Input<ZeroTrustAccessGroupRequireIpList?>? ipList;
  final pulumi.Input<ZeroTrustAccessGroupRequireLinkedAppToken?>? linkedAppToken;
  final pulumi.Input<ZeroTrustAccessGroupRequireLoginMethod?>? loginMethod;
  final pulumi.Input<ZeroTrustAccessGroupRequireOidc?>? oidc;
  final pulumi.Input<ZeroTrustAccessGroupRequireOkta?>? okta;
  final pulumi.Input<ZeroTrustAccessGroupRequireSaml?>? saml;
  final pulumi.Input<ZeroTrustAccessGroupRequireServiceToken?>? serviceToken;
  final pulumi.Input<ZeroTrustAccessGroupRequireUserRiskScore?>? userRiskScore;

  /// Creates a new [ZeroTrustAccessGroupRequire].
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
  const ZeroTrustAccessGroupRequire({
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
      'authContext': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessGroupRequireAuthContext, Map<String, dynamic>>(authContext, (value) => value.toMap()),
      'authMethod': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessGroupRequireAuthMethod, Map<String, dynamic>>(authMethod, (value) => value.toMap()),
      'azureAd': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessGroupRequireAzureAd, Map<String, dynamic>>(azureAd, (value) => value.toMap()),
      'certificate': ?certificate,
      'cloudflareAccountMember': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessGroupRequireCloudflareAccountMember, Map<String, dynamic>>(cloudflareAccountMember, (value) => value.toMap()),
      'commonName': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessGroupRequireCommonName, Map<String, dynamic>>(commonName, (value) => value.toMap()),
      'devicePosture': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessGroupRequireDevicePosture, Map<String, dynamic>>(devicePosture, (value) => value.toMap()),
      'email': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessGroupRequireEmail, Map<String, dynamic>>(email, (value) => value.toMap()),
      'emailDomain': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessGroupRequireEmailDomain, Map<String, dynamic>>(emailDomain, (value) => value.toMap()),
      'emailList': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessGroupRequireEmailList, Map<String, dynamic>>(emailList, (value) => value.toMap()),
      'everyone': ?everyone,
      'externalEvaluation': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessGroupRequireExternalEvaluation, Map<String, dynamic>>(externalEvaluation, (value) => value.toMap()),
      'geo': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessGroupRequireGeo, Map<String, dynamic>>(geo, (value) => value.toMap()),
      'githubOrganization': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessGroupRequireGithubOrganization, Map<String, dynamic>>(githubOrganization, (value) => value.toMap()),
      'group': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessGroupRequireGroup, Map<String, dynamic>>(group, (value) => value.toMap()),
      'gsuite': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessGroupRequireGsuite, Map<String, dynamic>>(gsuite, (value) => value.toMap()),
      'ip': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessGroupRequireIp, Map<String, dynamic>>(ip, (value) => value.toMap()),
      'ipList': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessGroupRequireIpList, Map<String, dynamic>>(ipList, (value) => value.toMap()),
      'linkedAppToken': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessGroupRequireLinkedAppToken, Map<String, dynamic>>(linkedAppToken, (value) => value.toMap()),
      'loginMethod': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessGroupRequireLoginMethod, Map<String, dynamic>>(loginMethod, (value) => value.toMap()),
      'oidc': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessGroupRequireOidc, Map<String, dynamic>>(oidc, (value) => value.toMap()),
      'okta': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessGroupRequireOkta, Map<String, dynamic>>(okta, (value) => value.toMap()),
      'saml': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessGroupRequireSaml, Map<String, dynamic>>(saml, (value) => value.toMap()),
      'serviceToken': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessGroupRequireServiceToken, Map<String, dynamic>>(serviceToken, (value) => value.toMap()),
      'userRiskScore': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessGroupRequireUserRiskScore, Map<String, dynamic>>(userRiskScore, (value) => value.toMap()),
    };
  }

  factory ZeroTrustAccessGroupRequire.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessGroupRequire(
      anyValidServiceToken: (() { final guardedValue = map['anyValidServiceToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      authContext: (() { final guardedValue = map['authContext']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessGroupRequireAuthContext.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      authMethod: (() { final guardedValue = map['authMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessGroupRequireAuthMethod.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      azureAd: (() { final guardedValue = map['azureAd']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessGroupRequireAzureAd.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      certificate: (() { final guardedValue = map['certificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      cloudflareAccountMember: (() { final guardedValue = map['cloudflareAccountMember']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessGroupRequireCloudflareAccountMember.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      commonName: (() { final guardedValue = map['commonName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessGroupRequireCommonName.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      devicePosture: (() { final guardedValue = map['devicePosture']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessGroupRequireDevicePosture.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessGroupRequireEmail.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      emailDomain: (() { final guardedValue = map['emailDomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessGroupRequireEmailDomain.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      emailList: (() { final guardedValue = map['emailList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessGroupRequireEmailList.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      everyone: (() { final guardedValue = map['everyone']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      externalEvaluation: (() { final guardedValue = map['externalEvaluation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessGroupRequireExternalEvaluation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      geo: (() { final guardedValue = map['geo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessGroupRequireGeo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      githubOrganization: (() { final guardedValue = map['githubOrganization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessGroupRequireGithubOrganization.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      group: (() { final guardedValue = map['group']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessGroupRequireGroup.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gsuite: (() { final guardedValue = map['gsuite']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessGroupRequireGsuite.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ip: (() { final guardedValue = map['ip']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessGroupRequireIp.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ipList: (() { final guardedValue = map['ipList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessGroupRequireIpList.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      linkedAppToken: (() { final guardedValue = map['linkedAppToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessGroupRequireLinkedAppToken.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      loginMethod: (() { final guardedValue = map['loginMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessGroupRequireLoginMethod.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      oidc: (() { final guardedValue = map['oidc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessGroupRequireOidc.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      okta: (() { final guardedValue = map['okta']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessGroupRequireOkta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      saml: (() { final guardedValue = map['saml']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessGroupRequireSaml.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceToken: (() { final guardedValue = map['serviceToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessGroupRequireServiceToken.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      userRiskScore: (() { final guardedValue = map['userRiskScore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessGroupRequireUserRiskScore.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
