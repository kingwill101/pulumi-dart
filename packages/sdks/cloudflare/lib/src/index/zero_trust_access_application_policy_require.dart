// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_access_application_policy_require_auth_context.dart';
import 'zero_trust_access_application_policy_require_auth_method.dart';
import 'zero_trust_access_application_policy_require_azure_ad.dart';
import 'zero_trust_access_application_policy_require_common_name.dart';
import 'zero_trust_access_application_policy_require_device_posture.dart';
import 'zero_trust_access_application_policy_require_email.dart';
import 'zero_trust_access_application_policy_require_email_domain.dart';
import 'zero_trust_access_application_policy_require_email_list.dart';
import 'zero_trust_access_application_policy_require_external_evaluation.dart';
import 'zero_trust_access_application_policy_require_geo.dart';
import 'zero_trust_access_application_policy_require_github_organization.dart';
import 'zero_trust_access_application_policy_require_group.dart';
import 'zero_trust_access_application_policy_require_gsuite.dart';
import 'zero_trust_access_application_policy_require_ip.dart';
import 'zero_trust_access_application_policy_require_ip_list.dart';
import 'zero_trust_access_application_policy_require_linked_app_token.dart';
import 'zero_trust_access_application_policy_require_login_method.dart';
import 'zero_trust_access_application_policy_require_oidc.dart';
import 'zero_trust_access_application_policy_require_okta.dart';
import 'zero_trust_access_application_policy_require_saml.dart';
import 'zero_trust_access_application_policy_require_service_token.dart';

class ZeroTrustAccessApplicationPolicyRequire {
  /// An empty object which matches on all service tokens.
  final pulumi.Input<Map<String, dynamic>?>? anyValidServiceToken;
  final pulumi.Input<ZeroTrustAccessApplicationPolicyRequireAuthContext?>? authContext;
  final pulumi.Input<ZeroTrustAccessApplicationPolicyRequireAuthMethod?>? authMethod;
  final pulumi.Input<ZeroTrustAccessApplicationPolicyRequireAzureAd?>? azureAd;
  final pulumi.Input<Map<String, dynamic>?>? certificate;
  final pulumi.Input<ZeroTrustAccessApplicationPolicyRequireCommonName?>? commonName;
  final pulumi.Input<ZeroTrustAccessApplicationPolicyRequireDevicePosture?>? devicePosture;
  final pulumi.Input<ZeroTrustAccessApplicationPolicyRequireEmail?>? email;
  final pulumi.Input<ZeroTrustAccessApplicationPolicyRequireEmailDomain?>? emailDomain;
  final pulumi.Input<ZeroTrustAccessApplicationPolicyRequireEmailList?>? emailList;
  /// An empty object which matches on all users.
  final pulumi.Input<Map<String, dynamic>?>? everyone;
  final pulumi.Input<ZeroTrustAccessApplicationPolicyRequireExternalEvaluation?>? externalEvaluation;
  final pulumi.Input<ZeroTrustAccessApplicationPolicyRequireGeo?>? geo;
  final pulumi.Input<ZeroTrustAccessApplicationPolicyRequireGithubOrganization?>? githubOrganization;
  final pulumi.Input<ZeroTrustAccessApplicationPolicyRequireGroup?>? group;
  final pulumi.Input<ZeroTrustAccessApplicationPolicyRequireGsuite?>? gsuite;
  final pulumi.Input<ZeroTrustAccessApplicationPolicyRequireIp?>? ip;
  final pulumi.Input<ZeroTrustAccessApplicationPolicyRequireIpList?>? ipList;
  final pulumi.Input<ZeroTrustAccessApplicationPolicyRequireLinkedAppToken?>? linkedAppToken;
  final pulumi.Input<ZeroTrustAccessApplicationPolicyRequireLoginMethod?>? loginMethod;
  final pulumi.Input<ZeroTrustAccessApplicationPolicyRequireOidc?>? oidc;
  final pulumi.Input<ZeroTrustAccessApplicationPolicyRequireOkta?>? okta;
  final pulumi.Input<ZeroTrustAccessApplicationPolicyRequireSaml?>? saml;
  final pulumi.Input<ZeroTrustAccessApplicationPolicyRequireServiceToken?>? serviceToken;

