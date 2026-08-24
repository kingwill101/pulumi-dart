// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_access_application_policy_exclude_auth_context.dart';
import 'zero_trust_access_application_policy_exclude_auth_method.dart';
import 'zero_trust_access_application_policy_exclude_azure_ad.dart';
import 'zero_trust_access_application_policy_exclude_common_name.dart';
import 'zero_trust_access_application_policy_exclude_device_posture.dart';
import 'zero_trust_access_application_policy_exclude_email.dart';
import 'zero_trust_access_application_policy_exclude_email_domain.dart';
import 'zero_trust_access_application_policy_exclude_email_list.dart';
import 'zero_trust_access_application_policy_exclude_external_evaluation.dart';
import 'zero_trust_access_application_policy_exclude_geo.dart';
import 'zero_trust_access_application_policy_exclude_github_organization.dart';
import 'zero_trust_access_application_policy_exclude_group.dart';
import 'zero_trust_access_application_policy_exclude_gsuite.dart';
import 'zero_trust_access_application_policy_exclude_ip.dart';
import 'zero_trust_access_application_policy_exclude_ip_list.dart';
import 'zero_trust_access_application_policy_exclude_linked_app_token.dart';
import 'zero_trust_access_application_policy_exclude_login_method.dart';
import 'zero_trust_access_application_policy_exclude_oidc.dart';
import 'zero_trust_access_application_policy_exclude_okta.dart';
import 'zero_trust_access_application_policy_exclude_saml.dart';
import 'zero_trust_access_application_policy_exclude_service_token.dart';

class ZeroTrustAccessApplicationPolicyExclude {
  /// An empty object which matches on all service tokens.
  final pulumi.Input<Map<String, dynamic>?>? anyValidServiceToken;
  final pulumi.Input<ZeroTrustAccessApplicationPolicyExcludeAuthContext?>? authContext;
  final pulumi.Input<ZeroTrustAccessApplicationPolicyExcludeAuthMethod?>? authMethod;
  final pulumi.Input<ZeroTrustAccessApplicationPolicyExcludeAzureAd?>? azureAd;
  final pulumi.Input<Map<String, dynamic>?>? certificate;
  final pulumi.Input<ZeroTrustAccessApplicationPolicyExcludeCommonName?>? commonName;
  final pulumi.Input<ZeroTrustAccessApplicationPolicyExcludeDevicePosture?>? devicePosture;
  final pulumi.Input<ZeroTrustAccessApplicationPolicyExcludeEmail?>? email;
  final pulumi.Input<ZeroTrustAccessApplicationPolicyExcludeEmailDomain?>? emailDomain;
  final pulumi.Input<ZeroTrustAccessApplicationPolicyExcludeEmailList?>? emailList;
  /// An empty object which matches on all users.
  final pulumi.Input<Map<String, dynamic>?>? everyone;
  final pulumi.Input<ZeroTrustAccessApplicationPolicyExcludeExternalEvaluation?>? externalEvaluation;
  final pulumi.Input<ZeroTrustAccessApplicationPolicyExcludeGeo?>? geo;
  final pulumi.Input<ZeroTrustAccessApplicationPolicyExcludeGithubOrganization?>? githubOrganization;
  final pulumi.Input<ZeroTrustAccessApplicationPolicyExcludeGroup?>? group;
  final pulumi.Input<ZeroTrustAccessApplicationPolicyExcludeGsuite?>? gsuite;
  final pulumi.Input<ZeroTrustAccessApplicationPolicyExcludeIp?>? ip;
  final pulumi.Input<ZeroTrustAccessApplicationPolicyExcludeIpList?>? ipList;
  final pulumi.Input<ZeroTrustAccessApplicationPolicyExcludeLinkedAppToken?>? linkedAppToken;
  final pulumi.Input<ZeroTrustAccessApplicationPolicyExcludeLoginMethod?>? loginMethod;
  final pulumi.Input<ZeroTrustAccessApplicationPolicyExcludeOidc?>? oidc;
  final pulumi.Input<ZeroTrustAccessApplicationPolicyExcludeOkta?>? okta;
  final pulumi.Input<ZeroTrustAccessApplicationPolicyExcludeSaml?>? saml;
  final pulumi.Input<ZeroTrustAccessApplicationPolicyExcludeServiceToken?>? serviceToken;

