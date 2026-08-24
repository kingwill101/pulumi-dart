// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_policy_exclude_auth_context.dart';
import 'access_policy_exclude_auth_method.dart';
import 'access_policy_exclude_azure_ad.dart';
import 'access_policy_exclude_cloudflare_account_member.dart';
import 'access_policy_exclude_common_name.dart';
import 'access_policy_exclude_device_posture.dart';
import 'access_policy_exclude_email.dart';
import 'access_policy_exclude_email_domain.dart';
import 'access_policy_exclude_email_list.dart';
import 'access_policy_exclude_external_evaluation.dart';
import 'access_policy_exclude_geo.dart';
import 'access_policy_exclude_github_organization.dart';
import 'access_policy_exclude_group.dart';
import 'access_policy_exclude_gsuite.dart';
import 'access_policy_exclude_ip.dart';
import 'access_policy_exclude_ip_list.dart';
import 'access_policy_exclude_linked_app_token.dart';
import 'access_policy_exclude_login_method.dart';
import 'access_policy_exclude_oidc.dart';
import 'access_policy_exclude_okta.dart';
import 'access_policy_exclude_saml.dart';
import 'access_policy_exclude_service_token.dart';
import 'access_policy_exclude_user_risk_score.dart';

class AccessPolicyExclude {
  /// An empty object which matches on all service tokens.
  final pulumi.Input<Map<String, dynamic>?>? anyValidServiceToken;
  final pulumi.Input<AccessPolicyExcludeAuthContext?>? authContext;
  final pulumi.Input<AccessPolicyExcludeAuthMethod?>? authMethod;
  final pulumi.Input<AccessPolicyExcludeAzureAd?>? azureAd;
  final pulumi.Input<Map<String, dynamic>?>? certificate;
  final pulumi.Input<AccessPolicyExcludeCloudflareAccountMember?>? cloudflareAccountMember;
  final pulumi.Input<AccessPolicyExcludeCommonName?>? commonName;
  final pulumi.Input<AccessPolicyExcludeDevicePosture?>? devicePosture;
  final pulumi.Input<AccessPolicyExcludeEmail?>? email;
  final pulumi.Input<AccessPolicyExcludeEmailDomain?>? emailDomain;
  final pulumi.Input<AccessPolicyExcludeEmailList?>? emailList;
  /// An empty object which matches on all users.
  final pulumi.Input<Map<String, dynamic>?>? everyone;
  final pulumi.Input<AccessPolicyExcludeExternalEvaluation?>? externalEvaluation;
  final pulumi.Input<AccessPolicyExcludeGeo?>? geo;
  final pulumi.Input<AccessPolicyExcludeGithubOrganization?>? githubOrganization;
  final pulumi.Input<AccessPolicyExcludeGroup?>? group;
  final pulumi.Input<AccessPolicyExcludeGsuite?>? gsuite;
  final pulumi.Input<AccessPolicyExcludeIp?>? ip;
  final pulumi.Input<AccessPolicyExcludeIpList?>? ipList;
  final pulumi.Input<AccessPolicyExcludeLinkedAppToken?>? linkedAppToken;
  final pulumi.Input<AccessPolicyExcludeLoginMethod?>? loginMethod;
  final pulumi.Input<AccessPolicyExcludeOidc?>? oidc;
  final pulumi.Input<AccessPolicyExcludeOkta?>? okta;
  final pulumi.Input<AccessPolicyExcludeSaml?>? saml;
  final pulumi.Input<AccessPolicyExcludeServiceToken?>? serviceToken;
  final pulumi.Input<AccessPolicyExcludeUserRiskScore?>? userRiskScore;