  /// Creates a new [ZeroTrustAccessApplicationPolicyRequire].
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
  const ZeroTrustAccessApplicationPolicyRequire({
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
      'authContext': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessApplicationPolicyRequireAuthContext, Map<String, dynamic>>(authContext, (value) => value.toMap()),
      'authMethod': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessApplicationPolicyRequireAuthMethod, Map<String, dynamic>>(authMethod, (value) => value.toMap()),
      'azureAd': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessApplicationPolicyRequireAzureAd, Map<String, dynamic>>(azureAd, (value) => value.toMap()),
      'certificate': ?certificate,
      'commonName': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessApplicationPolicyRequireCommonName, Map<String, dynamic>>(commonName, (value) => value.toMap()),
      'devicePosture': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessApplicationPolicyRequireDevicePosture, Map<String, dynamic>>(devicePosture, (value) => value.toMap()),
      'email': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessApplicationPolicyRequireEmail, Map<String, dynamic>>(email, (value) => value.toMap()),
      'emailDomain': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessApplicationPolicyRequireEmailDomain, Map<String, dynamic>>(emailDomain, (value) => value.toMap()),
      'emailList': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessApplicationPolicyRequireEmailList, Map<String, dynamic>>(emailList, (value) => value.toMap()),
      'everyone': ?everyone,
      'externalEvaluation': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessApplicationPolicyRequireExternalEvaluation, Map<String, dynamic>>(externalEvaluation, (value) => value.toMap()),
      'geo': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessApplicationPolicyRequireGeo, Map<String, dynamic>>(geo, (value) => value.toMap()),
      'githubOrganization': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessApplicationPolicyRequireGithubOrganization, Map<String, dynamic>>(githubOrganization, (value) => value.toMap()),
      'group': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessApplicationPolicyRequireGroup, Map<String, dynamic>>(group, (value) => value.toMap()),
      'gsuite': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessApplicationPolicyRequireGsuite, Map<String, dynamic>>(gsuite, (value) => value.toMap()),
      'ip': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessApplicationPolicyRequireIp, Map<String, dynamic>>(ip, (value) => value.toMap()),
      'ipList': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessApplicationPolicyRequireIpList, Map<String, dynamic>>(ipList, (value) => value.toMap()),
      'linkedAppToken': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessApplicationPolicyRequireLinkedAppToken, Map<String, dynamic>>(linkedAppToken, (value) => value.toMap()),
      'loginMethod': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessApplicationPolicyRequireLoginMethod, Map<String, dynamic>>(loginMethod, (value) => value.toMap()),
      'oidc': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessApplicationPolicyRequireOidc, Map<String, dynamic>>(oidc, (value) => value.toMap()),
      'okta': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessApplicationPolicyRequireOkta, Map<String, dynamic>>(okta, (value) => value.toMap()),
      'saml': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessApplicationPolicyRequireSaml, Map<String, dynamic>>(saml, (value) => value.toMap()),
      'serviceToken': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessApplicationPolicyRequireServiceToken, Map<String, dynamic>>(serviceToken, (value) => value.toMap()),
    };
  }

  factory ZeroTrustAccessApplicationPolicyRequire.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessApplicationPolicyRequire(
      anyValidServiceToken: (() { final guardedValue = map['anyValidServiceToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      authContext: (() { final guardedValue = map['authContext']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessApplicationPolicyRequireAuthContext.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      authMethod: (() { final guardedValue = map['authMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessApplicationPolicyRequireAuthMethod.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      azureAd: (() { final guardedValue = map['azureAd']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessApplicationPolicyRequireAzureAd.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      certificate: (() { final guardedValue = map['certificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      commonName: (() { final guardedValue = map['commonName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessApplicationPolicyRequireCommonName.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      devicePosture: (() { final guardedValue = map['devicePosture']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessApplicationPolicyRequireDevicePosture.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessApplicationPolicyRequireEmail.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      emailDomain: (() { final guardedValue = map['emailDomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessApplicationPolicyRequireEmailDomain.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      emailList: (() { final guardedValue = map['emailList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessApplicationPolicyRequireEmailList.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      everyone: (() { final guardedValue = map['everyone']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      externalEvaluation: (() { final guardedValue = map['externalEvaluation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessApplicationPolicyRequireExternalEvaluation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      geo: (() { final guardedValue = map['geo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessApplicationPolicyRequireGeo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      githubOrganization: (() { final guardedValue = map['githubOrganization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessApplicationPolicyRequireGithubOrganization.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      group: (() { final guardedValue = map['group']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessApplicationPolicyRequireGroup.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gsuite: (() { final guardedValue = map['gsuite']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessApplicationPolicyRequireGsuite.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ip: (() { final guardedValue = map['ip']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessApplicationPolicyRequireIp.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ipList: (() { final guardedValue = map['ipList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessApplicationPolicyRequireIpList.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      linkedAppToken: (() { final guardedValue = map['linkedAppToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessApplicationPolicyRequireLinkedAppToken.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      loginMethod: (() { final guardedValue = map['loginMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessApplicationPolicyRequireLoginMethod.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      oidc: (() { final guardedValue = map['oidc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessApplicationPolicyRequireOidc.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      okta: (() { final guardedValue = map['okta']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessApplicationPolicyRequireOkta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      saml: (() { final guardedValue = map['saml']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessApplicationPolicyRequireSaml.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceToken: (() { final guardedValue = map['serviceToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessApplicationPolicyRequireServiceToken.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
