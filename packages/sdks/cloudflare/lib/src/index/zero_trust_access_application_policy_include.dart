// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_access_application_policy_include_auth_context.dart';
import 'zero_trust_access_application_policy_include_auth_method.dart';
import 'zero_trust_access_application_policy_include_azure_ad.dart';
import 'zero_trust_access_application_policy_include_common_name.dart';
import 'zero_trust_access_application_policy_include_device_posture.dart';
import 'zero_trust_access_application_policy_include_email.dart';
import 'zero_trust_access_application_policy_include_email_domain.dart';
import 'zero_trust_access_application_policy_include_email_list.dart';
import 'zero_trust_access_application_policy_include_external_evaluation.dart';
import 'zero_trust_access_application_policy_include_geo.dart';
import 'zero_trust_access_application_policy_include_github_organization.dart';
import 'zero_trust_access_application_policy_include_group.dart';
import 'zero_trust_access_application_policy_include_gsuite.dart';
import 'zero_trust_access_application_policy_include_ip.dart';
import 'zero_trust_access_application_policy_include_ip_list.dart';
import 'zero_trust_access_application_policy_include_linked_app_token.dart';
import 'zero_trust_access_application_policy_include_login_method.dart';
import 'zero_trust_access_application_policy_include_oidc.dart';
import 'zero_trust_access_application_policy_include_okta.dart';
import 'zero_trust_access_application_policy_include_saml.dart';
import 'zero_trust_access_application_policy_include_service_token.dart';

class ZeroTrustAccessApplicationPolicyInclude {
  /// An empty object which matches on all service tokens.
  final pulumi.Input<Map<String, dynamic>?>? anyValidServiceToken;
  final pulumi.Input<ZeroTrustAccessApplicationPolicyIncludeAuthContext?>? authContext;
  final pulumi.Input<ZeroTrustAccessApplicationPolicyIncludeAuthMethod?>? authMethod;
  final pulumi.Input<ZeroTrustAccessApplicationPolicyIncludeAzureAd?>? azureAd;
  final pulumi.Input<Map<String, dynamic>?>? certificate;
  final pulumi.Input<ZeroTrustAccessApplicationPolicyIncludeCommonName?>? commonName;
  final pulumi.Input<ZeroTrustAccessApplicationPolicyIncludeDevicePosture?>? devicePosture;
  final pulumi.Input<ZeroTrustAccessApplicationPolicyIncludeEmail?>? email;
  final pulumi.Input<ZeroTrustAccessApplicationPolicyIncludeEmailDomain?>? emailDomain;
  final pulumi.Input<ZeroTrustAccessApplicationPolicyIncludeEmailList?>? emailList;
  /// An empty object which matches on all users.
  final pulumi.Input<Map<String, dynamic>?>? everyone;
  final pulumi.Input<ZeroTrustAccessApplicationPolicyIncludeExternalEvaluation?>? externalEvaluation;
  final pulumi.Input<ZeroTrustAccessApplicationPolicyIncludeGeo?>? geo;
  final pulumi.Input<ZeroTrustAccessApplicationPolicyIncludeGithubOrganization?>? githubOrganization;
  final pulumi.Input<ZeroTrustAccessApplicationPolicyIncludeGroup?>? group;
  final pulumi.Input<ZeroTrustAccessApplicationPolicyIncludeGsuite?>? gsuite;
  final pulumi.Input<ZeroTrustAccessApplicationPolicyIncludeIp?>? ip;
  final pulumi.Input<ZeroTrustAccessApplicationPolicyIncludeIpList?>? ipList;
  final pulumi.Input<ZeroTrustAccessApplicationPolicyIncludeLinkedAppToken?>? linkedAppToken;
  final pulumi.Input<ZeroTrustAccessApplicationPolicyIncludeLoginMethod?>? loginMethod;
  final pulumi.Input<ZeroTrustAccessApplicationPolicyIncludeOidc?>? oidc;
  final pulumi.Input<ZeroTrustAccessApplicationPolicyIncludeOkta?>? okta;
  final pulumi.Input<ZeroTrustAccessApplicationPolicyIncludeSaml?>? saml;
  final pulumi.Input<ZeroTrustAccessApplicationPolicyIncludeServiceToken?>? serviceToken;