  /// Creates a new [AccessPolicyExclude].
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
  const AccessPolicyExclude({
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
      'authContext': ?pulumi.Input.mapOptionalInputValue<AccessPolicyExcludeAuthContext, Map<String, dynamic>>(authContext, (value) => value.toMap()),
      'authMethod': ?pulumi.Input.mapOptionalInputValue<AccessPolicyExcludeAuthMethod, Map<String, dynamic>>(authMethod, (value) => value.toMap()),
      'azureAd': ?pulumi.Input.mapOptionalInputValue<AccessPolicyExcludeAzureAd, Map<String, dynamic>>(azureAd, (value) => value.toMap()),
      'certificate': ?certificate,
      'cloudflareAccountMember': ?pulumi.Input.mapOptionalInputValue<AccessPolicyExcludeCloudflareAccountMember, Map<String, dynamic>>(cloudflareAccountMember, (value) => value.toMap()),
      'commonName': ?pulumi.Input.mapOptionalInputValue<AccessPolicyExcludeCommonName, Map<String, dynamic>>(commonName, (value) => value.toMap()),
      'devicePosture': ?pulumi.Input.mapOptionalInputValue<AccessPolicyExcludeDevicePosture, Map<String, dynamic>>(devicePosture, (value) => value.toMap()),
      'email': ?pulumi.Input.mapOptionalInputValue<AccessPolicyExcludeEmail, Map<String, dynamic>>(email, (value) => value.toMap()),
      'emailDomain': ?pulumi.Input.mapOptionalInputValue<AccessPolicyExcludeEmailDomain, Map<String, dynamic>>(emailDomain, (value) => value.toMap()),
      'emailList': ?pulumi.Input.mapOptionalInputValue<AccessPolicyExcludeEmailList, Map<String, dynamic>>(emailList, (value) => value.toMap()),
      'everyone': ?everyone,
      'externalEvaluation': ?pulumi.Input.mapOptionalInputValue<AccessPolicyExcludeExternalEvaluation, Map<String, dynamic>>(externalEvaluation, (value) => value.toMap()),
      'geo': ?pulumi.Input.mapOptionalInputValue<AccessPolicyExcludeGeo, Map<String, dynamic>>(geo, (value) => value.toMap()),
      'githubOrganization': ?pulumi.Input.mapOptionalInputValue<AccessPolicyExcludeGithubOrganization, Map<String, dynamic>>(githubOrganization, (value) => value.toMap()),
      'group': ?pulumi.Input.mapOptionalInputValue<AccessPolicyExcludeGroup, Map<String, dynamic>>(group, (value) => value.toMap()),
      'gsuite': ?pulumi.Input.mapOptionalInputValue<AccessPolicyExcludeGsuite, Map<String, dynamic>>(gsuite, (value) => value.toMap()),
      'ip': ?pulumi.Input.mapOptionalInputValue<AccessPolicyExcludeIp, Map<String, dynamic>>(ip, (value) => value.toMap()),
      'ipList': ?pulumi.Input.mapOptionalInputValue<AccessPolicyExcludeIpList, Map<String, dynamic>>(ipList, (value) => value.toMap()),
      'linkedAppToken': ?pulumi.Input.mapOptionalInputValue<AccessPolicyExcludeLinkedAppToken, Map<String, dynamic>>(linkedAppToken, (value) => value.toMap()),
      'loginMethod': ?pulumi.Input.mapOptionalInputValue<AccessPolicyExcludeLoginMethod, Map<String, dynamic>>(loginMethod, (value) => value.toMap()),
      'oidc': ?pulumi.Input.mapOptionalInputValue<AccessPolicyExcludeOidc, Map<String, dynamic>>(oidc, (value) => value.toMap()),
      'okta': ?pulumi.Input.mapOptionalInputValue<AccessPolicyExcludeOkta, Map<String, dynamic>>(okta, (value) => value.toMap()),
      'saml': ?pulumi.Input.mapOptionalInputValue<AccessPolicyExcludeSaml, Map<String, dynamic>>(saml, (value) => value.toMap()),
      'serviceToken': ?pulumi.Input.mapOptionalInputValue<AccessPolicyExcludeServiceToken, Map<String, dynamic>>(serviceToken, (value) => value.toMap()),
      'userRiskScore': ?pulumi.Input.mapOptionalInputValue<AccessPolicyExcludeUserRiskScore, Map<String, dynamic>>(userRiskScore, (value) => value.toMap()),
    };
  }

  factory AccessPolicyExclude.fromMap(Map<String, dynamic> map) {
    return AccessPolicyExclude(
      anyValidServiceToken: (() { final guardedValue = map['anyValidServiceToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      authContext: (() { final guardedValue = map['authContext']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessPolicyExcludeAuthContext.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      authMethod: (() { final guardedValue = map['authMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessPolicyExcludeAuthMethod.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      azureAd: (() { final guardedValue = map['azureAd']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessPolicyExcludeAzureAd.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      certificate: (() { final guardedValue = map['certificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      cloudflareAccountMember: (() { final guardedValue = map['cloudflareAccountMember']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessPolicyExcludeCloudflareAccountMember.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      commonName: (() { final guardedValue = map['commonName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessPolicyExcludeCommonName.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      devicePosture: (() { final guardedValue = map['devicePosture']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessPolicyExcludeDevicePosture.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessPolicyExcludeEmail.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      emailDomain: (() { final guardedValue = map['emailDomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessPolicyExcludeEmailDomain.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      emailList: (() { final guardedValue = map['emailList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessPolicyExcludeEmailList.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      everyone: (() { final guardedValue = map['everyone']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      externalEvaluation: (() { final guardedValue = map['externalEvaluation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessPolicyExcludeExternalEvaluation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      geo: (() { final guardedValue = map['geo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessPolicyExcludeGeo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      githubOrganization: (() { final guardedValue = map['githubOrganization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessPolicyExcludeGithubOrganization.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      group: (() { final guardedValue = map['group']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessPolicyExcludeGroup.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gsuite: (() { final guardedValue = map['gsuite']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessPolicyExcludeGsuite.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ip: (() { final guardedValue = map['ip']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessPolicyExcludeIp.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ipList: (() { final guardedValue = map['ipList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessPolicyExcludeIpList.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      linkedAppToken: (() { final guardedValue = map['linkedAppToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessPolicyExcludeLinkedAppToken.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      loginMethod: (() { final guardedValue = map['loginMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessPolicyExcludeLoginMethod.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      oidc: (() { final guardedValue = map['oidc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessPolicyExcludeOidc.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      okta: (() { final guardedValue = map['okta']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessPolicyExcludeOkta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      saml: (() { final guardedValue = map['saml']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessPolicyExcludeSaml.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceToken: (() { final guardedValue = map['serviceToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessPolicyExcludeServiceToken.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      userRiskScore: (() { final guardedValue = map['userRiskScore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessPolicyExcludeUserRiskScore.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
