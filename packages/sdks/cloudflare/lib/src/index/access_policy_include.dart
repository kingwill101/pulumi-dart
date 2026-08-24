// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_policy_include_auth_context.dart';
import 'access_policy_include_auth_method.dart';
import 'access_policy_include_azure_ad.dart';
import 'access_policy_include_cloudflare_account_member.dart';
import 'access_policy_include_common_name.dart';
import 'access_policy_include_device_posture.dart';
import 'access_policy_include_email.dart';
import 'access_policy_include_email_domain.dart';
import 'access_policy_include_email_list.dart';
import 'access_policy_include_external_evaluation.dart';
import 'access_policy_include_geo.dart';
import 'access_policy_include_github_organization.dart';
import 'access_policy_include_group.dart';
import 'access_policy_include_gsuite.dart';
import 'access_policy_include_ip.dart';
import 'access_policy_include_ip_list.dart';
import 'access_policy_include_linked_app_token.dart';
import 'access_policy_include_login_method.dart';
import 'access_policy_include_oidc.dart';
import 'access_policy_include_okta.dart';
import 'access_policy_include_saml.dart';
import 'access_policy_include_service_token.dart';
import 'access_policy_include_user_risk_score.dart';

class AccessPolicyInclude {
  /// An empty object which matches on all service tokens.
  final pulumi.Input<Map<String, dynamic>?>? anyValidServiceToken;
  final pulumi.Input<AccessPolicyIncludeAuthContext?>? authContext;
  final pulumi.Input<AccessPolicyIncludeAuthMethod?>? authMethod;
  final pulumi.Input<AccessPolicyIncludeAzureAd?>? azureAd;
  final pulumi.Input<Map<String, dynamic>?>? certificate;
  final pulumi.Input<AccessPolicyIncludeCloudflareAccountMember?>? cloudflareAccountMember;
  final pulumi.Input<AccessPolicyIncludeCommonName?>? commonName;
  final pulumi.Input<AccessPolicyIncludeDevicePosture?>? devicePosture;
  final pulumi.Input<AccessPolicyIncludeEmail?>? email;
  final pulumi.Input<AccessPolicyIncludeEmailDomain?>? emailDomain;
  final pulumi.Input<AccessPolicyIncludeEmailList?>? emailList;
  /// An empty object which matches on all users.
  final pulumi.Input<Map<String, dynamic>?>? everyone;
  final pulumi.Input<AccessPolicyIncludeExternalEvaluation?>? externalEvaluation;
  final pulumi.Input<AccessPolicyIncludeGeo?>? geo;
  final pulumi.Input<AccessPolicyIncludeGithubOrganization?>? githubOrganization;
  final pulumi.Input<AccessPolicyIncludeGroup?>? group;
  final pulumi.Input<AccessPolicyIncludeGsuite?>? gsuite;
  final pulumi.Input<AccessPolicyIncludeIp?>? ip;
  final pulumi.Input<AccessPolicyIncludeIpList?>? ipList;
  final pulumi.Input<AccessPolicyIncludeLinkedAppToken?>? linkedAppToken;
  final pulumi.Input<AccessPolicyIncludeLoginMethod?>? loginMethod;
  final pulumi.Input<AccessPolicyIncludeOidc?>? oidc;
  final pulumi.Input<AccessPolicyIncludeOkta?>? okta;
  final pulumi.Input<AccessPolicyIncludeSaml?>? saml;
  final pulumi.Input<AccessPolicyIncludeServiceToken?>? serviceToken;
  final pulumi.Input<AccessPolicyIncludeUserRiskScore?>? userRiskScore;