  /// Creates a new [ZeroTrustAccessApplicationPolicyInclude].
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
  const ZeroTrustAccessApplicationPolicyInclude({
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
      'authContext': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessApplicationPolicyIncludeAuthContext, Map<String, dynamic>>(authContext, (value) => value.toMap()),
      'authMethod': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessApplicationPolicyIncludeAuthMethod, Map<String, dynamic>>(authMethod, (value) => value.toMap()),
      'azureAd': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessApplicationPolicyIncludeAzureAd, Map<String, dynamic>>(azureAd, (value) => value.toMap()),
      'certificate': ?certificate,
      'commonName': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessApplicationPolicyIncludeCommonName, Map<String, dynamic>>(commonName, (value) => value.toMap()),
      'devicePosture': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessApplicationPolicyIncludeDevicePosture, Map<String, dynamic>>(devicePosture, (value) => value.toMap()),
      'email': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessApplicationPolicyIncludeEmail, Map<String, dynamic>>(email, (value) => value.toMap()),
      'emailDomain': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessApplicationPolicyIncludeEmailDomain, Map<String, dynamic>>(emailDomain, (value) => value.toMap()),
      'emailList': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessApplicationPolicyIncludeEmailList, Map<String, dynamic>>(emailList, (value) => value.toMap()),
      'everyone': ?everyone,
      'externalEvaluation': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessApplicationPolicyIncludeExternalEvaluation, Map<String, dynamic>>(externalEvaluation, (value) => value.toMap()),
      'geo': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessApplicationPolicyIncludeGeo, Map<String, dynamic>>(geo, (value) => value.toMap()),
      'githubOrganization': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessApplicationPolicyIncludeGithubOrganization, Map<String, dynamic>>(githubOrganization, (value) => value.toMap()),
      'group': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessApplicationPolicyIncludeGroup, Map<String, dynamic>>(group, (value) => value.toMap()),
      'gsuite': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessApplicationPolicyIncludeGsuite, Map<String, dynamic>>(gsuite, (value) => value.toMap()),
      'ip': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessApplicationPolicyIncludeIp, Map<String, dynamic>>(ip, (value) => value.toMap()),
      'ipList': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessApplicationPolicyIncludeIpList, Map<String, dynamic>>(ipList, (value) => value.toMap()),
      'linkedAppToken': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessApplicationPolicyIncludeLinkedAppToken, Map<String, dynamic>>(linkedAppToken, (value) => value.toMap()),
      'loginMethod': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessApplicationPolicyIncludeLoginMethod, Map<String, dynamic>>(loginMethod, (value) => value.toMap()),
      'oidc': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessApplicationPolicyIncludeOidc, Map<String, dynamic>>(oidc, (value) => value.toMap()),
      'okta': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessApplicationPolicyIncludeOkta, Map<String, dynamic>>(okta, (value) => value.toMap()),
      'saml': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessApplicationPolicyIncludeSaml, Map<String, dynamic>>(saml, (value) => value.toMap()),
      'serviceToken': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessApplicationPolicyIncludeServiceToken, Map<String, dynamic>>(serviceToken, (value) => value.toMap()),
    };
  }

  factory ZeroTrustAccessApplicationPolicyInclude.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessApplicationPolicyInclude(
      anyValidServiceToken: (() { final guardedValue = map['anyValidServiceToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      authContext: (() { final guardedValue = map['authContext']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessApplicationPolicyIncludeAuthContext.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      authMethod: (() { final guardedValue = map['authMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessApplicationPolicyIncludeAuthMethod.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      azureAd: (() { final guardedValue = map['azureAd']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessApplicationPolicyIncludeAzureAd.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      certificate: (() { final guardedValue = map['certificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      commonName: (() { final guardedValue = map['commonName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessApplicationPolicyIncludeCommonName.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      devicePosture: (() { final guardedValue = map['devicePosture']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessApplicationPolicyIncludeDevicePosture.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessApplicationPolicyIncludeEmail.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      emailDomain: (() { final guardedValue = map['emailDomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessApplicationPolicyIncludeEmailDomain.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      emailList: (() { final guardedValue = map['emailList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessApplicationPolicyIncludeEmailList.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      everyone: (() { final guardedValue = map['everyone']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      externalEvaluation: (() { final guardedValue = map['externalEvaluation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessApplicationPolicyIncludeExternalEvaluation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      geo: (() { final guardedValue = map['geo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessApplicationPolicyIncludeGeo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      githubOrganization: (() { final guardedValue = map['githubOrganization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessApplicationPolicyIncludeGithubOrganization.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      group: (() { final guardedValue = map['group']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessApplicationPolicyIncludeGroup.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gsuite: (() { final guardedValue = map['gsuite']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessApplicationPolicyIncludeGsuite.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ip: (() { final guardedValue = map['ip']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessApplicationPolicyIncludeIp.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ipList: (() { final guardedValue = map['ipList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessApplicationPolicyIncludeIpList.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      linkedAppToken: (() { final guardedValue = map['linkedAppToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessApplicationPolicyIncludeLinkedAppToken.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      loginMethod: (() { final guardedValue = map['loginMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessApplicationPolicyIncludeLoginMethod.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      oidc: (() { final guardedValue = map['oidc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessApplicationPolicyIncludeOidc.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      okta: (() { final guardedValue = map['okta']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessApplicationPolicyIncludeOkta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      saml: (() { final guardedValue = map['saml']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessApplicationPolicyIncludeSaml.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceToken: (() { final guardedValue = map['serviceToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessApplicationPolicyIncludeServiceToken.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