  /// Creates a new [ZeroTrustAccessApplicationPolicyExclude].
  /// [anyValidServiceToken] An empty object which matches on all service tokens.
  /// [authContext] Optional.
  /// [authMethod] Optional.
  /// [azureAd] Optional.
  /// [certificate] Optional.
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
  const ZeroTrustAccessApplicationPolicyExclude({
    this.anyValidServiceToken,
    this.authContext,
    this.authMethod,
    this.azureAd,
    this.certificate,
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
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'anyValidServiceToken': ?anyValidServiceToken,
      'authContext': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessApplicationPolicyExcludeAuthContext, Map<String, dynamic>>(authContext, (value) => value.toMap()),
      'authMethod': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessApplicationPolicyExcludeAuthMethod, Map<String, dynamic>>(authMethod, (value) => value.toMap()),
      'azureAd': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessApplicationPolicyExcludeAzureAd, Map<String, dynamic>>(azureAd, (value) => value.toMap()),
      'certificate': ?certificate,
      'commonName': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessApplicationPolicyExcludeCommonName, Map<String, dynamic>>(commonName, (value) => value.toMap()),
      'devicePosture': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessApplicationPolicyExcludeDevicePosture, Map<String, dynamic>>(devicePosture, (value) => value.toMap()),
      'email': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessApplicationPolicyExcludeEmail, Map<String, dynamic>>(email, (value) => value.toMap()),
      'emailDomain': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessApplicationPolicyExcludeEmailDomain, Map<String, dynamic>>(emailDomain, (value) => value.toMap()),
      'emailList': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessApplicationPolicyExcludeEmailList, Map<String, dynamic>>(emailList, (value) => value.toMap()),
      'everyone': ?everyone,
      'externalEvaluation': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessApplicationPolicyExcludeExternalEvaluation, Map<String, dynamic>>(externalEvaluation, (value) => value.toMap()),
      'geo': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessApplicationPolicyExcludeGeo, Map<String, dynamic>>(geo, (value) => value.toMap()),
      'githubOrganization': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessApplicationPolicyExcludeGithubOrganization, Map<String, dynamic>>(githubOrganization, (value) => value.toMap()),
      'group': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessApplicationPolicyExcludeGroup, Map<String, dynamic>>(group, (value) => value.toMap()),
      'gsuite': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessApplicationPolicyExcludeGsuite, Map<String, dynamic>>(gsuite, (value) => value.toMap()),
      'ip': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessApplicationPolicyExcludeIp, Map<String, dynamic>>(ip, (value) => value.toMap()),
      'ipList': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessApplicationPolicyExcludeIpList, Map<String, dynamic>>(ipList, (value) => value.toMap()),
      'linkedAppToken': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessApplicationPolicyExcludeLinkedAppToken, Map<String, dynamic>>(linkedAppToken, (value) => value.toMap()),
      'loginMethod': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessApplicationPolicyExcludeLoginMethod, Map<String, dynamic>>(loginMethod, (value) => value.toMap()),
      'oidc': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessApplicationPolicyExcludeOidc, Map<String, dynamic>>(oidc, (value) => value.toMap()),
      'okta': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessApplicationPolicyExcludeOkta, Map<String, dynamic>>(okta, (value) => value.toMap()),
      'saml': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessApplicationPolicyExcludeSaml, Map<String, dynamic>>(saml, (value) => value.toMap()),
      'serviceToken': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessApplicationPolicyExcludeServiceToken, Map<String, dynamic>>(serviceToken, (value) => value.toMap()),
    };
  }

  factory ZeroTrustAccessApplicationPolicyExclude.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessApplicationPolicyExclude(
      anyValidServiceToken: (() { final guardedValue = map['anyValidServiceToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      authContext: (() { final guardedValue = map['authContext']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessApplicationPolicyExcludeAuthContext.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      authMethod: (() { final guardedValue = map['authMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessApplicationPolicyExcludeAuthMethod.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      azureAd: (() { final guardedValue = map['azureAd']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessApplicationPolicyExcludeAzureAd.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      certificate: (() { final guardedValue = map['certificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      commonName: (() { final guardedValue = map['commonName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessApplicationPolicyExcludeCommonName.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      devicePosture: (() { final guardedValue = map['devicePosture']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessApplicationPolicyExcludeDevicePosture.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessApplicationPolicyExcludeEmail.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      emailDomain: (() { final guardedValue = map['emailDomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessApplicationPolicyExcludeEmailDomain.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      emailList: (() { final guardedValue = map['emailList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessApplicationPolicyExcludeEmailList.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      everyone: (() { final guardedValue = map['everyone']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      externalEvaluation: (() { final guardedValue = map['externalEvaluation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessApplicationPolicyExcludeExternalEvaluation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      geo: (() { final guardedValue = map['geo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessApplicationPolicyExcludeGeo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      githubOrganization: (() { final guardedValue = map['githubOrganization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessApplicationPolicyExcludeGithubOrganization.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      group: (() { final guardedValue = map['group']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessApplicationPolicyExcludeGroup.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gsuite: (() { final guardedValue = map['gsuite']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessApplicationPolicyExcludeGsuite.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ip: (() { final guardedValue = map['ip']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessApplicationPolicyExcludeIp.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ipList: (() { final guardedValue = map['ipList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessApplicationPolicyExcludeIpList.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      linkedAppToken: (() { final guardedValue = map['linkedAppToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessApplicationPolicyExcludeLinkedAppToken.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      loginMethod: (() { final guardedValue = map['loginMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessApplicationPolicyExcludeLoginMethod.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      oidc: (() { final guardedValue = map['oidc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessApplicationPolicyExcludeOidc.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      okta: (() { final guardedValue = map['okta']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessApplicationPolicyExcludeOkta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      saml: (() { final guardedValue = map['saml']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessApplicationPolicyExcludeSaml.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceToken: (() { final guardedValue = map['serviceToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessApplicationPolicyExcludeServiceToken.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