  /// Creates a new [AccessPolicyInclude].
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
  const AccessPolicyInclude({
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
      'authContext': ?pulumi.Input.mapOptionalInputValue<AccessPolicyIncludeAuthContext, Map<String, dynamic>>(authContext, (value) => value.toMap()),
      'authMethod': ?pulumi.Input.mapOptionalInputValue<AccessPolicyIncludeAuthMethod, Map<String, dynamic>>(authMethod, (value) => value.toMap()),
      'azureAd': ?pulumi.Input.mapOptionalInputValue<AccessPolicyIncludeAzureAd, Map<String, dynamic>>(azureAd, (value) => value.toMap()),
      'certificate': ?certificate,
      'cloudflareAccountMember': ?pulumi.Input.mapOptionalInputValue<AccessPolicyIncludeCloudflareAccountMember, Map<String, dynamic>>(cloudflareAccountMember, (value) => value.toMap()),
      'commonName': ?pulumi.Input.mapOptionalInputValue<AccessPolicyIncludeCommonName, Map<String, dynamic>>(commonName, (value) => value.toMap()),
      'devicePosture': ?pulumi.Input.mapOptionalInputValue<AccessPolicyIncludeDevicePosture, Map<String, dynamic>>(devicePosture, (value) => value.toMap()),
      'email': ?pulumi.Input.mapOptionalInputValue<AccessPolicyIncludeEmail, Map<String, dynamic>>(email, (value) => value.toMap()),
      'emailDomain': ?pulumi.Input.mapOptionalInputValue<AccessPolicyIncludeEmailDomain, Map<String, dynamic>>(emailDomain, (value) => value.toMap()),
      'emailList': ?pulumi.Input.mapOptionalInputValue<AccessPolicyIncludeEmailList, Map<String, dynamic>>(emailList, (value) => value.toMap()),
      'everyone': ?everyone,
      'externalEvaluation': ?pulumi.Input.mapOptionalInputValue<AccessPolicyIncludeExternalEvaluation, Map<String, dynamic>>(externalEvaluation, (value) => value.toMap()),
      'geo': ?pulumi.Input.mapOptionalInputValue<AccessPolicyIncludeGeo, Map<String, dynamic>>(geo, (value) => value.toMap()),
      'githubOrganization': ?pulumi.Input.mapOptionalInputValue<AccessPolicyIncludeGithubOrganization, Map<String, dynamic>>(githubOrganization, (value) => value.toMap()),
      'group': ?pulumi.Input.mapOptionalInputValue<AccessPolicyIncludeGroup, Map<String, dynamic>>(group, (value) => value.toMap()),
      'gsuite': ?pulumi.Input.mapOptionalInputValue<AccessPolicyIncludeGsuite, Map<String, dynamic>>(gsuite, (value) => value.toMap()),
      'ip': ?pulumi.Input.mapOptionalInputValue<AccessPolicyIncludeIp, Map<String, dynamic>>(ip, (value) => value.toMap()),
      'ipList': ?pulumi.Input.mapOptionalInputValue<AccessPolicyIncludeIpList, Map<String, dynamic>>(ipList, (value) => value.toMap()),
      'linkedAppToken': ?pulumi.Input.mapOptionalInputValue<AccessPolicyIncludeLinkedAppToken, Map<String, dynamic>>(linkedAppToken, (value) => value.toMap()),
      'loginMethod': ?pulumi.Input.mapOptionalInputValue<AccessPolicyIncludeLoginMethod, Map<String, dynamic>>(loginMethod, (value) => value.toMap()),
      'oidc': ?pulumi.Input.mapOptionalInputValue<AccessPolicyIncludeOidc, Map<String, dynamic>>(oidc, (value) => value.toMap()),
      'okta': ?pulumi.Input.mapOptionalInputValue<AccessPolicyIncludeOkta, Map<String, dynamic>>(okta, (value) => value.toMap()),
      'saml': ?pulumi.Input.mapOptionalInputValue<AccessPolicyIncludeSaml, Map<String, dynamic>>(saml, (value) => value.toMap()),
      'serviceToken': ?pulumi.Input.mapOptionalInputValue<AccessPolicyIncludeServiceToken, Map<String, dynamic>>(serviceToken, (value) => value.toMap()),
      'userRiskScore': ?pulumi.Input.mapOptionalInputValue<AccessPolicyIncludeUserRiskScore, Map<String, dynamic>>(userRiskScore, (value) => value.toMap()),
    };
  }

  factory AccessPolicyInclude.fromMap(Map<String, dynamic> map) {
    return AccessPolicyInclude(
      anyValidServiceToken: (() { final guardedValue = map['anyValidServiceToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      authContext: (() { final guardedValue = map['authContext']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessPolicyIncludeAuthContext.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      authMethod: (() { final guardedValue = map['authMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessPolicyIncludeAuthMethod.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      azureAd: (() { final guardedValue = map['azureAd']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessPolicyIncludeAzureAd.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      certificate: (() { final guardedValue = map['certificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      cloudflareAccountMember: (() { final guardedValue = map['cloudflareAccountMember']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessPolicyIncludeCloudflareAccountMember.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      commonName: (() { final guardedValue = map['commonName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessPolicyIncludeCommonName.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      devicePosture: (() { final guardedValue = map['devicePosture']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessPolicyIncludeDevicePosture.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessPolicyIncludeEmail.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      emailDomain: (() { final guardedValue = map['emailDomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessPolicyIncludeEmailDomain.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      emailList: (() { final guardedValue = map['emailList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessPolicyIncludeEmailList.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      everyone: (() { final guardedValue = map['everyone']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      externalEvaluation: (() { final guardedValue = map['externalEvaluation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessPolicyIncludeExternalEvaluation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      geo: (() { final guardedValue = map['geo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessPolicyIncludeGeo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      githubOrganization: (() { final guardedValue = map['githubOrganization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessPolicyIncludeGithubOrganization.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      group: (() { final guardedValue = map['group']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessPolicyIncludeGroup.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gsuite: (() { final guardedValue = map['gsuite']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessPolicyIncludeGsuite.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ip: (() { final guardedValue = map['ip']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessPolicyIncludeIp.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ipList: (() { final guardedValue = map['ipList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessPolicyIncludeIpList.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      linkedAppToken: (() { final guardedValue = map['linkedAppToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessPolicyIncludeLinkedAppToken.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      loginMethod: (() { final guardedValue = map['loginMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessPolicyIncludeLoginMethod.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      oidc: (() { final guardedValue = map['oidc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessPolicyIncludeOidc.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      okta: (() { final guardedValue = map['okta']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessPolicyIncludeOkta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      saml: (() { final guardedValue = map['saml']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessPolicyIncludeSaml.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceToken: (() { final guardedValue = map['serviceToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessPolicyIncludeServiceToken.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      userRiskScore: (() { final guardedValue = map['userRiskScore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessPolicyIncludeUserRiskScore.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
